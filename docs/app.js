const DATA_URL = 'progress.json';

function pct(n, t) { return t ? (n / t * 100) : 0; }
function fmt(n) { return n.toFixed(1) + '%'; }
function fmt2(n) { return n.toFixed(2) + '%'; }

async function load() {
  let data;
  try {
    const r = await fetch(DATA_URL + '?t=' + Date.now());
    if (!r.ok) throw new Error('HTTP ' + r.status);
    data = await r.json();
  } catch (e) {
    document.getElementById('app').innerHTML = `<div class="error">Failed to load progress.json: ${e.message}</div>`;
    return;
  }
  render(data);
}

function renderHero(o) {
  return `
    <div class="hero">
      <div class="stat-card matched">
        <div class="label">Matched</div>
        <div class="value">${fmt2(o.matched_pct)}</div>
        <div class="sub">${o.matched.toLocaleString()} / ${o.total_functions.toLocaleString()} functions</div>
      </div>
      <div class="stat-card decomp">
        <div class="label">Decompiled</div>
        <div class="value">${fmt2(o.decompiled_pct)}</div>
        <div class="sub">${(o.matched + o.non_matching).toLocaleString()} functions have C source</div>
      </div>
      <div class="stat-card">
        <div class="label">Non-Matching</div>
        <div class="value">${o.non_matching.toLocaleString()}</div>
        <div class="sub">Decompiled but not byte-perfect</div>
      </div>
      <div class="stat-card">
        <div class="label">ASM Stubs</div>
        <div class="value">${o.asm_stubs.toLocaleString()}</div>
        <div class="sub">Still in assembly</div>
      </div>
    </div>`;
}

function renderOverallBar(o) {
  const matchedW = pct(o.matched, o.total_functions);
  const nonmatchW = pct(o.non_matching, o.total_functions);
  return `
    <div class="progress-section">
      <h2>Overall Progress</h2>
      <div class="progress-bar">
        <div class="bar-matched" style="width:${matchedW}%"></div>
        <div class="bar-nonmatch" style="width:${nonmatchW}%"></div>
      </div>
      <div class="legend">
        <span><span class="legend-dot" style="background:var(--matched-light)"></span>Matched ${fmt2(o.matched_pct)}</span>
        <span><span class="legend-dot" style="background:var(--nonmatch-light)"></span>Non-Matching ${fmt2(pct(o.non_matching, o.total_functions))}</span>
        <span><span class="legend-dot" style="background:var(--asm)"></span>ASM ${fmt2(pct(o.asm_stubs, o.total_functions))}</span>
      </div>
    </div>`;
}

function renderSegments(segments) {
  const rows = Object.entries(segments).map(([, seg]) => {
    const mw = pct(seg.matched, seg.total);
    const nw = pct(seg.non_matching, seg.total);
    return `
      <div class="seg-row">
        <div class="seg-header">
          <span class="seg-name">${seg.display_name}</span>
          <span class="seg-pct">${fmt(seg.matched_pct)} matched &middot; ${seg.matched}/${seg.total}</span>
        </div>
        <div class="seg-bar">
          <div class="bar-matched" style="width:${mw}%"></div>
          <div class="bar-nonmatch" style="width:${nw}%"></div>
        </div>
      </div>`;
  }).join('');
  return `<div class="panel"><h2>By Segment</h2>${rows}</div>`;
}

function renderChartPanel() {
  return `
    <div class="panel">
      <h2>Progress Over Time</h2>
      <div class="chart-wrap"><canvas id="historyChart"></canvas></div>
    </div>`;
}

function renderFilesTable(files) {
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

function renderContributors(contributors) {
  if (!contributors.length) return '';
  return `
    <div class="contrib-grid">
      ${contributors.map(c => `
        <div class="contrib-card">
          <div class="contrib-name">${c.name}</div>
          <div class="contrib-stat">Files touched: <span>${c.files}</span></div>
          <div class="contrib-stat">Matched functions: <span>${c.matched}</span></div>
          <div class="contrib-stat">Non-matching: <span>${c.non_matching}</span></div>
          <div class="contrib-stat">ASM remaining: <span>${c.asm_stubs}</span></div>
        </div>`).join('')}
    </div>`;
}

function initFilesTable(files) {
  let sortDir = -1;
  let sortKey = 'matched_pct';

  function renderRows() {
    const search = document.getElementById('fileSearch').value.toLowerCase();
    const segF = document.getElementById('segFilter').value;
    sortKey = document.getElementById('sortCol').value;

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

function initHistoryChart(history) {
  if (!history || !history.length) return;
  const ctx = document.getElementById('historyChart').getContext('2d');
  new Chart(ctx, {
    type: 'line',
    data: {
      labels: history.map(h => h.date),
      datasets: [
        {
          label: 'Matched %',
          data: history.map(h => h.matched_pct),
          borderColor: '#2ea043',
          backgroundColor: 'rgba(46,160,67,0.1)',
          fill: true,
          tension: 0.3,
          pointRadius: 3,
        },
        {
          label: 'Decompiled %',
          data: history.map(h => h.decompiled_pct),
          borderColor: '#d29922',
          backgroundColor: 'rgba(210,153,34,0.05)',
          fill: false,
          tension: 0.3,
          pointRadius: 3,
          borderDash: [4, 3],
        },
      ],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      interaction: { mode: 'index', intersect: false },
      plugins: {
        legend: { labels: { color: '#8b949e', boxWidth: 12 } },
        tooltip: {
          backgroundColor: '#161b22',
          borderColor: '#30363d',
          borderWidth: 1,
          titleColor: '#e6edf3',
          bodyColor: '#8b949e',
        },
      },
      scales: {
        x: {
          ticks: { color: '#8b949e', maxTicksLimit: 8 },
          grid: { color: 'rgba(48,54,61,0.5)' },
        },
        y: {
          min: 0,
          max: 100,
          ticks: { color: '#8b949e', callback: v => v + '%' },
          grid: { color: 'rgba(48,54,61,0.5)' },
        },
      },
    },
  });
}

function render(d) {
  const o = d.overall;

  document.getElementById('app').innerHTML =
    renderHero(o) +
    renderOverallBar(o) +
    `<div class="grid-2">${renderChartPanel()}${renderSegments(d.segments)}</div>` +
    renderFilesTable(d.files) +
    renderContributors(d.contributors);

  initFilesTable(d.files);
  initHistoryChart(d.history);

  const updated = d.generated ? new Date(d.generated).toLocaleString() : 'unknown';
  document.getElementById('footer').textContent =
    `Updated ${updated} \u00b7 Commit ${d.commit || 'unknown'} \u00b7 ${o.total_functions.toLocaleString()} total functions tracked`;
}

load();
