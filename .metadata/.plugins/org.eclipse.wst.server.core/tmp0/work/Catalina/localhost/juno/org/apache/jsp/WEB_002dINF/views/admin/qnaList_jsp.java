/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.88
 * Generated at: 2024-07-04 02:58:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class qnaList_jsp extends org.apache.jasper.runtime.HttpJspBase
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fchoose;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fotherwise;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fchoose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fotherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
    _005fjspx_005ftagPool_005fc_005fchoose.release();
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fotherwise.release();
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
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\"\n");
      out.write("	class=\" js no-touch csstransforms csstransforms3d csstransitions\"\n");
      out.write("	style=\"\">\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<link rel=\"shortcut icon\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/images/junohair.ico\">\n");
      out.write("<link rel=\"apple-touch-icon\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/images/apple-touch-icon.png\">\n");
      out.write("<link rel=\"apple-touch-icon-precomposed\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/images/apple-touch-icon.png\">\n");
      out.write("<meta http-equiv=\"content-language\" content=\"ko\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<link rel=\"canonical\" href=\"https://www.junohair.com/junohair\">\n");
      out.write("<meta name=\"robots\" content=\"index,follow\">\n");
      out.write("<meta name=\"description\"\n");
      out.write("	content=\"헤어&amp;뷰티 업계의 리딩 브랜드, 당신이 아름다워지는 과정을 경험해보세요\">\n");
      out.write("<meta name=\"author\" content=\"TheLink\">\n");
      out.write("<meta property=\"og:type\" content=\"website\">\n");
      out.write("<meta property=\"og:title\" content=\"준오헤어\">\n");
      out.write("<meta property=\"og:description\"\n");
      out.write("	content=\"헤어&amp;뷰티 업계의 리딩 브랜드, 당신이 아름다워지는 과정을 경험해보세요\">\n");
      out.write("<meta property=\"og:image\"\n");
      out.write("	content=\"https://www.junohair.com/static_resources/images/junohair_logo.jpg\">\n");
      out.write("<meta property=\"og:url\" content=\"https://www.junohair.com/junohair\">\n");
      out.write("<meta name=\"naver-site-verification\"\n");
      out.write("	content=\"325867716301e23bfeb7a5c336b9dbea78f76ae7\">\n");
      out.write("<meta name=\"viewport\"\n");
      out.write("	content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi\">\n");
      out.write("<meta http-equiv=\"imagetoolbar\" content=\"no\">\n");
      out.write("\n");
      out.write("<!-- Global site tag (gtag.js) - Google Analytics -->\n");
      out.write("<script type=\"text/javascript\" async=\"\"\n");
      out.write("	src=\"https://www.google-analytics.com/analytics.js\"></script>\n");
      out.write("<script type=\"text/javascript\" async=\"\"\n");
      out.write("	src=\"https://www.googletagmanager.com/gtag/js?id=G-DBGPMGH101&amp;l=dataLayer&amp;cx=c\"></script>\n");
      out.write("<script async=\"\"\n");
      out.write("	src=\"https://www.googletagmanager.com/gtag/js?id=UA-150219424-1\"></script>\n");
      out.write("<script>\n");
      out.write("	window.dataLayer = window.dataLayer || [];\n");
      out.write("	function gtag() {\n");
      out.write("		dataLayer.push(arguments);\n");
      out.write("	}\n");
      out.write("	gtag('js', new Date());\n");
      out.write("\n");
      out.write("	gtag('config', 'UA-150219424-1');\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\" src=\"//wcs.naver.net/wcslog.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("	if (!wcs_add)\n");
      out.write("		var wcs_add = {};\n");
      out.write("	wcs_add[\"wa\"] = \"fce44f52888e1\";\n");
      out.write("	if (window.wcs) {\n");
      out.write("		wcs_do();\n");
      out.write("	}\n");
      out.write("</script>\n");
      out.write("<title>준오헤어</title>\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/css/reset.css?rscVer=0333\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/css/common.css?rscVer=0333\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/css/junohair/common.css?rscVer=0333\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/css/junohair/sub_common.css?rscVer=0333\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/css/myjuno/member.css?rscVer=0333\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/css/jmarket.css?rscVer=0333\">\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/lib/jquery/1.12.4/jquery.min.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/imagesloaded.3.2.x.pkgd.min.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/isotope.min.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/modernizr.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/smoothscroll.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/viewportchecker.js?rscVer=0333\"></script>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"https://www.junohair.com/static_resources/css/contents.display.none.css?rscVer=0333\">\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/lib/vue/2.6.10/vue.min.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/lib/vue-the-mask/vue-the-mask.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/lib/babel-polyfill/7.4.4/polyfill.min.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/lib/axios/0.19.0/axios.min.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/common.js?rscVer=0333\"></script>\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333\"></script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"member\">\n");
      out.write("	<div id=\"wrap\">\n");
      out.write("		");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/header2.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("id", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("admin", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.admin}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null), request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("\n");
      out.write("		<div id=\"container\">\n");
      out.write("			<div class=\"sub_visual\">\n");
      out.write("				<div class=\"sub_visual_bg\"\n");
      out.write("					style=\"background-image: url('https://www.junohair.com/static_resources/images/myjuno/intro_visual.jpg')\"></div>\n");
      out.write("				<div class=\"sub_visual_text\">MY JUNO</div>\n");
      out.write("			</div>\n");
      out.write("			<!-- \n");
      out.write("			<div class=\"sub_menu w20p\">\n");
      out.write("				<div class=\"inner\">\n");
      out.write("					<ul>\n");
      out.write("						<li><strong><a href=\"#juno\" onclick=\"location.href='/myjuno/member_info'\">회원정보</a></strong></li>\n");
      out.write("						<li><strong><a href=\"#juno\" onclick=\"location.href='/myjuno/use_list'\">이용내역</a></strong></li>\n");
      out.write("						<li class=\"cur\"><strong><a href=\"#juno\" onclick=\"location.href='/myjuno/order_list'\">구매내역</a></strong></li>\n");
      out.write("						<li><strong><a href=\"#juno\" onclick=\"location.href='/myjuno/sdelivery_set'\">정기배송설정</a></strong></li>\n");
      out.write("						<li><strong><a href=\"#juno\" onclick=\"location.href='/myjuno/withdraw'\">회원탈퇴</a></strong></li>\n");
      out.write("					</ul>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("			 -->\n");
      out.write("			<div class=\"clear\"></div>\n");
      out.write("\n");
      out.write("			<div id=\"contents\" class=\"orderwrap\">\n");
      out.write("				<div class=\"section1\">\n");
      out.write("					<div class=\"inner\">\n");
      out.write("						<div class=\"section_tit\">\n");
      out.write("							<span class=\"bar\"></span>\n");
      out.write("							<!-- \n");
      out.write("							<strong class=\"tit\">구매내역</strong>\n");
      out.write("							 -->\n");
      out.write("						</div>\n");
      out.write("						<div class=\"tbl_order_head\">\n");
      out.write("							<h3 class=\"ttl\"></h3>\n");
      out.write("						</div>\n");
      out.write("						<div class=\"web_view\">\n");
      out.write("							<div class=\"tbl_order\">\n");
      out.write("								<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\"\n");
      out.write("									summary=\"주문배송리스트\">\n");
      out.write("									<colgroup>\n");
      out.write("										<col width=\"150\" />\n");
      out.write("										<col width=\"150\" />\n");
      out.write("										<col width=\"*\" />\n");
      out.write("										<col width=\"120\" />\n");
      out.write("										<col width=\"150\" />\n");
      out.write("										<col width=\"150\" />\n");
      out.write("									</colgroup>\n");
      out.write("									<thead>\n");
      out.write("										<tr>\n");
      out.write("											<th>Q&A ID</th>\n");
      out.write("											<th>고객 ID</th>\n");
      out.write("											<th>고객 Email</th>\n");
      out.write("											<th>제목</th>\n");
      out.write("											<th>내용</th>\n");
      out.write("											<th>답변여부</th>\n");
      out.write("										</tr>\n");
      out.write("									</thead>\n");
      out.write("									<tbody>\n");
      out.write("										");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("									</tbody>\n");
      out.write("								</table>\n");
      out.write("							</div>\n");
      out.write("						</div>\n");
      out.write("\n");
      out.write("						<div class=\"mobile_view\">\n");
      out.write("							<div class=\"list_order\" id=\"list_mobile\"></div>\n");
      out.write("						</div>\n");
      out.write("						<div class=\"btn_data_more\" id=\"btn_data_more\"\n");
      out.write("							style=\"display: none;\">\n");
      out.write("							<a href=\"#juno\" onclick=\"getOrderList()\">더보기</a>\n");
      out.write("						</div>\n");
      out.write("					</div>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div id=\"footer\">\n");
      out.write("			<div class=\"footgotop\" id=\"goTop\">\n");
      out.write("				<a href=\"#juno\" onclick=\"goTopbtn()\"><span class=\"blind\">상단으로\n");
      out.write("						가기</span></a>\n");
      out.write("			</div>\n");
      out.write("			<div class=\"footer_top\">\n");
      out.write("				<div class=\"inner\">\n");
      out.write("					<div class=\"ft_left\">\n");
      out.write("						<div class=\"family_site\">\n");
      out.write("							<img\n");
      out.write("								src=\"https://www.junohair.com/static_resources/images/family_site.png\"\n");
      out.write("								alt=\"family site\"> <span class=\"bar\"></span>\n");
      out.write("							<ul class=\"fs_list\">\n");
      out.write("								<li><a href=\"#juno\" onclick=\"location.href='/junohair'\"><img\n");
      out.write("										src=\"https://www.junohair.com/static_resources/images/family_junoHair.png\"\n");
      out.write("										alt=\"JUNO HAIR\"></a></li>\n");
      out.write("								<li><a href=\"#juno\" onclick=\"location.href='/junoacademy'\"><img\n");
      out.write("										src=\"https://www.junohair.com/static_resources/images/family_junoAcademy.png\"\n");
      out.write("										alt=\"JUNO ACADEMY\"></a></li>\n");
      out.write("								<li><a href=\"#juno\" onclick=\"location.href='/avenuejuno'\"><img\n");
      out.write("										src=\"https://www.junohair.com/static_resources/images/family_junoAvenue.png\"\n");
      out.write("										alt=\"JUNO AVENUE\"></a></li>\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"location.href='https://www.triamilia.com/'\"><img\n");
      out.write("										src=\"https://www.junohair.com/static_resources/images/family_triamilia.png\"\n");
      out.write("										alt=\"triamilia\"></a></li>\n");
      out.write("							</ul>\n");
      out.write("						</div>\n");
      out.write("						<div class=\"terms\">\n");
      out.write("							<ul class=\"term_list\">\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"window.open('/myjuno/privacypolicy?section=1', '_blank');\">이용약관</a></li>\n");
      out.write("								<li><span class=\"bar\"></span></li>\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"window.open('/myjuno/privacypolicy?section=2', '_blank');\">개인정보처리방침</a></li>\n");
      out.write("							</ul>\n");
      out.write("						</div>\n");
      out.write("					</div>\n");
      out.write("					<div class=\"ft_right\">\n");
      out.write("						<div class=\"ft_rightTop\">\n");
      out.write("							<ul>\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"location.href='/junohair/communication/partnership'\">제휴문의</a></li>\n");
      out.write("								<li><a href=\"#juno\" onclick=\"location.href='/recruit'\">인재채용</a></li>\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"location.href='/junohair/communication/qna'\">Q&amp;A</a></li>\n");
      out.write("							</ul>\n");
      out.write("						</div>\n");
      out.write("						<div class=\"fr_rightBottom\">\n");
      out.write("							<strong><img\n");
      out.write("								src=\"https://www.junohair.com/static_resources/images/junohair/footer_media_img.png\"\n");
      out.write("								alt=\"JUNO SOCIAL MEDIA\"><span class=\"bar\"></span></strong>\n");
      out.write("							<ul>\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"window.open('https://www.facebook.com/junohair.official/', '_blank');\"><img\n");
      out.write("										src=\"https://www.junohair.com/static_resources/images/junohair/footer_social1.jpg\"\n");
      out.write("										alt=\"facebook\"></a></li>\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"window.open('https://www.instagram.com/junohair_official/', '_blank');\"><img\n");
      out.write("										src=\"https://www.junohair.com/static_resources/images/junohair/footer_social2.jpg\"\n");
      out.write("										alt=\"instagram\"></a></li>\n");
      out.write("								<li><a href=\"#juno\"\n");
      out.write("									onclick=\"window.open('https://www.youtube.com/channel/UCwmPMC_aCMskDKR6P30pn6Q/', '_blank');\"><img\n");
      out.write("										src=\"https://www.junohair.com/static_resources/images/junohair/footer_social_youtube.jpg\"\n");
      out.write("										alt=\"youtube\"></a></li>\n");
      out.write("							</ul>\n");
      out.write("						</div>\n");
      out.write("					</div>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("			<div class=\"footer_btm\">\n");
      out.write("				<div class=\"inner\">\n");
      out.write("					<strong><img\n");
      out.write("						src=\"https://www.junohair.com/static_resources/images/junohair/footer_junohair_logo.png\"\n");
      out.write("						alt=\"JUNO HAIR\"></strong>\n");
      out.write("					<div class=\"address\">\n");
      out.write("						<p>\n");
      out.write("							<span>(주)준오뷰티</span> <span>대표자 강윤선</span> <span>서울특별시 강남구\n");
      out.write("								청담동 63-14 JUNO &amp; BEAUTY 5층</span>\n");
      out.write("						</p>\n");
      out.write("						<p>\n");
      out.write("							<span>사업자등록번호 : 110-81-60003</span> <span>통신판매번호 :\n");
      out.write("								2020-서울강남-02683호</span> <span>대표전화 +82-2-548-0605</span>\n");
      out.write("						</p>\n");
      out.write("						<p>Copyright ⓒ 2017 JUNOHAIR.COM. All rights Reserved.</p>\n");
      out.write("					</div>\n");
      out.write("					<div class=\"emblem\">\n");
      out.write("						<img\n");
      out.write("							src=\"https://www.junohair.com/static_resources/images/K_BPI_2020.png\"\n");
      out.write("							alt=\"2020 K-BPI 파워엠블렘\" style=\"height: 44px\">\n");
      out.write("						<!-- 2020-04-02 이미지경로 수정-->\n");
      out.write("						<img\n");
      out.write("							src=\"https://www.junohair.com/static_resources/images/naward.png\"\n");
      out.write("							alt=\"2017 &amp;Award\">\n");
      out.write("					</div>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/admin/qnaList.jsp(169,10) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("qna");
      // /WEB-INF/views/admin/qnaList.jsp(169,10) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/admin/qnaList.jsp(169,10) '${qnaList}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${qnaList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("											<tr>\n");
            out.write("												<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${qna.qnaId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("												<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${qna.userId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("												<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${qna.userEmail}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("												<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${qna.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("												<td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${qna.content}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\n");
            out.write("												<td>");
            if (_jspx_meth_c_005fchoose_005f0(_jspx_th_c_005fforEach_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
              return true;
            out.write("</td>\n");
            out.write("											</tr>\n");
            out.write("										");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fchoose_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fforEach_005f0, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_005fchoose_005f0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _005fjspx_005ftagPool_005fc_005fchoose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    boolean _jspx_th_c_005fchoose_005f0_reused = false;
    try {
      _jspx_th_c_005fchoose_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fchoose_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
      int _jspx_eval_c_005fchoose_005f0 = _jspx_th_c_005fchoose_005f0.doStartTag();
      if (_jspx_eval_c_005fchoose_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("														");
          if (_jspx_meth_c_005fwhen_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
            return true;
          out.write("\n");
          out.write("														");
          if (_jspx_meth_c_005fotherwise_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
            return true;
          out.write("\n");
          out.write("													");
          int evalDoAfterBody = _jspx_th_c_005fchoose_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fchoose_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
      _jspx_th_c_005fchoose_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fchoose_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fchoose_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fwhen_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_005fwhen_005f0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    boolean _jspx_th_c_005fwhen_005f0_reused = false;
    try {
      _jspx_th_c_005fwhen_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fwhen_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      // /WEB-INF/views/admin/qnaList.jsp(177,14) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fwhen_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${qna.answer eq '1'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fwhen_005f0 = _jspx_th_c_005fwhen_005f0.doStartTag();
      if (_jspx_eval_c_005fwhen_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("															<span>답글 완료</span>\n");
          out.write("														");
          int evalDoAfterBody = _jspx_th_c_005fwhen_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fwhen_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
      _jspx_th_c_005fwhen_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fwhen_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fwhen_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fotherwise_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_005fotherwise_005f0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _005fjspx_005ftagPool_005fc_005fotherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    boolean _jspx_th_c_005fotherwise_005f0_reused = false;
    try {
      _jspx_th_c_005fotherwise_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fotherwise_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      int _jspx_eval_c_005fotherwise_005f0 = _jspx_th_c_005fotherwise_005f0.doStartTag();
      if (_jspx_eval_c_005fotherwise_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("															<a href=\"./adminqna_reply?qnaId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${qna.qnaId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\">답글\n");
          out.write("																달기</a>\n");
          out.write("														");
          int evalDoAfterBody = _jspx_th_c_005fotherwise_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fotherwise_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
      _jspx_th_c_005fotherwise_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fotherwise_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fotherwise_005f0_reused);
    }
    return false;
  }
}
