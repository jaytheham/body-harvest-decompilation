import { renderHero, renderOverallBar, renderSegments, renderChartPanel, renderContributors } from './render.js';
import { renderFilesTable, initFilesTable } from './table.js';
import { initHistoryChart } from './charts.js';

// Each page names its own data file in <body data-progress-file="...">; index.html leaves it out.
const DATA_URL = document.body.dataset.progressFile || 'progress.json';

async function load() {
  let data;
  try {
    const r = await fetch(DATA_URL + '?t=' + Date.now());
    if (!r.ok) throw new Error('HTTP ' + r.status);
    data = await r.json();
  } catch (e) {
    document.getElementById('app').innerHTML = `<div class="error">Failed to load ${DATA_URL}: ${e.message}</div>`;
    return;
  }
  render(data);
}

function render(d) {
  const o = d.overall;

  document.getElementById('app').innerHTML =
    (d.note ? '<div class="panel note" id="note"></div>' : '') +
    renderHero(o) +
    renderOverallBar(o) +
    `<div class="grid-2">${renderChartPanel()}${renderSegments(d.segments)}</div>` +
    renderFilesTable(d.files) +
    renderContributors(d.contributors);

  if (d.note) document.getElementById('note').textContent = d.note;
  initFilesTable(d.files);
  initHistoryChart(d.history);

  const updated = d.generated ? new Date(d.generated).toLocaleString() : 'unknown';
  document.getElementById('footer').textContent =
    `Updated ${updated} \u00b7 Commit ${d.commit || 'unknown'} \u00b7 ${o.total_functions.toLocaleString()} total functions tracked`;
}

load();
