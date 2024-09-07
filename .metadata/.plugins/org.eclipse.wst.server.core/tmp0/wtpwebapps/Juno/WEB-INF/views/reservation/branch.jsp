<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.si_img {
	position: relative;
	width: 100%; /* 필요한 경우 조정 */
	height: 300px; /* 필요한 경우 조정 */
	overflow: hidden;
}

.si_img a {
	display: block;
	width: 100%;
	height: 100%;
}

.si_img_bg {
	width: 100%;
	height: 100%;
	object-fit: cover; /* 이 속성을 사용하면 이미지가 컨테이너에 맞게 조정됩니다 */
	display: block;
}

.si_img_border {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: 2px solid; /* 원하는 대로 조정 */
	box-sizing: border-box;
}
</style>


<!-- header.jsp 내용 -->
<jsp:include page="/WEB-INF/views/common/headerReservation.jsp">
	<jsp:param name="id" value="${sessionScope.id}" />
	<jsp:param name="admin" value="${sessionScope.admin}" />
</jsp:include>

<body>
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
					<li class="current"><span class="num">01</span> <span>매장선택</span></li>
					<li><span class="num">02</span> <span>디자이너 선택</span></li>
					<li><span class="num">03</span> <span>일정 및 시술 선택</span></li>
					<li><span class="num">04</span> <span>예약 확인</span></li>
				</ul>
			</div>

			<div class="shop_search">
				<div class="inner">
					<ul class="search_form">
						<li class="area_sido"><strong class="depth"><a
								href="#juno">광역시/도</a></strong>
							<div id="sidoList" class="area_list_wrap" style="display: none;">
								<ul class="sido_list">
									<li class="sido_item" @click="selectedSido(sido)"
										v-for="sido in sidoList" :key="sido.sidoCode">{{
										sido.sidoName }}</li>
								</ul>
							</div></li>
						<li class="area_gugun"><strong class="depth"> <a
								href="#juno">구/군</a></strong>
							<div id="gugunList" class="area_list_wrap" style="display: none;">
								<ul class="gugun_list">
									<li class="gugun_item" @click="selectedGugun(gugun)"
										v-for="gugun in gugunList" :key="gugun.gugunCode">{{
										gugun.gugunName }}</li>
								</ul>
							</div></li>
						<li class="search_input"><input type="text"
							placeholder="지역 또는 매장을 입력하세요"></li>
						<li class="search_btn"><a href="#juno"><img
								src="https://www.junohair.com/static_resources/images/junohair/sub/subMenu_search_btn.png"
								alt="매장검색"></a></li>
					</ul>
				</div>
			</div>



			<div class="clear"></div>
			<div class="section">
				<div class="inner">
					<div class="shop_result">
						<div class="shop_result_list">
							<c:forEach var="branch" items="${branch}">
								<div class="shop_item">
									<div class="si_img">
										<a href="#juno"> <img class="si_img_bg"
											src="./resources/productupload/${branch.branchPath}">
											<div class="si_img_border"></div>
										</a>
									</div>
									<div class="si_info">
										<div class="si_info_inner">
											<a href="#juno"> <strong>${branch.branchName}</strong>
												<p>
													<span>주소:</span><span>${branch.address}</span>
												</p>
												<p>
													<span>영업:</span><span>${branch.openingTime}</span>
												</p>
												<p>
													<span>주차:</span><span>${branch.parking}</span>
												</p>
												<p>
													<span>전화:</span><span>${branch.contact}</span>
												</p>
											</a>
										</div>
									</div>
									<div class="si_reservation">
										<a href="designer?branchId=${branch.branchId}">
											<div>
												<img
													src="https://www.junohair.com/static_resources/images/junohair/sub/junohair/shopList_res_dark.png"
													alt="예약" class="dark"> <img
													src="https://www.junohair.com/static_resources/images/junohair/sub/junohair/shopList_res_light.png"
													alt="예약" class="light"> <span>예약하기</span>
											</div>
										</a>
									</div>
									<span class="mline"></span>
								</div>
							</c:forEach>


							<div class="pagination">
								<div>
									<a href="#juno" class="first"> <i aria-hidden="true"
										class="fa fa-caret-left"></i> <i aria-hidden="true"
										class="fa fa-caret-left"></i>
									</a> <a href="#juno" class="prev"> <i aria-hidden="true"
										class="fa fa-caret-left"></i></a> <a href="#juno" class="cur">1</a>
									<a href="#juno">2</a> <a href="#juno">3</a> <a href="#juno">4</a>
									<a href="#juno">5</a> <a href="#juno" class="next"><i
										aria-hidden="true" class="fa fa-caret-right"></i></a> <a
										href="#juno" class="last"><i aria-hidden="true"
										class="fa fa-caret-right"></i> <i aria-hidden="true"
										class="fa fa-caret-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer.jsp 내용 -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<script>


	
	var regionCode = {
		"sidoList" : [ {
			"sidoName" : "광역시/도",
			"sidoCode" : ""
		}, {
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
	var shopListSearchParams = {
		"sidoCode" : "",
		"sidoName" : "광역시/도",
		"gugunCode" : "",
		"gugunName" : "구/군",
		"srcValue" : "",
		"pageNo" : "1"
	}
	var app = new Vue(
			{
				el : "#contents",
				data : {
					sidoName : shopListSearchParams.sidoName,
					sidoCode : shopListSearchParams.sidoCode,
					gugunName : shopListSearchParams.gugunName,
					gugunCode : shopListSearchParams.gugunCode,
					sidoList : regionCode.sidoList,
					gugunList : [],
					srcValue : shopListSearchParams.srcValue,
					dataList : [],
					pageNo : shopListSearchParams.pageNo,
					pageInfo : {},
					pageSize : 10, // 페이지 크기 설정
				},
				mounted: function() {
					
 			        selectedSido: function(sido) {
			            $("#sidoList").hide();
			            this.sidoName = sido.sidoName;
			            this.sidoCode = sido.sidoCode;
			            this.gugunName = "구/군";
			            this.gugunCode = "";
			            this.gugunList = [];
			            this.gugunList.addElement(0, {
			                gugunName: "구/군",
			                gugunCode: ""
			            });
			            for (var i = 0; i < regionCode.gugunList.length; i++) {
			                if (regionCode.gugunList[i].sidoCode == this.sidoCode) {
			                    this.gugunList.push(regionCode.gugunList[i]);
			                }
			            }
			            this.goInitSearch();
			        },
			        selectedGugun: function(gugun) {
			            $("#gugunList").hide();
			            this.gugunName = gugun.gugunName;
			            this.gugunCode = gugun.gugunCode;
			            this.goInitSearch();
			        },
			        goInitSearch: function() {
			            this.pageNo = 1;
			            this.goSearch();
			        },
			        goSearch: function() {
			            var params = {
			                sidoCode: this.sidoCode,
			                sidoName: this.sidoName,
			                gugunCode: this.gugunCode,
			                gugunName: this.gugunName,
			                srcValue: this.srcValue.trim(),
			                pageNo: this.pageNo,
			                pageSize: this.pageSize  // 페이지 크기 전달
			            }
			            cf_call("/junohair/salon/getShopList", params, this.goSearchCB);
			        },
			        goSearchCB: function(data) {
			            if (data.errMsg != undefined) {
			                alert(data.errMsg);
			                return;
			            }
			            this.dataList = data.list;
			            this.pageInfo = data.pageInfo;
			            $(".vue-contents-container").show();
			        }, */
			        goView: function(data) {
			            location.href = "/junohair/salon/shop_info?idx=" + data.idx;
			        },
			        goReserve: function(cpcode) {
			            location.href = "/junohair/reservation/process02_designer?cpcode=" + cpcode;
			        },
			        gotoPage: function(pageNo) {
			            this.pageNo = pageNo;
			            this.goSearch();
			        },
			        gotoFirstPage: function() {
			            this.pageNo = 1;
			            this.goSearch();
			        },
			        gotoPreBlock: function() {
			            var preBlockPageNo = this.pageInfo.preBlockPageNo;
			            if (preBlockPageNo != -1) {
			                this.pageNo = preBlockPageNo;
			            }
			            this.goSearch();
			        },
			        gotoNextBlock: function() {
			            var nextBlockPageNo = this.pageInfo.nextBlockPageNo;
			            if (nextBlockPageNo != -1) {
			                this.pageNo = nextBlockPageNo;
			            }
			            this.goSearch();
			        },
			        gotoLastPage: function() {
			            this.pageNo = this.pageInfo.totalPages;
			            this.goSearch();
			        },
			    }
			});
</script>

</body>
</html>
