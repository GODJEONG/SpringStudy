<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header.jsp 내용 -->
<jsp:include page="/WEB-INF/views/common/headerReservation.jsp">
	<jsp:param name="id" value="${sessionScope.id}" />
	<jsp:param name="admin" value="${sessionScope.admin}" />
</jsp:include>

<div id="container" class="reservation_wrap">
	<div class="sub_visual">
		<div class="sub_visual_bg"
			style="background-image: url('https://www.junohair.com/static_resources/images/junohair/sub/reservation/reser_visual.jpg')"></div>
		<div class="sub_visual_text">
			<strong>RESERVATION</strong>
			<p class="sub_visual_sub_text">
				<span>실시간 매장 예약을 통해 <br class="m">편리한 매장 이용을 도와드리며,
				</span><br> <span>AI기반의 디자이너 추천 기능을 제공합니다.</span>
			</p>
		</div>
	</div>

	<div id="contents" class="shop_list">
		<div class="reser_process">
			<ul>
				<li style="cursor: pointer;" onclick="gotoPre()"><span
					class="num">01</span> <span>매장 선택</span></li>
				<li class="current"><span class="num">02</span> <span>디자이너
						선택</span></li>
				<li><span class="num">03</span> <span>일정 및 시술 선택</span></li>
				<li><span class="num">04</span> <span>예약 확인</span></li>
			</ul>
		</div>

		<div class="clear"></div>
            <div class="reser_branchname">
                <div class="inner">${branchInfo.branchName}</div>
            </div>
            <div class="designer_list">
                <ul>
                    <li class="recomm"><a href="#juno" onclick="openRecomPop()">
                        <div class="profileimg">
                            <img src="https://www.junohair.com/static_resources/images/junohair/sub/reservation/@designer_recomm.jpg"
                                alt="" class="profileimgsrc">
                        </div>
                        <div class="infocont">
                            <p class="ttl">디자이너 추천 받기</p>
                            <p class="txt">
                                <span>고객님의 개인정보 바탕으로</span> <span>최적의 디자이너를 추천해드립니다.</span>
                            </p>
                            <span class="btn">추천받기</span>
                        </div> <span class="line"></span>
                    </a></li>

                    <c:forEach var="designer" items="${designers}">
					    <li> 
					        <a href="schedule?designerId=${designer.designerId}&branchId=${branchInfo.branchId}">
					        
					            <div class="profileimg" style="background-image: url('./resources/productupload/${designer.designerPath}')"></div> 
					            <%-- <div class="profileimg">
										<a href="#juno"> <img class="si_img_bg"
											src="./resources/productupload/${designer.designerPath}">
											<div class="si_img_border"></div>
										</a>
									</div> --%>
					            <div class="infocont">
					                <p class="ttl">${designer.designerName}</p>
					                <p class="desc">${designer.introduce}</p>
					            </div>
					            <span class="line"></span>
					        </a>
					    </li>
					</c:forEach>
                </ul>
            </div>
            
            <div class="ai_foot_btns">
				<a href="javascript:gotoPre();" class="btnbox_line" onclick="gotoPre()">이전</a>
			</div>
			
        </div>
    </div>
    
    

