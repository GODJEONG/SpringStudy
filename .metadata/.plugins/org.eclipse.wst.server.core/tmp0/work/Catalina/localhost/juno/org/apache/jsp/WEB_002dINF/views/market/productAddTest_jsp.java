/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.88
 * Generated at: 2024-07-04 03:27:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.market;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class productAddTest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("	href=\"https://www.junohair.com/static_resources/css/myjuno/join.css?rscVer=0333\">\n");
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
      out.write("	src=\"https://www.junohair.com/static_resources/js/common_vue.js?rscVer=0333\"></script>\n");
      out.write("\n");
      out.write("<script\n");
      out.write("	src=\"https://www.junohair.com/static_resources/js/myjuno/juno_sub_ui.js?rscVer=0333\"></script>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./resources/join_css.css\">\n");
      out.write("<script type=\"text/javascript\" src=\"./resources/verify.js\"\n");
      out.write("	charset=\"utf-8\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>상품 등록</title>\n");
      out.write("<script language=\"javascript\">\n");
      out.write("	function addProduct() {\n");
      out.write("		document.productForm.submit();\n");
      out.write("	}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/header2.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("id", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("admin", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.admin}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null), request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("\n");
      out.write("<body class=\"join\">\n");
      out.write("	<div id=\"wrap\">\n");
      out.write("\n");
      out.write("\n");
      out.write("		<div id=\"container\">\n");
      out.write("			<div class=\"sub_visual\">\n");
      out.write("				<div class=\"sub_visual_bg\"\n");
      out.write("					style=\"background-image: url('https://www.junohair.com/static_resources/images/myjuno/intro_visual.jpg')\"></div>\n");
      out.write("				<div class=\"sub_visual_text\">미용 용품 등록</div>\n");
      out.write("			</div>\n");
      out.write("			<div class=\"sub_menu\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("			<div class=\"section1\">\n");
      out.write("				<div class=\"section_tit\">\n");
      out.write("					<span class=\"bar\"></span> <strong class=\"tit\">미용 물품 등록</strong>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("			</br> </br>\n");
      out.write("			<form id=\"productForm\" action=\"./ProductAdd\" method=\"post\"\n");
      out.write("				enctype=\"multipart/form-data\">\n");
      out.write("				<div class=\"form-container\">\n");
      out.write("					<table>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">상품구분</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productType\" type=\"text\"\n");
      out.write("								size=\"10\" maxlength=\"10\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">상품번호</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productId\" type=\"text\"\n");
      out.write("								size=\"10\" maxlength=\"10\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">상품명</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"name\" type=\"text\"\n");
      out.write("								size=\"50\" maxlength=\"100\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">상품 가격</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"price\" type=\"text\"\n");
      out.write("								size=\"10\" maxlength=\"10\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">상품 설명</td>\n");
      out.write("							<td class=\"valuefield\"><textarea name=\"productDes\" cols=\"67\"\n");
      out.write("									rows=\"5\"></textarea></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">키워드</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productKeyword\"\n");
      out.write("								type=\"text\" size=\"50\" maxlength=\"100\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">추천 고객</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productToWho\"\n");
      out.write("								type=\"text\" size=\"50\" maxlength=\"100\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">향</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productSmell\"\n");
      out.write("								type=\"text\" size=\"50\" maxlength=\"100\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">주요 성분</td>\n");
      out.write("							<td class=\"valuefield\"><textarea name=\"productIngr\"\n");
      out.write("									cols=\"67\" rows=\"5\"></textarea></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">썸네일1</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productImg1\" type=\"file\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">썸네일2</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productImg2\" type=\"file\"></td>\n");
      out.write("						</tr>\n");
      out.write("						<tr>\n");
      out.write("							<td class=\"division\">상세 이미지</td>\n");
      out.write("							<td class=\"valuefield\"><input name=\"productDetailImg\"\n");
      out.write("								type=\"file\"></td>\n");
      out.write("						</tr>\n");
      out.write("					</table>\n");
      out.write("					<div class=\"form-right\">\n");
      out.write("						<input type=\"submit\" class=\"button\" value=\"등록\">\n");
      out.write("						<button type=\"button\" class=\"button\" onclick=\"history.back()\">뒤로</button>\n");
      out.write("					</div>\n");
      out.write("				</div>\n");
      out.write("			</form>\n");
      out.write("\n");
      out.write("			<style>\n");
      out.write("body {\n");
      out.write("	font-family: Arial, sans-serif !important;\n");
      out.write("	margin: 20px !important;\n");
      out.write("	background-color: #f0f2f5 !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-container {\n");
      out.write("	width: 80% !important;\n");
      out.write("	max-width: 800px !important;\n");
      out.write("	margin: 20px auto !important;\n");
      out.write("	background-color: #fff !important;\n");
      out.write("	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1) !important;\n");
      out.write("	border-radius: 8px !important;\n");
      out.write("	padding: 20px !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-title {\n");
      out.write("	text-align: center !important;\n");
      out.write("	color: #343a40 !important;\n");
      out.write("	font-size: 24px !important;\n");
      out.write("	font-weight: bold !important;\n");
      out.write("	margin-bottom: 20px !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("table {\n");
      out.write("	width: 100% !important;\n");
      out.write("	border-collapse: collapse !important;\n");
      out.write("	margin: 20px 0 !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".division {\n");
      out.write("	background-color: #f8f8f8 !important;\n");
      out.write("	width: 30% !important;\n");
      out.write("	font-weight: bold !important;\n");
      out.write("	padding: 12px 15px !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".valuefield {\n");
      out.write("	background-color: #fff !important;\n");
      out.write("	padding: 12px 15px !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=\"text\"], input[type=\"file\"], textarea {\n");
      out.write("	width: calc(100% - 20px) !important;\n");
      out.write("	padding: 8px 10px !important;\n");
      out.write("	border: 1px solid #ccc !important;\n");
      out.write("	border-radius: 4px !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=\"text\"]:focus, textarea:focus {\n");
      out.write("	border-color: #343a40 !important;\n");
      out.write("	outline: none !important;\n");
      out.write("	box-shadow: 0 0 5px rgba(52, 58, 64, 0.5) !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("textarea {\n");
      out.write("	resize: vertical !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-right {\n");
      out.write("	text-align: center !important;\n");
      out.write("	padding: 20px !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button {\n");
      out.write("	background-color: #343a40 !important;\n");
      out.write("	color: #fff !important;\n");
      out.write("	padding: 10px 20px !important;\n");
      out.write("	border: none !important;\n");
      out.write("	border-radius: 4px !important;\n");
      out.write("	font-size: 16px !important;\n");
      out.write("	cursor: pointer !important;\n");
      out.write("	transition: background-color 0.3s !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button:hover {\n");
      out.write("	background-color: #23272b !important;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("			</br> </br> </br>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("	<div id=\"footer\">\n");
      out.write("		<div class=\"footgotop\" id=\"goTop\">\n");
      out.write("			<a href=\"#juno\" onclick=\"goTopbtn()\"><span class=\"blind\">상단으로\n");
      out.write("					가기</span></a>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"footer_top\">\n");
      out.write("			<div class=\"inner\">\n");
      out.write("				<div class=\"ft_left\">\n");
      out.write("					<div class=\"family_site\">\n");
      out.write("						<img\n");
      out.write("							src=\"https://www.junohair.com/static_resources/images/family_site.png\"\n");
      out.write("							alt=\"family site\"> <span class=\"bar\"></span>\n");
      out.write("						<ul class=\"fs_list\">\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junohair'\"><img\n");
      out.write("									src=\"https://www.junohair.com/static_resources/images/family_junoHair.png\"\n");
      out.write("									alt=\"JUNO HAIR\"></a></li>\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/junoacademy'\"><img\n");
      out.write("									src=\"https://www.junohair.com/static_resources/images/family_junoAcademy.png\"\n");
      out.write("									alt=\"JUNO ACADEMY\"></a></li>\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/avenuejuno'\"><img\n");
      out.write("									src=\"https://www.junohair.com/static_resources/images/family_junoAvenue.png\"\n");
      out.write("									alt=\"JUNO AVENUE\"></a></li>\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"location.href='https://www.triamilia.com/'\"><img\n");
      out.write("									src=\"https://www.junohair.com/static_resources/images/family_triamilia.png\"\n");
      out.write("									alt=\"triamilia\"></a></li>\n");
      out.write("						</ul>\n");
      out.write("					</div>\n");
      out.write("					<div class=\"terms\">\n");
      out.write("						<ul class=\"term_list\">\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"window.open('/myjuno/privacypolicy?section=1', '_blank');\">이용약관</a></li>\n");
      out.write("							<li><span class=\"bar\"></span></li>\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"window.open('/myjuno/privacypolicy?section=2', '_blank');\">개인정보처리방침</a></li>\n");
      out.write("						</ul>\n");
      out.write("					</div>\n");
      out.write("				</div>\n");
      out.write("				<div class=\"ft_right\">\n");
      out.write("					<div class=\"ft_rightTop\">\n");
      out.write("						<ul>\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"location.href='/junohair/communication/partnership'\">제휴문의</a></li>\n");
      out.write("							<li><a href=\"#juno\" onclick=\"location.href='/recruit'\">인재채용</a></li>\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"location.href='/junohair/communication/qna'\">Q&amp;A</a></li>\n");
      out.write("						</ul>\n");
      out.write("					</div>\n");
      out.write("					<div class=\"fr_rightBottom\">\n");
      out.write("						<strong><img\n");
      out.write("							src=\"https://www.junohair.com/static_resources/images/junohair/footer_media_img.png\"\n");
      out.write("							alt=\"JUNO SOCIAL MEDIA\"><span class=\"bar\"></span></strong>\n");
      out.write("						<ul>\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"window.open('https://www.facebook.com/junohair.official/', '_blank');\"><img\n");
      out.write("									src=\"https://www.junohair.com/static_resources/images/junohair/footer_social1.jpg\"\n");
      out.write("									alt=\"facebook\"></a></li>\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"window.open('https://www.instagram.com/junohair_official/', '_blank');\"><img\n");
      out.write("									src=\"https://www.junohair.com/static_resources/images/junohair/footer_social2.jpg\"\n");
      out.write("									alt=\"instagram\"></a></li>\n");
      out.write("							<li><a href=\"#juno\"\n");
      out.write("								onclick=\"window.open('https://www.youtube.com/channel/UCwmPMC_aCMskDKR6P30pn6Q/', '_blank');\"><img\n");
      out.write("									src=\"https://www.junohair.com/static_resources/images/junohair/footer_social_youtube.jpg\"\n");
      out.write("									alt=\"youtube\"></a></li>\n");
      out.write("						</ul>\n");
      out.write("					</div>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"footer_btm\">\n");
      out.write("			<div class=\"inner\">\n");
      out.write("				<strong><img\n");
      out.write("					src=\"https://www.junohair.com/static_resources/images/junohair/footer_junohair_logo.png\"\n");
      out.write("					alt=\"JUNO HAIR\"></strong>\n");
      out.write("				<div class=\"address\">\n");
      out.write("					<p>\n");
      out.write("						<span>(주)준오뷰티</span> <span>대표자 강윤선</span> <span>서울특별시 강남구\n");
      out.write("							청담동 63-14 JUNO &amp; BEAUTY 5층</span>\n");
      out.write("					</p>\n");
      out.write("					<p>\n");
      out.write("						<span>사업자등록번호 : 110-81-60003</span> <span>통신판매번호 :\n");
      out.write("							2020-서울강남-02683호</span> <span>대표전화 +82-2-548-0605</span>\n");
      out.write("					</p>\n");
      out.write("					<p>Copyright ⓒ 2017 JUNOHAIR.COM. All rights Reserved.</p>\n");
      out.write("				</div>\n");
      out.write("				<div class=\"emblem\">\n");
      out.write("					<img\n");
      out.write("						src=\"https://www.junohair.com/static_resources/images/K_BPI_2020.png\"\n");
      out.write("						alt=\"2020 K-BPI 파워엠블렘\" style=\"height: 44px\">\n");
      out.write("					<!-- 2020-04-02 이미지경로 수정-->\n");
      out.write("					<img\n");
      out.write("						src=\"https://www.junohair.com/static_resources/images/naward.png\"\n");
      out.write("						alt=\"2017 &amp;Award\">\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("	<div class=\"idCheckLayer\">\n");
      out.write("		<p class=\"ttl\">아이디 중복 체크</p>\n");
      out.write("		<div class=\"layer_content\">\n");
      out.write("			<div class=\"search_wrap\">\n");
      out.write("				<input type=\"text\" name=\"id_val\" maxlength=\"14\"> <a\n");
      out.write("					href=\"#juno\" onclick=\"idDplChkLayerPop.goCheck()\">중복확인</a>\n");
      out.write("			</div>\n");
      out.write("			<div class=\"search_error\">\n");
      out.write("				<span></span>은(는) 사용이 불가한 아이디 입니다.\n");
      out.write("			</div>\n");
      out.write("			<div class=\"search_success\">\n");
      out.write("				<p>\n");
      out.write("					입력하신 아이디 <span></span>은(는)<br> 사용하실 수 있습니다.\n");
      out.write("				</p>\n");
      out.write("				<a href=\"#juno\" onclick=\"idDplChkLayerPop.use()\">사용하기</a>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("		<a href=\"#juno\" class=\"btn_close\" onclick=\"idDplChkLayerPop.close()\"><span\n");
      out.write("			class=\"blind\">팝업닫기</span></a>\n");
      out.write("	</div>\n");
      out.write("	<div class=\"overlay1\" onclick=\"idDplChkLayerPop.close()\"></div>\n");
      out.write("	<div class=\"overlaycomm\"></div>\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
