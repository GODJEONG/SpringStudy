/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.88
 * Generated at: 2024-07-02 02:47:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.common;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/SJ/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Juno/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1716879715354L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" class=\" js no-touch csstransforms csstransforms3d csstransitions\" style=\"\">\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"https://www.junohair.com/static_resources/images/junohair.ico\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"https://www.junohair.com/static_resources/images/apple-touch-icon.png\">\r\n");
      out.write("<link rel=\"apple-touch-icon-precomposed\" href=\"https://www.junohair.com/static_resources/images/apple-touch-icon.png\">\r\n");
      out.write("<meta http-equiv=\"content-language\" content=\"ko\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<link rel=\"canonical\" href=\"https://www.junohair.com/junohair\">\r\n");
      out.write("<meta name=\"robots\" content=\"index,follow\">\r\n");
      out.write("<meta name=\"description\" content=\"헤어&amp;뷰티 업계의 리딩 브랜드, 당신이 아름다워지는 과정을 경험해보세요\">\r\n");
      out.write("<meta name=\"author\" content=\"TheLink\">\r\n");
      out.write("<meta property=\"og:type\" content=\"website\">\r\n");
      out.write("<meta property=\"og:title\" content=\"준오헤어\">\r\n");
      out.write("<meta property=\"og:description\" content=\"헤어&amp;뷰티 업계의 리딩 브랜드, 당신이 아름다워지는 과정을 경험해보세요\">\r\n");
      out.write("<meta property=\"og:image\" content=\"https://www.junohair.com/static_resources/images/junohair_logo.jpg\">\r\n");
      out.write("<meta property=\"og:url\" content=\"https://www.junohair.com/junohair\">\r\n");
      out.write("<meta name=\"naver-site-verification\" content=\"325867716301e23bfeb7a5c336b9dbea78f76ae7\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi\">\r\n");
      out.write("<meta http-equiv=\"imagetoolbar\" content=\"no\">\r\n");
      out.write("\r\n");
      out.write("	<!-- Global site tag (gtag.js) - Google Analytics -->\r\n");
      out.write("<script type=\"text/javascript\" async=\"\" src=\"https://www.google-analytics.com/analytics.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" async=\"\" src=\"https://www.googletagmanager.com/gtag/js?id=G-DBGPMGH101&amp;l=dataLayer&amp;cx=c\"></script>\r\n");
      out.write("<script async=\"\" src=\"https://www.googletagmanager.com/gtag/js?id=UA-150219424-1\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("  window.dataLayer = window.dataLayer || [];\r\n");
      out.write("  function gtag(){dataLayer.push(arguments);}\r\n");
      out.write("  gtag('js', new Date());\r\n");
      out.write("\r\n");
      out.write("  gtag('config', 'UA-150219424-1');\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://wcs.naver.net/wcslog.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("if(!wcs_add) var wcs_add = {};\r\n");
      out.write("wcs_add[\"wa\"] = \"fce44f52888e1\";\r\n");
      out.write("if(window.wcs) {\r\n");
      out.write("wcs_do();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<title>준오헤어</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.junohair.com/static_resources/css/reset.css?rscVer=0333\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.junohair.com/static_resources/css/common.css?rscVer=0333\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.junohair.com/static_resources/css/junohair/sub_style2.css?rscVer=0333\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.junohair.com/static_resources/css/junohair/reservation.css?rscVer=0333\">\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/js/viewportchecker.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/js/modernizr.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/js/smoothscroll.js?rscVer=0333\"></script>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.junohair.com/static_resources/css/contents.display.none.css?rscVer=0333\">\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/lib/vue/2.6.10/vue.min.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/lib/vue-the-mask/vue-the-mask.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/lib/babel-polyfill/7.4.4/polyfill.min.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/lib/axios/0.19.0/axios.min.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/js/common.js?rscVer=0333\"></script>\r\n");
      out.write("<script src=\"https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("	if (\"N\" === \"Y\") {\r\n");
      out.write("		alert(\"2021년 4월 11일 저녁10시 ~ \\n2021년 4월 12일 오전8시까지 예약이 불가합니다.\");\r\n");
      out.write("		location.href = '/junohair';\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("<script>\r\n");
      out.write("	if (\"CUST\" != \"CUST\") {\r\n");
      out.write("		location.href = '/myjuno/login';\r\n");
      out.write("	}\r\n");
      out.write("	//JPOS임시 끝\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("		<div id=\"wrap\">\r\n");
      out.write("		\r\n");
      out.write("		<div id=\"header\">\r\n");
      out.write("			<div class=\"header_top\">\r\n");
      out.write("				<span class=\"logo\"><a href=\"#juno\" onclick=\"location.href='/'\"><img src=\"https://www.junohair.com/static_resources/images/home_icon.png\" alt=\"JUNO\"></a></span>\r\n");
      out.write("				<div class=\"inner\">\r\n");
      out.write("					<div id=\"gnb\">\r\n");
      out.write("						<ul>\r\n");
      out.write("							<li class=\"active\"><a href=\"#juno\" onclick=\"location.href='/junohair'\">JUNO HAIR</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junoacademy'\">JUNO ACADEMY</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/avenuejuno'\">AVENUE JUNO</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/recruit'\">RECRUIT</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"gotoMyjuno()\">MY JUNO</a></li>\r\n");
      out.write("						</ul>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				\r\n");
      out.write("				<div class=\"util\">\r\n");
      out.write("					<dl>\r\n");
      out.write("						<dt class=\"hide\">유틸메뉴</dt>\r\n");
      out.write("\r\n");
      out.write("						<dd class=\"login\"><a href=\"#juno\" onclick=\"cf_logout()\"><span>로그아웃</span><img src=\"https://www.junohair.com/static_resources/images/logout_icon.png\" alt=\"로그인\"></a></dd>\r\n");
      out.write("\r\n");
      out.write("					</dl>\r\n");
      out.write("				</div>\r\n");
      out.write("				<!-- 언어 변경 -->\r\n");
      out.write("				<div class=\"lang\">\r\n");
      out.write("					<a href=\"#juno\" onclick=\"lang_toggle()\" class=\"cur_lang\"><img src=\"https://www.junohair.com/static_resources/images/kr_n.png\" alt=\"국가 아이콘\" class=\"national\">한국어</a>\r\n");
      out.write("					<span class=\"lang_arr arr_down\"><img src=\"https://www.junohair.com/static_resources/images/lang_arr_down.png\" alt=\"\"></span>\r\n");
      out.write("					<span class=\"lang_arr arr_up\"><img src=\"https://www.junohair.com/static_resources/images/lang_arr_up.png\" alt=\"\"></span>\r\n");
      out.write("					<ul class=\"lang_list\">\r\n");
      out.write("						<li><a href=\"#juno\" onclick=\"location.href='/en/junohair'\"><img src=\"https://www.junohair.com/static_resources/images/en_n.png\" alt=\"국가 아이콘\" class=\"national\">ENG</a></li>\r\n");
      out.write("						<li><a href=\"#juno\" onclick=\"location.href='/cn/junohair'\"><img src=\"https://www.junohair.com/static_resources/images/cn_n.png\" alt=\"국가 아이콘\" class=\"national\">中國語</a></li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"header_btm\">\r\n");
      out.write("				<div class=\"inner\">\r\n");
      out.write("					<h1>\r\n");
      out.write("						<a href=\"/junohair\">\r\n");
      out.write("							<img src=\"https://www.junohair.com/static_resources/images/junohair/junohair_logo_dark.png\" alt=\"JUNO HAIR\" class=\"dark\">\r\n");
      out.write("							<img src=\"https://www.junohair.com/static_resources/images/junohair/junohair_logo_light.png\" alt=\"JUNO HAIR\" class=\"light\">\r\n");
      out.write("						</a>\r\n");
      out.write("					</h1>\r\n");
      out.write("					<div class=\"lnb\">\r\n");
      out.write("						<ul>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair/about/story'\">ABOUT</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair/salon/shop_list'\">SALON</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair/membership/policy'\">MEMBERSHIP</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair/communication/news_list'\">COMMUNICATION</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair/reservation/intro'\">RESERVATION</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair/jmarket/prodlist'\">J MARKET</a></li>\r\n");
      out.write("						</ul>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"mobile_menu_btn\">\r\n");
      out.write("						<a href=\"#juno\" onclick=\"m_nav();\">\r\n");
      out.write("							<span></span>\r\n");
      out.write("							<span></span>\r\n");
      out.write("							<span></span>\r\n");
      out.write("						</a>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"mobile_nav\">\r\n");
      out.write("			<div class=\"mobile_nav_inner\">\r\n");
      out.write("				<div class=\"m_util\">\r\n");
      out.write("					<ul>\r\n");
      out.write("\r\n");
      out.write("						<li><a href=\"#juno\" onclick=\"cf_logout()\">로그아웃</a></li>\r\n");
      out.write("	\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"mn_wrap\">\r\n");
      out.write("					<div class=\"lnb\">\r\n");
      out.write("						<ul>\r\n");
      out.write("							<li>\r\n");
      out.write("								<strong class=\"depth1\">ABOUT<div><span class=\"horizon\"></span><span class=\"vertical\"></span></div></strong>\r\n");
      out.write("								<dl>\r\n");
      out.write("									<dt class=\"hide\">ABOUT</dt>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/about/story'\">스토리</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/about/ceo'\">CEO 인사말</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/about/brand'\">브랜드</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/about/location'\">오시는길</a></dd>\r\n");
      out.write("								</dl>\r\n");
      out.write("							</li>\r\n");
      out.write("							<li>\r\n");
      out.write("								<strong class=\"depth1\">SALON<div><span class=\"horizon\"></span><span class=\"vertical\"></span></div></strong>\r\n");
      out.write("								<dl>\r\n");
      out.write("									<dt class=\"hide\">SALON</dt>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/salon/shop_list'\">살롱 소개</a></dd>\r\n");
      out.write("\r\n");
      out.write("								</dl>\r\n");
      out.write("							</li>\r\n");
      out.write("							<li>\r\n");
      out.write("								<strong class=\"depth1\">MEMBERSHIP<div><span class=\"horizon\"></span><span class=\"vertical\"></span></div></strong>\r\n");
      out.write("								<dl>\r\n");
      out.write("									<dt class=\"hide\">MEMBERSHIP</dt>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/membership/policy'\">멤버십 제도</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/membership/partnercard'\">제휴 할인 카드</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/membership/mobilecoupon'\">모바일 쿠폰</a></dd>\r\n");
      out.write("								</dl>\r\n");
      out.write("							</li>\r\n");
      out.write("							<li>\r\n");
      out.write("								<strong class=\"depth1\">COMMUNICATION<div><span class=\"horizon\"></span><span class=\"vertical\"></span></div></strong>\r\n");
      out.write("								<dl>\r\n");
      out.write("									<dt class=\"hide\">COMMUNICATION</dt>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/communication/news_list'\">NEWS</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/communication/qna'\">Q&amp;A</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"location.href='/junohair/communication/partnership'\">제휴문의</a></dd>\r\n");
      out.write("								</dl>\r\n");
      out.write("							</li>\r\n");
      out.write("							<li>\r\n");
      out.write("								<strong class=\"depth1\"><a href=\"#juno\" onclick=\"location.href='/junohair/reservation/intro'\">RESERVATION</a></strong>\r\n");
      out.write("							</li>\r\n");
      out.write("							<li>\r\n");
      out.write("								<strong class=\"depth1\"><a href=\"#juno\" onclick=\"location.href='/junohair/jmarket/prodlist'\">J MARKET</a></strong>\r\n");
      out.write("							</li>\r\n");
      out.write("							<li>\r\n");
      out.write("							</li><li>\r\n");
      out.write("								<strong class=\"depth1\">MY JUNO<div><span class=\"horizon\"></span><span class=\"vertical\"></span></div></strong>\r\n");
      out.write("								<dl>\r\n");
      out.write("									<dt class=\"hide\">MY JUNO</dt>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"gotoMyjunoMbr()\">회원정보</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"gotoMyjunoUL()\">이용내역</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"gotoMyjunoOL()\">구매내역</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"gotoMyjunoSS()\">정기배송 설정</a></dd>\r\n");
      out.write("									<dd><a href=\"#juno\" onclick=\"gotoMyjunoWD()\">회원 탈퇴</a></dd>\r\n");
      out.write("								</dl>\r\n");
      out.write("							</li>\r\n");
      out.write("						</ul>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"gnb\">\r\n");
      out.write("						<ul>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair'\"><img class=\"hair\" src=\"https://www.junohair.com/static_resources/images/m_gnb_hair.png\" alt=\"JUNO HAIR\"></a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junoacademy'\"><img class=\"academy\" src=\"https://www.junohair.com/static_resources/images/m_gnb_academy.png\" alt=\"JUNO ACADEMY\"></a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/avenuejuno'\"><img class=\"avenue\" src=\"https://www.junohair.com/static_resources/images/m_gnb_avenue.png\" alt=\"AVENUE JUNO\"></a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='https://www.triamilia.com/'\"><img class=\"tria\" src=\"https://www.junohair.com/static_resources/images/m_gnb_tria.png\" alt=\"TRIA MILIA\"></a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/recruit'\">RECRUIT</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/en/junohair/'\">ENGLISH</a></li>\r\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/cn/junohair/'\">中国</a></li>\r\n");
      out.write("						</ul>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<script>\r\n");
      out.write("		function gotoMyjuno(){\r\n");
      out.write("			if(\"CUST\" != \"CUST\"){\r\n");
      out.write("				alert(\"로그인후 이용이 가능합니다.\");\r\n");
      out.write("			}\r\n");
      out.write("			location.href = \"/myjuno/member_info\";\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		function gotoMyjunoMbr(){\r\n");
      out.write("			if(\"CUST\" != \"CUST\"){\r\n");
      out.write("				alert(\"로그인후 이용이 가능합니다.\");\r\n");
      out.write("			}\r\n");
      out.write("			location.href = \"/myjuno/member_info\";\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		function gotoMyjunoUL(){\r\n");
      out.write("			if(\"CUST\" != \"CUST\"){\r\n");
      out.write("				alert(\"로그인후 이용이 가능합니다.\");\r\n");
      out.write("			}\r\n");
      out.write("			location.href = \"/myjuno/use_list\";\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		function gotoMyjunoOL(){\r\n");
      out.write("			if(\"CUST\" != \"CUST\"){\r\n");
      out.write("				alert(\"로그인후 이용이 가능합니다.\");\r\n");
      out.write("			}\r\n");
      out.write("			location.href = \"/myjuno/order_list\";\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		function gotoMyjunoSS(){\r\n");
      out.write("			if(\"CUST\" != \"CUST\"){\r\n");
      out.write("				alert(\"로그인후 이용이 가능합니다.\");\r\n");
      out.write("			}\r\n");
      out.write("			location.href = \"/myjuno/sdelivery_set\";\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		function gotoMyjunoWD(){\r\n");
      out.write("			if(\"CUST\" != \"CUST\"){\r\n");
      out.write("				alert(\"로그인후 이용이 가능합니다.\");\r\n");
      out.write("			}\r\n");
      out.write("			location.href = \"/myjuno/withdraw\";\r\n");
      out.write("		}\r\n");
      out.write("		</script>\r\n");
      out.write("		\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
