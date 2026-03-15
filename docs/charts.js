export function initHistoryChart(history) {
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
