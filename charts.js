export function initHistoryChart(history) {
  if (!history || !history.length) return;
  const ctx = document.getElementById('historyChart').getContext('2d');
  new Chart(ctx, {
    type: 'line',
    data: {
      labels: history.map(h => h.date),
      datasets: [
        {
          label: 'Matched Functions',
          data: history.map(h => h.matched),
          borderColor: '#28a828',
          backgroundColor: 'rgba(40,168,40,0.08)',
          fill: true,
          tension: 0.3,
          pointRadius: 3,
          pointBackgroundColor: '#28a828',
        },
        {
          label: 'Non-Matching Functions',
          data: history.map(h => h.non_matching),
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
