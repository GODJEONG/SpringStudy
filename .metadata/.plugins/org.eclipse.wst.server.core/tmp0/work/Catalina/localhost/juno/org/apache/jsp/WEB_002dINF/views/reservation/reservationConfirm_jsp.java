/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.88
 * Generated at: 2024-07-04 16:34:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.reservation;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reservationConfirm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/C:/SJ/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Juno/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1716879715354L));
    _jspx_dependants.put("jar:file:/C:/SJ/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Juno/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody;

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
    _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.release();
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- header.jsp 내용 -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/headerReservation.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("id", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("admin", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.admin}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null), request.getCharacterEncoding()), out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"container\" class=\"reservation_wrap\">\r\n");
      out.write("	<div class=\"sub_visual\">\r\n");
      out.write("		<div class=\"sub_visual_bg\" style=\"background-image:url('https://www.junohair.com/static_resources/images/junohair/sub/reservation/reser_visual.jpg')\"></div>\r\n");
      out.write("		<div class=\"sub_visual_text\">\r\n");
      out.write("			<strong>RESERVATION</strong>\r\n");
      out.write("			<p class=\"sub_visual_sub_text\">\r\n");
      out.write("				<span>실시간 매장 예약을 통해 <br class=\"m\">편리한 매장 이용을 도와드리며,</span><br>\r\n");
      out.write("				<span>AI기반의 디자이너 추천 기능을 제공합니다.</span>\r\n");
      out.write("			</p>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<div id=\"contents\" class=\"shop_list\">\r\n");
      out.write("		<div class=\"reser_process\">\r\n");
      out.write("			<ul>\r\n");
      out.write("				<li>\r\n");
      out.write("					<span class=\"num\">01</span>\r\n");
      out.write("					<span>매장 선택</span>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li>\r\n");
      out.write("					<span class=\"num\">02</span>\r\n");
      out.write("					<span>디자이너 선택</span>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li style=\"cursor: pointer;\" onclick=\"gotoPre()\">\r\n");
      out.write("					<span class=\"num\">03</span>\r\n");
      out.write("					<span>일정 및 시술 선택</span>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li class=\"current\">\r\n");
      out.write("					<span class=\"num\">04</span>\r\n");
      out.write("					<span>예약 확인</span>\r\n");
      out.write("				</li>\r\n");
      out.write("			</ul>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<div class=\"clear\"></div>\r\n");
      out.write("\r\n");
      out.write("		<div class=\"reser_confirm\">\r\n");
      out.write("			<div class=\"secgroup\">\r\n");
      out.write("				<div class=\"designer_namebox\">\r\n");
      out.write("					<p class=\"profileimg\">\r\n");
      out.write("						<img src=\"./resources/productupload/");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${designerInfo.designerPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"profileimgsrc\">\r\n");
      out.write("					</p>\r\n");
      out.write("					<div class=\"infocont\">\r\n");
      out.write("						<p class=\"ttl\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${designerInfo.designerName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("						<p class=\"desc\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${designerInfo.introduce}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("					</div>\r\n");
      out.write("					<span class=\"line\"></span>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"reserlist_confirm\">\r\n");
      out.write("					<ul>\r\n");
      out.write("						<li>\r\n");
      out.write("							<p class=\"tit\">예약 매장</p>\r\n");
      out.write("							<p class=\"branch\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${branchInfo.branchName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("						</li>\r\n");
      out.write("						<li>\r\n");
      out.write("							<p class=\"tit\">날짜</p>\r\n");
      out.write("							<p class=\"date\">\r\n");
      out.write("								");
      if (_jspx_meth_fmt_005fformatDate_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("							</p>\r\n");
      out.write("						</li>\r\n");
      out.write("						<li>\r\n");
      out.write("							<p class=\"tit\">예약자 ID</p>\r\n");
      out.write("							<p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reservation.userId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("						</li>\r\n");
      out.write("						\r\n");
      out.write("						<li>\r\n");
      out.write("							<p class=\"tit\">연락처</p>\r\n");
      out.write("							<p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${branchInfo.contact}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("						</li>\r\n");
      out.write("						<!-- \r\n");
      out.write("						<li>\r\n");
      out.write("							<p class=\"tit\">요청사항</p>\r\n");
      out.write("							<p class=\"msg\">&nbsp;</p>\r\n");
      out.write("						</li>\r\n");
      out.write("						<li>\r\n");
      out.write("							<p class=\"tit\">시술 정보</p>\r\n");
      out.write("							<div class=\"detail\" id=\"sisulDtls\">\r\n");
      out.write("\r\n");
      out.write("								<div>\r\n");
      out.write("									<p class=\"dtit\" name=\"sisulNm\">앞머리 커트</p>\r\n");
      out.write("									<p class=\"price\">15,000<span class=\"won\">원</span></p>\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("						</li>\r\n");
      out.write("						-->\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div><br><br><br><br><br>\r\n");
      out.write("			<div class=\"forecastbox\">\r\n");
      out.write("				<p class=\"desc\">\r\n");
      out.write("					<span>실제 이용 금액은 세부 시술 내용 및</span>\r\n");
      out.write("					<span>할인 적용에 따라 달라질 수 있습니다.</span>\r\n");
      out.write("					\r\n");
      out.write("					<span style=\"display: inline-block; margin-top: 10px;\">※ 컷트, 드라이, 부분 시술(부리염색, 뿌리펌, 다운펌, 앞머리펌, 앞머리컷 등)은</span>\r\n");
      out.write("					<span>멤버십 할인 적용이 불가능합니다.</span>\r\n");
      out.write("					<span>위 상품에 대한 할인율은 실제 할인율과 달라질 수 있습니다.</span>\r\n");
      out.write("				</p>\r\n");
      out.write("				<!-- \r\n");
      out.write("				<div class=\"total_price\">\r\n");
      out.write("					<p class=\"tit\">예상 금액</p>\r\n");
      out.write("					<p class=\"price\">15,000<span class=\"won\">원</span></p>\r\n");
      out.write("				</div>\r\n");
      out.write("				 -->\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- \r\n");
      out.write("			<div class=\"agreebox\">\r\n");
      out.write("				<span class=\"check_type\">\r\n");
      out.write("				    <input type=\"checkbox\" id=\"haircate01\" name=\"haircate\" class=\"checkbox\">\r\n");
      out.write("				    <label for=\"haircate01\">준오헤어 이용약관 동의하기</label>\r\n");
      out.write("				</span>\r\n");
      out.write("			</div>	\r\n");
      out.write("			\r\n");
      out.write("			<div class=\"ai_foot_btns\">\r\n");
      out.write("				<a href=\"javascript:gotoPre();\" class=\"btnbox_line\" onclick=\"gotoPre()\">이전</a>\r\n");
      out.write("				<a href=\"#juno\" class=\"btnbox_black\" onclick=\"gotoNext()\">예약하기</a>\r\n");
      out.write("			</div>\r\n");
      out.write("			 -->\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- footer.jsp 내용 -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/common/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("function gotoNext(){\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	// 여의도IFC몰점 예약 제한\r\n");
      out.write("	if(80 === 83) return\r\n");
      out.write("\r\n");
      out.write("	if(0 != \"0\") {\r\n");
      out.write("		alert(\"예약정보가 없습니다.\\n처음부터 다시 시도해주시기 바랍니다.\");\r\n");
      out.write("		return;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	if(!$(\"input:checkbox[id='haircate01']\").is(\":checked\")){\r\n");
      out.write("		alert(\"이용약관에 동의해주세요.\");\r\n");
      out.write("		return;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	var sisulMenuAry = [];\r\n");
      out.write("	var sisulIdAry = [];\r\n");
      out.write("	var sisulDtlAry = $(\"[name='sisulNm']\");\r\n");
      out.write("	\r\n");
      out.write("	var strSisulList = \"[{id=22c03bfcb95d7d22ddcc0781ebef2e4d, sisulId=14b3341ceae44eddad06f20211e55506, sisulDesc=앞머리 커트, price=15,000, priceDiscount=, discountYn=N, recommendSisulId=, sort=1, sisulDiv=cut, membershipDiscountYn=N}]\".split(\"[{\").join(\"\").split(\"}]\").join(\"\"); //양끝 문자열 제거\r\n");
      out.write("	strSisulList = strSisulList.split(\"}, {\");\r\n");
      out.write("\r\n");
      out.write("	for(var i=0; i<sisulDtlAry.length; i++){\r\n");
      out.write("		var sisulNm = $(sisulDtlAry[i]).text();\r\n");
      out.write("		var sisulId = \"\";\r\n");
      out.write("		var arrSisulElement = strSisulList[i].split(\", \");\r\n");
      out.write("		for(var j=0; j<arrSisulElement.length; j++){\r\n");
      out.write("			var elementAry = arrSisulElement[j].split(\"=\");\r\n");
      out.write("			if(elementAry[0] == \"sisulId\") {\r\n");
      out.write("				sisulId = elementAry[1];\r\n");
      out.write("			}\r\n");
      out.write("		}\r\n");
      out.write("		sisulMenuAry.push(sisulNm);\r\n");
      out.write("		sisulIdAry.push(sisulId);\r\n");
      out.write("	}\r\n");
      out.write("	var params = \"?rmenu=\" + encodeURIComponent(sisulMenuAry.join())\r\n");
      out.write("				+ \"&sisulid=\" + encodeURIComponent(sisulIdAry.join())\r\n");
      out.write("				+ \"&rdate=\" + \"2024.07.02\".replaceAll(\".\",\"-\")\r\n");
      out.write("				+ \"&rtime=\" + \"10:00\"\r\n");
      out.write("				+ \"&cpcode=\" + \"80\"\r\n");
      out.write("				+ \"&scode=\" + \"1093\"\r\n");
      out.write("				+ \"&rsrvamt=\" + \"15,000\"\r\n");
      out.write("				+ \"&sname=\" + encodeURIComponent(\"정원\")\r\n");
      out.write("				+ \"&mname=\" + encodeURIComponent(\"임경민\")\r\n");
      out.write("				+ \"&mtel=\" + encodeURIComponent(\"01076279992\")\r\n");
      out.write("				+ \"&refer=\" + \"norm\"\r\n");
      out.write("				+ \"&rmemo=\" + encodeURIComponent(\"\".replaceAll(\"<br/>\",\"\\n\"));\r\n");
      out.write("				\r\n");
      out.write("				\r\n");
      out.write("	location.href = \"/junohair/reservation/process05_finish\" + params;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function gotoPre(){\r\n");
      out.write("// 	var cururl = window.location.href + \"\";\r\n");
      out.write("// 	if(cururl.indexOf(\"#\") != -1){\r\n");
      out.write("// 		window.history.go(-2);\r\n");
      out.write("// 	} else {\r\n");
      out.write("// 		window.history.go(-1);\r\n");
      out.write("// 	}\r\n");
      out.write("	location.href = \"/junohair/reservation/process03_date?scode=\" + \"1093\" + \"&refer=\" + \"norm\";\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>");
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

  private boolean _jspx_meth_fmt_005fformatDate_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatDate
    org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag _jspx_th_fmt_005fformatDate_005f0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag) _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag.class);
    boolean _jspx_th_fmt_005fformatDate_005f0_reused = false;
    try {
      _jspx_th_fmt_005fformatDate_005f0.setPageContext(_jspx_page_context);
      _jspx_th_fmt_005fformatDate_005f0.setParent(null);
      // /WEB-INF/views/reservation/reservationConfirm.jsp(67,8) name = value type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatDate_005f0.setValue((java.util.Date) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${reservation.reservationDate}", java.util.Date.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      // /WEB-INF/views/reservation/reservationConfirm.jsp(67,8) name = pattern type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_fmt_005fformatDate_005f0.setPattern("yyyy-MM-dd HH:mm");
      int _jspx_eval_fmt_005fformatDate_005f0 = _jspx_th_fmt_005fformatDate_005f0.doStartTag();
      if (_jspx_th_fmt_005fformatDate_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005ffmt_005fformatDate_0026_005fvalue_005fpattern_005fnobody.reuse(_jspx_th_fmt_005fformatDate_005f0);
      _jspx_th_fmt_005fformatDate_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_fmt_005fformatDate_005f0, _jsp_getInstanceManager(), _jspx_th_fmt_005fformatDate_005f0_reused);
    }
    return false;
  }
}
