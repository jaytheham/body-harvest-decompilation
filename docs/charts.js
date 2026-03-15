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
          borderColor: '#4a9030',
          backgroundColor: 'rgba(74,144,48,0.1)',
          fill: true,
          tension: 0.3,
          pointRadius: 3,
        },
        {
          label: 'Decompiled %',
          data: history.map(h => h.decompiled_pct),
          borderColor: '#c88020',
          backgroundColor: 'rgba(200,128,32,0.05)',
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
        legend: { labels: { color: '#8a7a50', boxWidth: 12 } },
        tooltip: {
          backgroundColor: '#1a1710',
          borderColor: '#3a3020',
          borderWidth: 1,
          titleColor: '#f0e0b0',
          bodyColor: '#8a7a50',
        },
      },
      scales: {
        x: {
          ticks: { color: '#8a7a50', maxTicksLimit: 8 },
          grid: { color: 'rgba(58,48,32,0.5)' },
        },
        y: {
          min: 0,
          max: 100,
          ticks: { color: '#8a7a50', callback: v => v + '%' },
          grid: { color: 'rgba(58,48,32,0.5)' },
        },
      },
    },
  });
}
