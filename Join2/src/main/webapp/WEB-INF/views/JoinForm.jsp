<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" type="text/css" href="./resources/join_css.css">

<script type="text/javascript">
	// JavaScript 함수 정의
	function showAlert(message) {
		alert(message); // 메시지를 알럿으로 표시
	}
</script>


<!-- Java에서 발생한 오류 메시지를 전달할 때 JavaScript 함수 호출 -->
<c:if test="${not empty errorMessage}">
	<script type="text/javascript">
		showAlert("${errorMessage}");
	</script>
</c:if>

</head>

<body>

	<%
	String context = request.getContextPath();
	%>

	<h2>회원가입</h2>

	<br>
	<hr>
	<form id="join" action="<%=context%>/Join1" method=post>

		<table>

			<tr>
				<!-- 기본정보-->
				<td colspan="2" class="subtitle td">회원 기본 정보</td>
			</tr>
			<tr>
				<!-- 아이디 -->
				<td class="division">아이디:</td>
				<td class="valuefield"><input type="text" id="ID" name="id"
					size="12" maxlength="12"> &nbsp; 4~12자의 영문 대소문자와 숫자로만 입력</td>
			</tr>

			<tr>
				<!-- 비밀번호 -->
				<td class="division">비밀번호:</td>
				<td class="valuefield"><input type="password" id="PW" name="pw"
					size="12" maxlength="12"> &nbsp; 4~12자의 영문 대소문자와 숫자로만 입력</td>
			</tr>

			<tr>
				<!-- 비밀번호 확인 -->
				<td class="division">비밀번호 확인:</td>
				<td class="valuefield"><input type="password" id="PWconfirm"
					name="pwConfirm" size="12" maxlength="12"></td>
			</tr>

			<tr>
				<!-- 메일주소 -->
				<td class="division">메일주소:</td>
				<td class="valuefield"><input type="text" id="Email"
					name="email" size="30"></input> &nbsp; 예) id@domain.com</td>
			</tr>

			<tr>
				<!-- 이름 -->
				<td class="division">이름:</td>
				<td class="valuefield"><input type="text" id="Name" name="name"
					size="30"></td>
			</tr>

			<tr>
				<!-- 기본정보-->
				<td colspan="7" class="subtitle">개인 신상 정보</td>
			</tr>


			<tr>
				<!-- 주민등록번호 -->
				<td class="division">주민등록번호:</td>
				<td class="valuefield"><input type="text"
					id="SocialSecurityNumber" name="socialsecuritynumber" size="13"
					maxlength="13"> &nbsp; 예) 1234561234567</td>
			</tr>

			<tr>
				<!-- 생일 -->
				<td class="division">생일:</td>
				<td class="valuefield"><input type="text" id="Year" name="year"
					size="4" maxlength="4"> 년 <select id="Month" name="month">
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
				</select> 월 <select id="Day" name="day">
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
				</select> 일</td>
			</tr>

			<tr>
				<!-- 관심분야 -->
				<td class="division">관심분야:</td>
				<td class="valuefield"><input type="checkbox" name="inter"
					value="컴퓨터">컴퓨터<br> <input type="checkbox"
					name="inter" value="인터넷">인터넷<br> <input
					type="checkbox" name="inter" value="여행">여행<br> <input
					type="checkbox" name="inter" value="영화감상">영화감상<br> <input
					type="checkbox" name="inter" value="음악감상">음악감상<br></td>
			</tr>

			<tr>
				<!-- 자기소개  -->
				<td class="division">자기소개:</td>
				<td class="valuefield"><textarea id="Intro" name="intro"
						cols="72" rows="10"></textarea></td>
			</tr>

		</table>
		<p style="text-align: center;">
			<button type="submit" class="button-common">회원가입</button>
			&nbsp;&nbsp; <input type="reset" value="다시 입력">
		</p>

	</form>
</body>
</html>
