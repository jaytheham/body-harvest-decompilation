// @ts-check
'use strict';

const vscode = require('vscode');
const path = require('path');

// Matches the function name in a C function definition line, e.g.:
//   void func_8007ED9C_8DD4C(u8 arg0) {
//   s32 func_80082990_91940(s16 arg0, s16 arg1) {
const FUNC_DEF_RE = /^\w[\w\s\*]*?\b(\w+)\s*\(/;

class PermuterCodeLensProvider {
    constructor() {
        this._onDidChangeCodeLenses = new vscode.EventEmitter();
        this.onDidChangeCodeLenses = this._onDidChangeCodeLenses.event;
    }

    provideCodeLenses(document, _token) {
        const lenses = [];
        const lineCount = document.lineCount;

        for (let i = 0; i < lineCount; i++) {
            const line = document.lineAt(i).text.trim();

            if (line !== '#ifdef NON_MATCHING') {
                continue;
            }

            // Scan forward (up to 4 lines) for a function definition
            for (let j = i + 1; j < Math.min(i + 5, lineCount); j++) {
                const candidate = document.lineAt(j).text.trim();

                // Skip blank lines and preprocessor lines
                if (!candidate || candidate.startsWith('#') || candidate.startsWith('//')) {
                    continue;
                }

                const match = FUNC_DEF_RE.exec(candidate);
                if (match) {
                    const funcName = match[1];
                    const range = new vscode.Range(i, 0, i, 0);

                    lenses.push(new vscode.CodeLens(range, {
                        title: `▶ permute: ${funcName}`,
                        command: 'permuter-lens.runPermuter',
                        arguments: [document.uri, funcName]
                    }));
                    lenses.push(new vscode.CodeLens(range, {
                        title: `⬆ upload to decomp.me: ${funcName}`,
                        command: 'permuter-lens.uploadToDecompMe',
                        arguments: [document.uri, funcName]
                    }));
                    break;
                }
            }
        }

        return lenses;
    }

    resolveCodeLens(lens, _token) {
        return lens;
    }
}

/**
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {
    const provider = new PermuterCodeLensProvider();

    context.subscriptions.push(
        vscode.languages.registerCodeLensProvider(
            { language: 'c' },
            provider
        )
    );

    context.subscriptions.push(
        vscode.commands.registerCommand(
            'permuter-lens.runPermuter',
            /**
             * @param {vscode.Uri} uri
             * @param {string} funcName
             */
            (uri, funcName) => {
                const workspaceFolder = vscode.workspace.getWorkspaceFolder(uri);
                if (!workspaceFolder) {
                    vscode.window.showErrorMessage('Permuter: file is not inside a workspace folder.');
                    return;
                }

                const config = vscode.workspace.getConfiguration('permuter-lens');
                const jobs = config.get('jobs', 6);
                const extraArgs = config.get('extraArgs', '--best-only');

                // Relative path with forward slashes, as permute.ps1 expects
                const relPath = path
                    .relative(workspaceFolder.uri.fsPath, uri.fsPath)
                    .replace(/\\/g, '/');

                const cmd = `.\\permute.ps1 ${relPath} ${funcName} -j${jobs}${extraArgs ? ' ' + extraArgs : ''}`;

                // Reuse an existing "Permuter" terminal or create a new one
                let terminal = vscode.window.terminals.find(t => t.name === 'Permuter');
                if (!terminal || terminal.exitStatus !== undefined) {
                    terminal = vscode.window.createTerminal({
                        name: 'Permuter',
                        cwd: workspaceFolder.uri.fsPath
                    });
                }

                terminal.show(/* preserveFocus */ true);
                terminal.sendText(cmd);
            }
        )
    );

    context.subscriptions.push(
        vscode.commands.registerCommand(
            'permuter-lens.uploadToDecompMe',
            /**
             * @param {vscode.Uri} uri
             * @param {string} funcName
             */
            async (uri, funcName) => {
                const workspaceFolder = vscode.workspace.getWorkspaceFolder(uri);
                if (!workspaceFolder) {
                    vscode.window.showErrorMessage('decomp.me: file is not inside a workspace folder.');
                    return;
                }

                const relPath = path
                    .relative(workspaceFolder.uri.fsPath, uri.fsPath)
                    .replace(/\\/g, '/');

                const config = vscode.workspace.getConfiguration('permuter-lens');
                const container = config.get('container', 'bh-container');

                vscode.window.withProgress(
                    {
                        location: vscode.ProgressLocation.Notification,
                        title: `Uploading ${funcName} to decomp.me...`,
                        cancellable: false
                    },
                    async () => {
                        const { exec } = require('child_process');
                        const util = require('util');
                        const execAsync = util.promisify(exec);

                        const cmd = `docker exec ${container} python3 tools/decomp-permuter/import.py ${relPath} ${funcName} --decompme`;

                        try {
                            const { stdout, stderr } = await execAsync(cmd, {
                                cwd: workspaceFolder.uri.fsPath
                            });
                            const output = stdout + stderr;

                            // Extract decomp.me URL from output
                            const urlMatch = output.match(/https:\/\/decomp\.me\/scratch\/\S+/);
                            if (urlMatch) {
                                const url = urlMatch[0];
                                const action = await vscode.window.showInformationMessage(
                                    `Uploaded ${funcName} to decomp.me`,
                                    'Open in Browser'
                                );
                                if (action === 'Open in Browser') {
                                    vscode.env.openExternal(vscode.Uri.parse(url));
                                }
                            } else {
                                // Show output in terminal so user can see what happened
                                let terminal = vscode.window.terminals.find(t => t.name === 'decomp.me');
                                if (!terminal || terminal.exitStatus !== undefined) {
                                    terminal = vscode.window.createTerminal({
                                        name: 'decomp.me',
                                        cwd: workspaceFolder.uri.fsPath
                                    });
                                }
                                terminal.show(true);
                                terminal.sendText(`docker exec ${container} python3 tools/decomp-permuter/import.py ${relPath} ${funcName} --decompme`);
                                vscode.window.showWarningMessage(
                                    `Could not find decomp.me URL in output. Check the terminal.`
                                );
                            }
                        } catch (err) {
                            const msg = err.message || String(err);
                            // Still try to find a URL in the error output
                            const urlMatch = msg.match(/https:\/\/decomp\.me\/scratch\/\S+/);
                            if (urlMatch) {
                                const url = urlMatch[0];
                                const action = await vscode.window.showInformationMessage(
                                    `Uploaded ${funcName} to decomp.me`,
                                    'Open in Browser'
                                );
                                if (action === 'Open in Browser') {
                                    vscode.env.openExternal(vscode.Uri.parse(url));
                                }
                            } else {
                                vscode.window.showErrorMessage(`decomp.me upload failed: ${msg}`);
                            }
                        }
                    }
                );
            }
        )
    );
}

function deactivate() {}

module.exports = { activate, deactivate };
