@extends('layouts.app')

@section('content')
    <div class="container mt-5 text-center">
        <h2 class="mb-4">Telepítések havi bontásban</h2>

        <canvas id="telepitesChart" height="120"></canvas>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        const ctx = document.getElementById('telepitesChart').getContext('2d');

        const telepitesChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: @json($labels),
                datasets: [{
                    label: 'Telepítések száma',
                    data: @json($values),
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 2,
                    borderRadius: 10
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 500,
                        title: { display: true, text: 'Darabszám' }
                    },
                    x: {
                        title: { display: true, text: 'Hónap' }
                    }
                }
            }
        });
    </script>
@endsection