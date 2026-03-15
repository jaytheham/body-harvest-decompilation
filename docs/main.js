import { renderHero, renderOverallBar, renderSegments, renderChartPanel, renderContributors } from './render.js';
import { renderFilesTable, initFilesTable } from './table.js';
import { initHistoryChart } from './charts.js';

const DATA_URL = 'progress.json';

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
