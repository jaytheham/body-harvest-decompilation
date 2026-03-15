import { pct, fmt } from './utils.js';

export function renderFilesTable(files) {
  const segmentOptions = [...new Set(files.map(f => f.segment))].sort()
    .map(s => `<option value="${s}">${s}</option>`).join('');
  return `
    <div class="table-section">
      <h2>Files</h2>
      <div class="table-controls">
        <input type="text" id="fileSearch" placeholder="Search files..." style="width:200px">
        <select id="segFilter"><option value="">All segments</option>${segmentOptions}</select>
        <select id="sortCol">
          <option value="path">Sort: Name</option>
          <option value="matched_pct" selected>Sort: Matched %</option>
          <option value="matched">Sort: Matched count</option>
          <option value="total">Sort: Total functions</option>
          <option value="asm_stubs">Sort: ASM remaining</option>
        </select>
      </div>
      <div class="table-wrap">
        <table id="filesTable">
          <thead>
            <tr>
              <th>File</th><th>Segment</th><th>Matched</th>
              <th>Non-Match</th><th>ASM</th><th>Total</th>
              <th>Progress</th><th>Contributor</th>
            </tr>
          </thead>
          <tbody id="filesBody"></tbody>
        </table>
      </div>
    </div>`;
}

export function initFilesTable(files) {
  let sortDir = -1;

  function renderRows() {
    const search = document.getElementById('fileSearch').value.toLowerCase();
    const segF = document.getElementById('segFilter').value;
    const sortKey = document.getElementById('sortCol').value;

    const rows = files
      .filter(f =>
        (!search || f.path.toLowerCase().includes(search) || (f.contributor || '').toLowerCase().includes(search)) &&
        (!segF || f.segment === segF)
      )
      .sort((a, b) => {
        const av = a[sortKey] ?? 0, bv = b[sortKey] ?? 0;
        if (typeof av === 'string') return av.localeCompare(bv) * sortDir;
        return (bv - av) * sortDir;
      });

    document.getElementById('filesBody').innerHTML = rows.map(f => {
      const mw = pct(f.matched, f.total);
      const nw = pct(f.non_matching, f.total);
      return `<tr>
        <td><code>${f.path}</code></td>
        <td><span style="color:var(--text-muted)">${f.segment}</span></td>
        <td>${f.matched} <span class="badge badge-matched">${fmt(f.matched_pct)}</span></td>
        <td>${f.non_matching}</td>
        <td>${f.asm_stubs}</td>
        <td>${f.total}</td>
        <td>
          <div class="mini-bar">
            <div class="bar-matched" style="width:${mw}%"></div>
            <div class="bar-nonmatch" style="width:${nw}%"></div>
          </div>
        </td>
        <td>${f.contributor || '<span style="color:var(--text-muted)">&#8212;</span>'}</td>
      </tr>`;
    }).join('');
  }

  renderRows();
  document.getElementById('fileSearch').addEventListener('input', renderRows);
  document.getElementById('segFilter').addEventListener('change', renderRows);
  document.getElementById('sortCol').addEventListener('change', renderRows);
}
