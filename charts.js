function firstDefined(obj, keys) {
  for (const k of keys) {
    if (obj[k] !== undefined && obj[k] !== null) return obj[k];
  }
  return undefined;
}

function toNumber(value) {
  const n = Number(value);
  return Number.isFinite(n) ? n : null;
}

function normalizeHistory(history) {
  if (!history) return [];

  const rows = Array.isArray(history)
    ? history
    : (typeof history === 'object' ? Object.values(history) : []);

  return rows
    .map((row) => {
      const date = firstDefined(row, ['date', 'week_start', 'week', 'commit_date']);
      const matched = toNumber(firstDefined(row, ['matched', 'matched_functions', 'matched_count']));
      const nonMatching = toNumber(firstDefined(row, ['non_matching', 'nonmatch', 'nonMatching', 'non_matching_count']));

      if (!date || matched === null || nonMatching === null) return null;
      return { date: String(date), matched, non_matching: nonMatching };
    })
    .filter(Boolean)
    .sort((a, b) => a.date.localeCompare(b.date));
}

function showHistoryEmptyState(message) {
  const canvas = document.getElementById('historyChart');
  if (!canvas) return;

  const wrap = canvas.parentElement;
  if (!wrap) return;

  wrap.innerHTML = `<div class="empty-history">${message}</div>`;
}

export function initHistoryChart(history) {
  const normalizedHistory = normalizeHistory(history);
  if (!normalizedHistory.length) {
    showHistoryEmptyState('No history data available yet.');
    return;
  }

  if (typeof Chart === 'undefined') {
    showHistoryEmptyState('Chart library failed to load.');
    return;
  }

  const canvas = document.getElementById('historyChart');
  if (!canvas) return;
  const ctx = canvas.getContext('2d');

  new Chart(ctx, {
    type: 'line',
    data: {
      labels: normalizedHistory.map(h => h.date),
      datasets: [
        {
          label: 'Matched Functions',
          data: normalizedHistory.map(h => h.matched),
          borderColor: '#28a828',
          backgroundColor: 'rgba(40,168,40,0.08)',
          fill: true,
          tension: 0.3,
          pointRadius: 3,
          pointBackgroundColor: '#28a828',
        },
        {
          label: 'Non-Matching Functions',
          data: normalizedHistory.map(h => h.non_matching),
          borderColor: '#d06010',
          backgroundColor: 'rgba(208,96,16,0.05)',
          fill: false,
          tension: 0.3,
          pointRadius: 3,
          pointBackgroundColor: '#d06010',
          borderDash: [4, 3],
        },
      ],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      interaction: { mode: 'index', intersect: false },
      plugins: {
        legend: { labels: { color: '#4a6a8a', boxWidth: 10, font: { size: 11 } } },
        tooltip: {
          backgroundColor: '#0a0e1a',
          borderColor: '#1a2a4a',
          borderWidth: 1,
          titleColor: '#d8e8f8',
          bodyColor: '#4a6a8a',
          padding: 10,
        },
      },
      scales: {
        x: {
          ticks: { color: '#4a6a8a', maxTicksLimit: 8, font: { size: 10 } },
          grid: { color: 'rgba(26,42,74,0.4)' },
          border: { color: '#1a2a4a' },
        },
        y: {
          min: 0,
          ticks: { color: '#4a6a8a', font: { size: 10 } },
          grid: { color: 'rgba(26,42,74,0.4)' },
          border: { color: '#1a2a4a' },
        },
      },
    },
  });
}
