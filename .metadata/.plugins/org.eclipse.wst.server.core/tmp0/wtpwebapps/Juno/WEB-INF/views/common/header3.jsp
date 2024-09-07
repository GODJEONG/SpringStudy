<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<div id="wrap">
		<div id="header">
			<div class="header_top">
				<span class="logo"><a href="./"><img
						src="https://www.junohair.com/static_resources/images/home_icon.png"
						alt="JUNO"></a></span>
				<div class="inner">
					<div id="gnb">
						<ul>
							<li class="active"><a onclick="">JUNO HAIR</a></li>
							<li class=""><a onclick="">JUNO ACADEMY</a></li>
							<li class=""><a onclick="">AVENUE JUNO</a></li>
							<li class=""><a onclick="">RECRUIT</a></li>
							<li class=""><a onclick="">MY JUNO</a></li>
						</ul>
					</div>
				</div>

				<c:set var="id" value="${param.id}" />
				<c:set var="admin" value="${param.admin}" />
				
				<div class="topCartcount" style="margin-right:20px;">
					<a href=""><em>장바구니 수량</em></a>
				</div>

				<div class="util">
					<dl class="login-container">
						<c:choose>
							<c:when test="${admin eq '관리자'}">
								<dd class="login">
									<a href="./admin">관리자</a> &nbsp;| &nbsp;
								</dd>
							</c:when>
							<c:when test="${admin eq '디자이너'}">
								<dd class="login">
									<a href="./admin">디자이너</a> &nbsp;| &nbsp;
								</dd>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${empty id}">
								<dd class="login">
									<a href="./Login">로그인</a>
								</dd>
							</c:when>
							<c:when test="${not empty id}">
								<dd class="login">
									<a href="./Logout">로그아웃</a>
								</dd>
							</c:when>
						</c:choose>
					</dl>
				</div>
	
				<!-- 언어 변경 -->
				<div class="lang">
					<a href="./"  class="cur_lang"><img
						src="https://www.junohair.com/static_resources/images/kr_n.png"
						alt="국가 아이콘" class="national">한국어</a> <span
						class="lang_arr arr_down"><img
						src="https://www.junohair.com/static_resources/images/lang_arr_down.png"
						alt=""></span> <span class="lang_arr arr_up"><img
						src="https://www.junohair.com/static_resources/images/lang_arr_up.png"
						alt=""></span>
					<ul class="lang_list">
						<li><img
							src="https://www.junohair.com/static_resources/images/en_n.png"
							alt="국가 아이콘" class="national">ENG</li>
						<li><img
							src="https://www.junohair.com/static_resources/images/cn_n.png"
							alt="국가 아이콘" class="national">中國語</li>
					</ul>
				</div>
			</div>
			<div class="header_btm">
				<div class="inner">
					<h1>
						<a href="./"> <img
							src="https://www.junohair.com/static_resources/images/junohair/junohair_logo_dark.png"
							alt="JUNO HAIR" class="dark"> <img
							src="https://www.junohair.com/static_resources/images/junohair/junohair_logo_light.png"
							alt="JUNO HAIR" class="light">
						</a>
					</h1>
					<div class="lnb">
						<ul>
							<li><a>ABOUT</a></li>
							<li><a>SALON</a></li>
							<li><a href="myJuno">MY JUNO</a></li>
							<li><a href="news">COMMUNICATION</a></li>
							<li><a href="branch">RESERVATION</a></li>
							<li><a href="jmarket">J MARKET</a></li>
						</ul>
					</div>
					<div class="mobile_menu_btn">
						<a href="#juno" onclick="m_nav();"> <span></span> <span></span>
							<span></span>
						</a>
					</div>
				</div>
			</div>
		</div>
</body>
</html>
