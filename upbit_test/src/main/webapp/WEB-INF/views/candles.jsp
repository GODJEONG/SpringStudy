<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bitcoin Daily Candles</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-chart-financial@0.1.0/dist/chartjs-chart-financial.min.js"></script>
</head>
<body>
    <h1>Bitcoin Daily Candles</h1>
    <canvas id="candlestickChart"></canvas>
    <script type="text/javascript">
        var ctx = document.getElementById('candlestickChart').getContext('2d');

        // JSP 데이터를 JSON 형식으로 전달
        var candleData = [
            <c:forEach var="candle" items="${candles}">
                {
                    t: new Date("${candle.candleDateTimeKst}"),
                    o: ${candle.openingPrice},
                    h: ${candle.highPrice},
                    l: ${candle.lowPrice},
                    c: ${candle.tradePrice}
                }<c:if test="${!candle.last}">,</c:if>
            </c:forEach>
        ];

        var data = {
            datasets: [{
                label: 'Bitcoin Daily Candles',
                data: candleData
            }]
        };

        var options = {
            scales: {
                x: {
                    type: 'time',
                    time: {
                        unit: 'day'
                    },
                    ticks: {
                        source: 'auto'
                    }
                }
            }
        };

        var candlestickChart = new Chart(ctx, {
            type: 'candlestick',
            data: data,
            options: options
        });
    </script>
</body>
</html>