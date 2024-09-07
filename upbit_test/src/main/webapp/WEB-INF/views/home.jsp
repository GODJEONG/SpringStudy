<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>


	<!-- <script type="text/javascript">
fetch('https://api.upbit.com/v1/market/all?isDetails=false')
.then(res => {
	return res.json()})
.then(result => {
	console.log(result)
    	}
	)
</script>
 -->
	
	<div id="marketList"/>
		<!-- API 데이터가 여기에 동적으로 추가될 예정 -->

	<script type="text/javascript">
        // API 데이터를 가져오고 화면에 표시하는 함수
        function fetchAndDisplayData() {
            fetch('https://api.upbit.com/v1/market/all?isDetails=false')
                .then(res => res.json())
                .then(data => {
                    console.log(data); // 데이터 콘솔 출력

                    // API 데이터를 화면에 표시
                    var marketListDiv = document.getElementById('marketList');
                    data.forEach(market => {
                        var p = document.createElement('p');
                        p.textContent = market.market + ' - ' + market.korean_name;
                        marketListDiv.appendChild(p);
                    });
                })
                .catch(error => console.error('Error fetching data:', error));
        }

        // 페이지 로드 후 데이터 가져오기
        window.onload = fetchAndDisplayData;
    </script>



</body>

</html>
