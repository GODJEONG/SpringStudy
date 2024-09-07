<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${empty user_id}">
		<script>
			alert("�α��� �� �̿� �����մϴ�!");
			window.location.href = "../LoginForm.lo";
		</script>
	</c:when>
	<c:otherwise>
<html>
<head>
<title>MVC �Խ���</title>
<link rel="stylesheet" type="text/css"
	href="./shop_basket2/css/css_shop.css">
</head>

<body>

	<h1>${user_id } ȸ������ �Խ���</h1>

	<div class="right-align">
		<a href="./Main.lo">Home</a> &nbsp;| &nbsp;
		<c:if test="${sessionScope.admin == '1'}">
			<a href="./Adminview.lo">������</a> &nbsp;| &nbsp;
        </c:if>

		<a href="./Logout.lo">�α׾ƿ�</a>
	</div>

	<br>
	<br>
	<hr>
	<br>
	<br>

	<!-- �Խ��� ����Ʈ -->
	<table width=50% border="0" cellpadding="0" cellspacing="0">
		<tr align="center" valign="middle">
			<td colspan="4">MVC �Խ���</td>
			<td align=right><font size=2>�� ���� : ${listcount }</font></td>
		</tr>

		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center">��ȣ</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="50%">
				<div align="center">����</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">�ۼ���</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="17%">
				<div align="center">��¥</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="11%">
				<div align="center">��ȸ��</div>
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
                    ��
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
                [����]&nbsp;
            </c:when>
            <c:otherwise>
                <a href="./BoardList.bo?page=${page - 1}">[����]</a>&nbsp;
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
                [����]
            </c:when>
            <c:otherwise>
                <a href="./BoardList.bo?page=${page + 1}">[����]</a>
            </c:otherwise>
        </c:choose>
    </td>
</tr>
<tr align="right">
</tr>
</table>
<div class="bb">
    <a href="./BoardWrite.bo" class="button">�۾���</a>
</div>

</body>
		</html>

	</c:otherwise>
</c:choose>