<!-- footer.jsp 내용 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<div id="pop_recommDesigner" class="pop_wrap">
		<div class="pop_con">
			<div class="head">
				<h2 class="ttl">추천 디자이너</h2>
			</div>
			<div class="cont">
				<div class="scrollbox">
					<div class="ai_designer_list">
						<div class="designer_list">
							<ul></ul>
						</div>
					</div>
				</div>
			</div>
			<div class="bottom">
				<div class="btns_group">
					<div>
						<a href="#juno" class="btnbox_line">취소</a>
					</div>
				</div>
			</div>
			<a href="#juno" class="btn_popClose">팝업닫기</a>
		</div>
	</div>
	<script>
		var app_popRecommendDsnr = new Vue(
				{
					el : "#pop_recommDesigner",
					data : {
						designerList : []
					},
					methods : {
						selectDesigner : function(designer) {
							location.href = "https://www.junohair.com/junohair/reservation/process03_date?scode="
									+ designer.scode + "&refer=norm";
						},
						closePop : function() {
							closePop('pop_recommDesigner');
						},
					}
				});
	</script>

	<div id="pop_memberinfofrm" class="pop_wrap">
		<div class="pop_con">
			<div class="head">
				<h2 class="ttl">고객 정보</h2>
			</div>
			<div class="cont">
				<div class="memberinfofrm">
					<div class="secgroup">
						<div class="box">
							<div class="field">
								<label for="" class="tit">이름</label> <input type="text"
									id="mbrName" readonly="readonly" class="inptxt">
							</div>
						</div>
						<div class="box">
							<div class="field">
								<label for="" class="tit">연락처</label> <input type="text"
									id="mbrTel" readonly="readonly" class="inptxt">
							</div>
						</div>
					</div>
					<div class="secgroup">
						<div class="box">
							<div class="field">
								<p class="tit">성별</p>
								<div class="radio_group">
									<span class="radio_type"><input type="radio"
										id="gender01" name="gender" value="M" onclick="return(false)"
										class="radio"> <label for="gender01">남자</label></span> <span
										class="radio_type"><input type="radio" id="gender02"
										name="gender" value="F" onclick="return(false)" class="radio">
										<label for="gender02">여자</label></span>
								</div>
							</div>
						</div>
						<div class="box">
							<div class="field">
								<p class="tit">생년월일</p>
								<div class="select_group row3">
									<div>
										<div class="selectArea">
											<button type="button" id="birthYear" class="selTit">2000</button>
											<ul class="selList" style="display: none;">
												<li><input type="radio" name="year" value=""
													id="year_1920"> <label for="year_1920">1920</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1921"> <label for="year_1921">1921</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1922"> <label for="year_1922">1922</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1923"> <label for="year_1923">1923</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1924"> <label for="year_1924">1924</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1925"> <label for="year_1925">1925</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1926"> <label for="year_1926">1926</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1927"> <label for="year_1927">1927</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1928"> <label for="year_1928">1928</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1929"> <label for="year_1929">1929</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1930"> <label for="year_1930">1930</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1931"> <label for="year_1931">1931</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1932"> <label for="year_1932">1932</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1933"> <label for="year_1933">1933</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1934"> <label for="year_1934">1934</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1935"> <label for="year_1935">1935</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1936"> <label for="year_1936">1936</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1937"> <label for="year_1937">1937</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1938"> <label for="year_1938">1938</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1939"> <label for="year_1939">1939</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1940"> <label for="year_1940">1940</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1941"> <label for="year_1941">1941</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1942"> <label for="year_1942">1942</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1943"> <label for="year_1943">1943</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1944"> <label for="year_1944">1944</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1945"> <label for="year_1945">1945</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1946"> <label for="year_1946">1946</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1947"> <label for="year_1947">1947</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1948"> <label for="year_1948">1948</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1949"> <label for="year_1949">1949</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1950"> <label for="year_1950">1950</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1951"> <label for="year_1951">1951</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1952"> <label for="year_1952">1952</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1953"> <label for="year_1953">1953</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1954"> <label for="year_1954">1954</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1955"> <label for="year_1955">1955</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1956"> <label for="year_1956">1956</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1957"> <label for="year_1957">1957</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1958"> <label for="year_1958">1958</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1959"> <label for="year_1959">1959</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1960"> <label for="year_1960">1960</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1961"> <label for="year_1961">1961</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1962"> <label for="year_1962">1962</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1963"> <label for="year_1963">1963</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1964"> <label for="year_1964">1964</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1965"> <label for="year_1965">1965</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1966"> <label for="year_1966">1966</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1967"> <label for="year_1967">1967</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1968"> <label for="year_1968">1968</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1969"> <label for="year_1969">1969</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1970"> <label for="year_1970">1970</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1971"> <label for="year_1971">1971</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1972"> <label for="year_1972">1972</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1973"> <label for="year_1973">1973</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1974"> <label for="year_1974">1974</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1975"> <label for="year_1975">1975</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1976"> <label for="year_1976">1976</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1977"> <label for="year_1977">1977</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1978"> <label for="year_1978">1978</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1979"> <label for="year_1979">1979</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1980"> <label for="year_1980">1980</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1981"> <label for="year_1981">1981</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1982"> <label for="year_1982">1982</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1983"> <label for="year_1983">1983</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1984"> <label for="year_1984">1984</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1985"> <label for="year_1985">1985</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1986"> <label for="year_1986">1986</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1987"> <label for="year_1987">1987</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1988"> <label for="year_1988">1988</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1989"> <label for="year_1989">1989</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1990"> <label for="year_1990">1990</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1991"> <label for="year_1991">1991</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1992"> <label for="year_1992">1992</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1993"> <label for="year_1993">1993</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1994"> <label for="year_1994">1994</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1995"> <label for="year_1995">1995</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1996"> <label for="year_1996">1996</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1997"> <label for="year_1997">1997</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1998"> <label for="year_1998">1998</label></li>
												<li><input type="radio" name="year" value=""
													id="year_1999"> <label for="year_1999">1999</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2000"> <label for="year_2000">2000</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2001"> <label for="year_2001">2001</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2002"> <label for="year_2002">2002</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2003"> <label for="year_2003">2003</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2004"> <label for="year_2004">2004</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2005"> <label for="year_2005">2005</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2006"> <label for="year_2006">2006</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2007"> <label for="year_2007">2007</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2008"> <label for="year_2008">2008</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2009"> <label for="year_2009">2009</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2010"> <label for="year_2010">2010</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2011"> <label for="year_2011">2011</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2012"> <label for="year_2012">2012</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2013"> <label for="year_2013">2013</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2014"> <label for="year_2014">2014</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2015"> <label for="year_2015">2015</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2016"> <label for="year_2016">2016</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2017"> <label for="year_2017">2017</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2018"> <label for="year_2018">2018</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2019"> <label for="year_2019">2019</label></li>
												<li><input type="radio" name="year" value=""
													id="year_2020"> <label for="year_2020">2020</label></li>
											</ul>
										</div>
									</div>
									<div>
										<div class="selectArea">
											<button type="button" id="birthMonth" class="selTit">10</button>
											<ul class="selList">
												<li><input type="radio" name="year" value=""
													id="month_01"> <label for="month_01">01</label></li>
												<li><input type="radio" name="year" value=""
													id="month_02"> <label for="month_02">02</label></li>
												<li><input type="radio" name="year" value=""
													id="month_03"> <label for="month_03">03</label></li>
												<li><input type="radio" name="year" value=""
													id="month_04"> <label for="month_04">04</label></li>
												<li><input type="radio" name="year" value=""
													id="month_05"> <label for="month_05">05</label></li>
												<li><input type="radio" name="year" value=""
													id="month_06"> <label for="month_06">06</label></li>
												<li><input type="radio" name="year" value=""
													id="month_07"> <label for="month_07">07</label></li>
												<li><input type="radio" name="year" value=""
													id="month_08"> <label for="month_08">08</label></li>
												<li><input type="radio" name="year" value=""
													id="month_09"> <label for="month_09">09</label></li>
												<li><input type="radio" name="year" value=""
													id="month_10"> <label for="month_10">10</label></li>
												<li><input type="radio" name="year" value=""
													id="month_11"> <label for="month_11">11</label></li>
												<li><input type="radio" name="year" value=""
													id="month_12"> <label for="month_12">12</label></li>
											</ul>
										</div>
									</div>
									<div>
										<div class="selectArea">
											<button type="button" id="birthDay" class="selTit">25</button>
											<ul class="selList">
												<li><input type="radio" name="year" value=""
													id="day_01"> <label for="day_01">01</label></li>
												<li><input type="radio" name="year" value=""
													id="day_02"> <label for="day_02">02</label></li>
												<li><input type="radio" name="year" value=""
													id="day_03"> <label for="day_03">03</label></li>
												<li><input type="radio" name="year" value=""
													id="day_04"> <label for="day_04">04</label></li>
												<li><input type="radio" name="year" value=""
													id="day_05"> <label for="day_05">05</label></li>
												<li><input type="radio" name="year" value=""
													id="day_06"> <label for="day_06">06</label></li>
												<li><input type="radio" name="year" value=""
													id="day_07"> <label for="day_07">07</label></li>
												<li><input type="radio" name="year" value=""
													id="day_08"> <label for="day_08">08</label></li>
												<li><input type="radio" name="year" value=""
													id="day_09"> <label for="day_09">09</label></li>
												<li><input type="radio" name="year" value=""
													id="day_10"> <label for="day_10">10</label></li>
												<li><input type="radio" name="year" value=""
													id="day_11"> <label for="day_11">11</label></li>
												<li><input type="radio" name="year" value=""
													id="day_12"> <label for="day_12">12</label></li>
												<li><input type="radio" name="year" value=""
													id="day_13"> <label for="day_13">13</label></li>
												<li><input type="radio" name="year" value=""
													id="day_14"> <label for="day_14">14</label></li>
												<li><input type="radio" name="year" value=""
													id="day_15"> <label for="day_15">15</label></li>
												<li><input type="radio" name="year" value=""
													id="day_16"> <label for="day_16">16</label></li>
												<li><input type="radio" name="year" value=""
													id="day_17"> <label for="day_17">17</label></li>
												<li><input type="radio" name="year" value=""
													id="day_18"> <label for="day_18">18</label></li>
												<li><input type="radio" name="year" value=""
													id="day_19"> <label for="day_19">19</label></li>
												<li><input type="radio" name="year" value=""
													id="day_20"> <label for="day_20">20</label></li>
												<li><input type="radio" name="year" value=""
													id="day_21"> <label for="day_21">21</label></li>
												<li><input type="radio" name="year" value=""
													id="day_22"> <label for="day_22">22</label></li>
												<li><input type="radio" name="year" value=""
													id="day_23"> <label for="day_23">23</label></li>
												<li><input type="radio" name="year" value=""
													id="day_24"> <label for="day_24">24</label></li>
												<li><input type="radio" name="year" value=""
													id="day_25"> <label for="day_25">25</label></li>
												<li><input type="radio" name="year" value=""
													id="day_26"> <label for="day_26">26</label></li>
												<li><input type="radio" name="year" value=""
													id="day_27"> <label for="day_27">27</label></li>
												<li><input type="radio" name="year" value=""
													id="day_28"> <label for="day_28">28</label></li>
												<li><input type="radio" name="year" value=""
													id="day_29"> <label for="day_29">29</label></li>
												<li><input type="radio" name="year" value=""
													id="day_30"> <label for="day_30">30</label></li>
												<li><input type="radio" name="year" value=""
													id="day_31"> <label for="day_31">31</label></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="secgroup">
						<div class="field">
							<p class="tit">어떠한 머리 길이를 원하세요?</p>
							<div class="linebox">
								<div class="radio_group">
									<span class="radio_type"><input type="radio"
										id="hairlong01" name="hairlong" value="1" class="radio">
										<label for="hairlong01">숏</label></span> <span class="radio_type"><input
										type="radio" id="hairlong02" name="hairlong" value="2"
										class="radio"> <label for="hairlong02">미듐</label></span> <span
										class="radio_type"><input type="radio" id="hairlong03"
										name="hairlong" value="3" class="radio"> <label
										for="hairlong03">롱</label></span>
								</div>
							</div>
						</div>
					</div>
					<div class="secgroup">
						<div class="field">
							<p class="tit">어떠한 시술을 원하세요?</p>
							<div class="linebox">
								<div class="radio_group">
									<span class="radio_type"><input type="radio"
										id="haircate01" name="haircate" value="0" class="radio">
										<label for="haircate01">샴푸</label></span> <span class="radio_type"><input
										type="radio" id="haircate02" name="haircate" value="1"
										class="radio"> <label for="haircate02">드라이</label></span> <span
										class="radio_type"><input type="radio" id="haircate03"
										name="haircate" value="2" class="radio"> <label
										for="haircate03">커트</label></span> <span class="radio_type"><input
										type="radio" id="haircate04" name="haircate" value="3"
										class="radio"> <label for="haircate04">펌</label></span> <span
										class="radio_type"><input type="radio" id="haircate05"
										name="haircate" value="4" class="radio"> <label
										for="haircate05">컬러</label></span> <span class="radio_type"><input
										type="radio" id="haircate06" name="haircate" value="5"
										class="radio"> <label for="haircate06">클리닉</label></span> <span
										class="radio_type"><input type="radio" id="haircate07"
										name="haircate" value="6" class="radio"> <label
										for="haircate07">헤드스파</label></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bottom">
				<div class="btns_group">
					<div>
						<a href="#juno" class="btnbox_line">취소</a>
					</div>
					<div>
						<a href="#juno" class="btnbox_black">추천 받기</a>
					</div>
				</div>
			</div>
			<a href="#juno" class="btn_popClose">팝업닫기</a>
		</div>
	</div>

	<script>
		var regionCode = {
			"sidoList" : [ {
				"sidoCode" : "1",
				"sidoName" : "서울특별시",
				"sidoNameEn" : "Seoul"
			}, {
				"sidoCode" : "8",
				"sidoName" : "경기도",
				"sidoNameEn" : "Gyeonggi-do"
			}, {
				"sidoCode" : "2",
				"sidoName" : "인천광역시",
				"sidoNameEn" : "Incheon"
			}, {
				"sidoCode" : "6",
				"sidoName" : "울산광역시",
				"sidoNameEn" : "Ulsan"
			}, {
				"sidoCode" : "7",
				"sidoName" : "부산광역시",
				"sidoNameEn" : "Busan"
			}, {
				"sidoCode" : "10",
				"sidoName" : "충청북도",
				"sidoNameEn" : "Chungcheongbuk-do"
			} ],
			"gugunList" : [ {
				"sidoCode" : "1",
				"gugunCode" : "1",
				"gugunName" : "강남구",
				"gugunNameEn" : "Gangnam-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "2",
				"gugunName" : "강동구",
				"gugunNameEn" : "Gangdong-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "3",
				"gugunName" : "강북구",
				"gugunNameEn" : "Gangbuk-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "4",
				"gugunName" : "강서구",
				"gugunNameEn" : "Gangseo-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "5",
				"gugunName" : "관악구",
				"gugunNameEn" : "Gwanak-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "6",
				"gugunName" : "광진구",
				"gugunNameEn" : "Gwangjin-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "7",
				"gugunName" : "구로구",
				"gugunNameEn" : "Guro-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "8",
				"gugunName" : "금천구",
				"gugunNameEn" : "Geumcheon-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "9",
				"gugunName" : "노원구",
				"gugunNameEn" : "Nowon-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "11",
				"gugunName" : "동대문구",
				"gugunNameEn" : "Dongdaemun-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "12",
				"gugunName" : "동작구",
				"gugunNameEn" : "Dongjak-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "13",
				"gugunName" : "마포구",
				"gugunNameEn" : "Mapo-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "14",
				"gugunName" : "서대문구",
				"gugunNameEn" : "Seodaemun-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "15",
				"gugunName" : "서초구",
				"gugunNameEn" : "Seocho-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "16",
				"gugunName" : "성동구",
				"gugunNameEn" : "Seongdong-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "17",
				"gugunName" : "성북구",
				"gugunNameEn" : "Seongbuk-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "18",
				"gugunName" : "송파구",
				"gugunNameEn" : "Songpa-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "19",
				"gugunName" : "양천구",
				"gugunNameEn" : "Yangcheon-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "20",
				"gugunName" : "영등포구",
				"gugunNameEn" : "Yeongdeungpo-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "21",
				"gugunName" : "용산구",
				"gugunNameEn" : "Yongsan-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "22",
				"gugunName" : "은평구",
				"gugunNameEn" : "Eunpyeong-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "23",
				"gugunName" : "종로구",
				"gugunNameEn" : "Jongno-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "24",
				"gugunName" : "중구",
				"gugunNameEn" : "Jung-gu"
			}, {
				"sidoCode" : "1",
				"gugunCode" : "25",
				"gugunName" : "중랑구",
				"gugunNameEn" : "Jungnang-gu"
			}, {
				"sidoCode" : "10",
				"gugunCode" : "2",
				"gugunName" : "청주시",
				"gugunNameEn" : "Cheongju-si"
			}, {
				"sidoCode" : "2",
				"gugunCode" : "4",
				"gugunName" : "남동구",
				"gugunNameEn" : "Namdong-gu"
			}, {
				"sidoCode" : "2",
				"gugunCode" : "8",
				"gugunName" : "연수구",
				"gugunNameEn" : "Yeonsu-gu"
			}, {
				"sidoCode" : "6",
				"gugunCode" : "1",
				"gugunName" : "남구",
				"gugunNameEn" : "Nam-gu"
			}, {
				"sidoCode" : "7",
				"gugunCode" : "6",
				"gugunName" : "부산진구",
				"gugunNameEn" : "Busanjin-gu"
			}, {
				"sidoCode" : "7",
				"gugunCode" : "12",
				"gugunName" : "연제구",
				"gugunNameEn" : "Yeonje-gu"
			}, {
				"sidoCode" : "7",
				"gugunCode" : "15",
				"gugunName" : "해운대구",
				"gugunNameEn" : "Haeundae-gu"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "1",
				"gugunName" : "고양시",
				"gugunNameEn" : "Goyang-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "3",
				"gugunName" : "광명시",
				"gugunNameEn" : "Gwangmyeong-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "5",
				"gugunName" : "구리시",
				"gugunNameEn" : "Guri-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "7",
				"gugunName" : "김포시",
				"gugunNameEn" : "Gimpo-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "8",
				"gugunName" : "남양주시",
				"gugunNameEn" : "Namyangju-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "10",
				"gugunName" : "부천시",
				"gugunNameEn" : "Bucheon-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "11",
				"gugunName" : "성남시",
				"gugunNameEn" : "Seongnam-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "12",
				"gugunName" : "수원시",
				"gugunNameEn" : "Suwon-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "13",
				"gugunName" : "시흥시",
				"gugunNameEn" : "Siheung-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "14",
				"gugunName" : "안산시",
				"gugunNameEn" : "Ansan-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "19",
				"gugunName" : "용인시",
				"gugunNameEn" : "Yongin-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "23",
				"gugunName" : "파주시",
				"gugunNameEn" : "Paju-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "26",
				"gugunName" : "하남시",
				"gugunNameEn" : "Hanam-si"
			}, {
				"sidoCode" : "8",
				"gugunCode" : "27",
				"gugunName" : "화성시",
				"gugunNameEn" : "Hwaseong-si"
			} ]
		}
		var seltarget;
		var selList;
		var selid = "";
		$(function() {
			$('body').click(function() {
				if ($(window.event.target).attr("id") !== selid) {
					if (seltarget != undefined && selList != undefined) {
						seltarget.removeClass('open');
						selList.hide();
					}
				}
			});
		});

		var app_popMemverInfo = new Vue(
				{
					el : "#pop_memberinfofrm",
					data : {
						mbrName : "임경민",
						mbrTel : "01076279992",
						mbrGender : "F",
						birthYear : "2000",
						birthYearList : [ "1920", "1921", "1922", "1923",
								"1924", "1925", "1926", "1927", "1928", "1929",
								"1930", "1931", "1932", "1933", "1934", "1935",
								"1936", "1937", "1938", "1939", "1940", "1941",
								"1942", "1943", "1944", "1945", "1946", "1947",
								"1948", "1949", "1950", "1951", "1952", "1953",
								"1954", "1955", "1956", "1957", "1958", "1959",
								"1960", "1961", "1962", "1963", "1964", "1965",
								"1966", "1967", "1968", "1969", "1970", "1971",
								"1972", "1973", "1974", "1975", "1976", "1977",
								"1978", "1979", "1980", "1981", "1982", "1983",
								"1984", "1985", "1986", "1987", "1988", "1989",
								"1990", "1991", "1992", "1993", "1994", "1995",
								"1996", "1997", "1998", "1999", "2000", "2001",
								"2002", "2003", "2004", "2005", "2006", "2007",
								"2008", "2009", "2010", "2011", "2012", "2013",
								"2014", "2015", "2016", "2017", "2018", "2019",
								"2020" ],
						birthMonth : "10",
						birthMonthList : [ "01", "02", "03", "04", "05", "06",
								"07", "08", "09", "10", "11", "12" ],
						birthDay : "25",
						birthDayList : [ "01", "02", "03", "04", "05", "06",
								"07", "08", "09", "10", "11", "12", "13", "14",
								"15", "16", "17", "18", "19", "20", "21", "22",
								"23", "24", "25", "26", "27", "28", "29", "30",
								"31" ],
						hairlong : "",
						haircate : "",
					},
					mounted : function() {
						$("#birthYear").text("2000");
						$("#birthMonth").text("10");
						$("#birthDay").text("25");
					},
					methods : {
						selectAction : function(elid) {
							if (selid !== elid && seltarget != undefined
									&& selList != undefined) {
								seltarget.removeClass('open');
								selList.hide();
							}

							selid = elid;
							seltarget = $("#" + elid);
							selList = seltarget.next('.selList');
							var isSelOpen = seltarget.hasClass("open");
							if (isSelOpen) {
								seltarget.removeClass('open');
								selList.hide();
							} else {
								seltarget.addClass('open');
								selList.show();
							}
						},
						selectBirthYear : function(year) {
							this.birthYear = year;
							$("#birthYear").text(year);
						},
						selectBirthMonth : function(month) {
							this.birthMonth = month;
							$("#birthMonth").text(month);
						},
						selectBirthDay : function(day) {
							this.birthDay = day;
							$("#birthDay").text(day);
						},
						gotoRecommend : function() {
							if (this.mbrName === "") {
								alert("이름을 입력해주세요.");
								$("#mbrName").focus();
								return;
							}
							if (this.mbrTel === "") {
								alert("연락처를 입력해주세요.");
								$("#mbrTel").focus();
								return;
							}
							if (this.mbrGender === "") {
								alert("성별을 선택해주세요.");
								return;
							}
							if (this.birthYear === "") {
								alert("생년월일(년)을 선택해주세요.");
								$("#birthYear").focus();
								return;
							}
							if (this.birthMonth === "") {
								alert("생년월일(월)을 선택해주세요.");
								$("#birthMonth").focus();
								return;
							}
							if (this.birthDay === "") {
								alert("생년월일(일)을 선택해주세요.");
								$("#birthDay").focus();
								return;
							}
							if (this.hairlong === "") {
								alert("머리길이를 선택해주세요.");
								return;
							}
							if (this.haircate.length === 0) {
								alert("시술을 선택해주세요.");
								return;
							}

							var params = {
								cpcode : "80",
								mbrName : this.mbrName,
								mbrTel : this.mbrTel,
								mbrGender : this.mbrGender,
								birthYear : this.birthYear,
								birthMonth : this.birthMonth,
								birthDay : this.birthDay,
								hairlong : this.hairlong,
								haircate : this.haircate,
							}
							cf_call(
									"https://www.junohair.com/junohair/reservation/process02_designer_recommendDsnr",
									params, this.gotoRecommendCB);
						},
						gotoRecommendCB : function(data) {
							this.resetData();
							for (var i = 0; i < data.length; i++) {
								if (data[i].file1 === "") {
									data[i].imgback = "background-image:url(\'https://www.junohair.com/static_resources/images/junohair/sub/reservation/bg_desigerImg.jpg\')";
								} else {
									data[i].imgback = "background-image:url(\'"
											+ data[i].file1 + "\')";
								}
							}
							app_popRecommendDsnr.designerList = data;
							closePop('pop_memberinfofrm');
							openPop('pop_recommDesigner');
						},
						resetData : function() {
							$("#birthYear").text("년도");
							$("#birthMonth").text("월");
							$("#birthDay").text("일");
							this.birthYear = "";
							this.birthMonth = "";
							this.birthDay = "";
							this.hairlong = "";
							this.haircate = "";
						},
						closePop : function() {
							this.resetData();
							closePop('pop_memberinfofrm');
						}
					}
				});
	</script>
	<script>
		function gotoNext(scode, cpcode) {
			location.href = "https://www.junohair.com/junohair/reservation/process03_date?scode="
					+ scode + "&cpcode=" + cpcode + "&refer=norm";
		}

		function gotoPre() {

			location.href = "branch"; // 매장 선택으로 돌아가기

		}

		function openRecomPop() {

			openPop('pop_memberinfofrm');

		}
	</script>

</body>
