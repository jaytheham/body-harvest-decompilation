import { pct, fmt, fmt2 } from './utils.js';

export function renderHero(o) {
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

export function renderOverallBar(o) {
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

export function renderSegments(segments) {
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

export function renderChartPanel() {
  return `
    <div class="panel">
      <h2>Progress Over Time</h2>
      <div class="chart-wrap"><canvas id="historyChart"></canvas></div>
    </div>`;
}

export function renderContributors(contributors) {
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
