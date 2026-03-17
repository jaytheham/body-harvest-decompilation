#!/usr/bin/env pwsh
# Helper script to run the asm-differ diff inside the bh-container.
# Usage:
#   .\diff.ps1 <function name> [<ROM address of next function>] [--show=target|current]
#
# When the second argument is supplied it is prefixed with "0x" before
# being passed to diff.py.  If it is omitted the script will only pass the
# function name.
#
# When --show=target is provided, --diff_mode=single_base is passed to diff.py.
# When --show=current is provided, --diff_mode=single is passed to diff.py.

param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$FuncName,

    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$RemainingArgs
)

$Container = 'bh-container'

$NextAddr = ''
$diffModeArg = ''
foreach ($arg in $RemainingArgs) {
    if ($arg -like '--show=*') {
        $showValue = $arg -replace '^--show=', ''
        switch ($showValue) {
            'target' { $diffModeArg = '--diff_mode=single_base' }
            'current' { $diffModeArg = '--diff_mode=single' }
            default {
                Write-Error "Unknown value for --show: $showValue. Expected 'target' or 'current'."
                exit 1
            }
        }
    } elseif (-not $NextAddr -and -not ($arg -like '--*')) {
        # Treat the first non-flag argument as the optional next function address
        $NextAddr = $arg
    } else {
        Write-Error "Unknown argument: $arg"
        exit 1
    }
}

# build the command string that will be given to bash -c inside the container
$bashCmd = "tools/asm-differ/diff.py --no-pager"

# When showing a single side (target/current), omit --compress-matching.
if (-not $diffModeArg) {
    $bashCmd += " --compress-matching 3"
}

if ($diffModeArg) {
    $bashCmd += " $diffModeArg"
}

$bashCmd += " '$FuncName'"

if ($NextAddr) {
    # prefix with 0x when an address was provided
    $bashCmd += " 0x$NextAddr"
}

# execute the command in the container
docker exec -it $Container bash -c "$bashCmd"
