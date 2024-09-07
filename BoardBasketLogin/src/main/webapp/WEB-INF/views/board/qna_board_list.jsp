<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("로그인 후 이용 가능합니다!");
			window.location.href = "../LoginForm.lo";
		</script>
	</c:when>
	<c:otherwise>
<html>
<head>
<title>MVC 게시판</title>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_shop.css">
</head>

<body>

	<h1>${user_id } 회원님의 게시판</h1>

	<div class="right-align">
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp;
		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview.lo">관리자</a> &nbsp;| &nbsp;
        </c:if>

		<a href="./Logout.lo">로그아웃</a>
	</div>

	<br>
	<br>
	<hr>
	<br>
	<br>

	<!-- 게시판 리스트 -->
	<table width=50% border="0" cellpadding="0" cellspacing="0">
		<tr align="center" valign="middle">
			<td colspan="4">MVC 게시판</td>
			<td align=right><font size=2>글 개수 : ${listcount }</font></td>
		</tr>

		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center">번호</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="50%">
				<div align="center">제목</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">작성자</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="17%">
				<div align="center">날짜</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="11%">
				<div align="center">조회수</div>
			</td>
		</tr>

		<c:forEach var="bl" items="${boardlist}">
			<tr align="center" valign="middle" bordercolor="#333333"
				onmouseover="this.style.backgroundColor='F8F8F8'"
				onmouseout="this.style.backgroundColor=''">
				<td height="23" style="font-family: Tahoma; font-size: 10pt;">${bl.BOARD_NUM}</td>

				<td style="font-family: Tahoma; font-size: 10pt;">
					<div align="left">
						<c:if test="${bl.BOARD_RE_LEV != 0}">
							<c:forEach var="a" begin="0" end="${bl.BOARD_RE_LEV * 2}">
                        &nbsp;
                    </c:forEach>
                    ▶
                </c:if>
						<a href="./BoardDetailAction.bo?num=${bl.BOARD_NUM}">${bl.BOARD_SUBJECT}</a>
					</div>
				</td>

				<td style="font-family: Tahoma; font-size: 10pt;">
					<div align="center">${bl.BOARD_NAME}</div>
				</td>
				<td style="font-family: Tahoma; font-size: 10pt;">
					<div align="center">${bl.BOARD_DATE}</div>
				</td>
				<td style="font-family: Tahoma; font-size: 10pt;">
					<div align="center">${bl.BOARD_READCOUNT}</div>
				</td>
			</tr>
		</c:forEach>
		

<tr align="center" height="20">
    <td colspan="7" style="font-family: Tahoma; font-size: 10pt;">
        <c:choose>
            <c:when test="${page <= 1}">
                [이전]&nbsp;
            </c:when>
            <c:otherwise>
                <a href="./BoardList.bo?page=${page - 1}">[이전]</a>&nbsp;
            </c:otherwise>
        </c:choose>

        <c:forEach var="a" begin="${startpage}" end="${endpage}">
            <c:choose>
                <c:when test="${a == page}">
                    [<c:out value="${a}"/>]
                </c:when>
                <c:otherwise>
                    <a href="./BoardList.bo?page=${a}">[<c:out value="${a}"/>]</a>&nbsp;
                </c:otherwise>
            </c:choose>
        </c:forEach>

        <c:choose>
            <c:when test="${page >= maxpage}">
                [다음]
            </c:when>
            <c:otherwise>
                <a href="./BoardList.bo?page=${page + 1}">[다음]</a>
            </c:otherwise>
        </c:choose>
    </td>
</tr>
<tr align="right">
</tr>
</table>
<div class="bb">
    <a href="./BoardWrite.bo" class="button">글쓰기</a>
</div>

</body>
		</html>

	</c:otherwise>
</c:choose>