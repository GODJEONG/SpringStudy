﻿parcelRequire = (function (e, r, t, n) {
  var i,
    o = "function" == typeof parcelRequire && parcelRequire,
    u = "function" == typeof require && require;
  function f(t, n) {
    if (!r[t]) {
      if (!e[t]) {
        var i = "function" == typeof parcelRequire && parcelRequire;
        if (!n && i) return i(t, !0);
        if (o) return o(t, !0);
        if (u && "string" == typeof t) return u(t);
        var c = new Error("Cannot find module '" + t + "'");
        throw ((c.code = "MODULE_NOT_FOUND"), c);
      }
      (p.resolve = function (r) {
        return e[t][1][r] || r;
      }),
        (p.cache = {});
      var l = (r[t] = new f.Module(t));
      e[t][0].call(l.exports, p, l, l.exports, this);
    }
    return r[t].exports;
    function p(e) {
      return f(p.resolve(e));
    }
  }
  (f.isParcelRequire = !0),
    (f.Module = function (e) {
      (this.id = e), (this.bundle = f), (this.exports = {});
    }),
    (f.modules = e),
    (f.cache = r),
    (f.parent = o),
    (f.register = function (r, t) {
      e[r] = [
        function (e, r) {
          r.exports = t;
        },
        {}
      ];
    });
  for (var c = 0; c < t.length; c++)
    try {
      f(t[c]);
    } catch (e) {
      i || (i = e);
    }
  if (t.length) {
    var l = f(t[t.length - 1]);
    "object" == typeof exports && "undefined" != typeof module
      ? (module.exports = l)
      : "function" == typeof define && define.amd
      ? define(function () {
          return l;
        })
      : n && (this[n] = l);
  }
  if (((parcelRequire = f), i)) throw i;
  return f;
})(
  {
    QxvH: [
      function (require, module, exports) {
        try {
          var e = document.querySelector("#kg-service-init").getAttribute("data-hosting"),
            t = window.location.pathname,
            o = function () {
              var t = document.querySelector("#kg-service-init").getAttribute("data-env");
              if (t) return t;
              var o = window.location.host.replace("www.", ""),
                r = window.location.href;
              return navigator.userAgent.indexOf("Mobile") > -1
                ? "mobile"
                : r.indexOf("".concat("cafe24" === e ? "m." + o : o + "/m")) > -1
                ? "mobile"
                : "pc";
            },
            r = (function () {
              var e = window.navigator.userAgent;
              if (
                e.indexOf("MSIE ") > 0 &&
                (null != new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})").exec(e) && (ieVer = parseFloat(RegExp.$1)), ieVer < 9)
              )
                throw new Error("keepgrow-debug : IE8버전 이하는 지원하지 않습니다.");
            })(),
            n = {
              basicJsonData: function () {
                null === n.storageBy().get() &&
                  n
                    .storageBy()
                    .set({
                      kg_user: { uuid: "", is_member: "", member_type: "", create_date: "", last_login_date: "" },
                      kg_product: { page_view_count: 0, last_create_date: "" },
                      kg_order: { initiate_checkout: 0, payment_count: 0, last_create_date: "" }
                    });
              },
              storageBy: function () {
                return {
                  get: function () {
                    return "mobile" === o()
                      ? localStorage.getItem("keepgrowUserData")
                      : ((e = "keepgrowUserData"),
                        (t = document.cookie.match("(^|;) ?" + e + "=([^;]*)(;|$)")) ? t[2] : null);
                    var e, t;
                  },
                  set: function (e) {
                    var t, r, n, a;
                    "mobile" === o()
                      ? localStorage.setItem("keepgrowUserData", JSON.stringify(e))
                      : ((t = "keepgrowUserData"),
                        (r = e),
                        (a = new Date()).setDate(a.getDate() + n),
                        (document.cookie = "".concat(t, "=").concat(JSON.stringify(r), "; path=/;}")));
                  }
                };
              },
              updateJsonData: function (e, t, o) {
                var r = JSON.parse(n.storageBy().get());
                (r[e][t] = o), n.storageBy().set(r);
              },
              injectJsonData: function () {
                n.generateUUID();
                var t = n[e + "ContantKey"]();
                t.orderCompletePage &&
                  (n.generatePageCount("kg_order", "payment_count"), n.generateGetDate("kg_order", "last_create_date")),
                  t.snsLogin.forEach(function (e) {
                    -1 !== document.referrer.indexOf("".concat(t.snsLoginReferrer + e)) && n.generateMemberType(e);
                  }),
                  window.addEventListener("load", function () {
                    if (t.joinPage) {
                      var o = document.querySelector(t.joinBtn);
                      o &&
                        o.addEventListener("click", function () {
                          n.generateGetDate("kg_user", "create_date");
                        });
                    }
                    if (
                      (t.detailPage &&
                        (n.generatePageCount("kg_product", "page_view_count"),
                        n.generateGetDate("kg_product", "last_create_date")),
                      t.normalLogin)
                    ) {
                      if ("makeshop" === e) {
                        var r = document.querySelector("#kg-service-data").getAttribute("data-member");
                        return void (
                          r.indexOf("ks@") > -1 ||
                          r.indexOf("nh@") > -1 ||
                          r.indexOf("fb@") > -1 ||
                          n.generateMemberType("normal")
                        );
                      }
                      n.generateMemberType("normal");
                    }
                    if ("imweb" !== e);
                    else {
                      var a = document.location.href.indexOf("is_social=Y") > -1,
                        i = document.location.href.indexOf("social_type=kakao_syn") > -1;
                      a && i && n.generateMemberType("kakao_sync");
                    }
                  }),
                  t.logout && n.updateJsonData("kg_user", "is_member", !1),
                  t.orderFormPage && n.generatePageCount("kg_order", "initiate_checkout");
              },
              cafe24ContantKey: function () {
                var e = document.location.href;
                return {
                  logout: -1 !== document.referrer.indexOf("/exec/front/Member/logout/"),
                  normalLogin:
                    -1 !== document.referrer.indexOf("/exec/front/Member/login/") ||
                    -1 !== document.referrer.indexOf("/exec/front/member/LoginSetKeeping"),
                  snsLogin: ["kakao", "facebook", "naver", "line", "apple", "google"],
                  snsLoginReferrer: "/Api/Member/Oauth2ClientCallback/",
                  joinPage: -1 !== e.indexOf("/member/join.html"),
                  joinBtn: "[onclick*='memberJoinAction()']",
                  detailPage:
                    (e.indexOf("/product/") > -1 &&
                      !!document.querySelector("a[onclick*=".concat("product_submit", "]"))) ||
                    (e.indexOf("/product/") > -1 &&
                      !!document.querySelector("a[onclick*=".concat("product_set_submit", "]"))) ||
                    (e.indexOf("/product/") > -1 && e.indexOf("/category/") > -1 && e.indexOf("/display/") > -1) ||
                    e.indexOf("/product/detail.html") > -1,
                  orderFormPage: -1 !== e.indexOf("/order/orderform.html"),
                  orderCompletePage: -1 !== e.indexOf("/order/order_result.html")
                };
              },
              makeshopContantKey: function () {
                var e = document.location.href;
                return {
                  logout: -1 !== document.referrer.indexOf("mobile" === o() ? "/m/logout.html" : "?type=logout"),
                  normalLogin:
                    document.querySelector("#kg-service-data") &&
                    document.querySelector("#kg-service-data").getAttribute("data-member").length > 0,
                  snsLogin: ["kakao_sync", "facebook", "naver"],
                  snsLoginReferrer: "/list/API/login_",
                  joinPage: -1 !== e.indexOf("mobile" === o() ? "/m/join_contract.html" : "/shop/idinfo.html"),
                  joinBtn: "[href*='javascript:send();']",
                  detailPage: -1 !== e.indexOf("mobile" === o() ? "/m/product.html" : "/shop/shopdetail.html"),
                  orderFormPage: -1 !== e.indexOf("order.html"),
                  orderCompletePage:
                    -1 !== e.indexOf("mobile" === o() ? "/m/order_complete.html" : "/shop/orderend.html")
                };
              },
              imwebContantKey: function () {
                var e = document.location.href;
                return {
                  logout: -1 !== document.referrer.indexOf("/logout.cm"),
                  normalLogin: MEMBER_HASH.length > 0,
                  snsLogin: ["kakao_sync", "facebook", "naver", "line", "apple", "google"],
                  snsLoginReferrer: "/site_join",
                  joinPage: -1 !== e.indexOf("site_join_type_choice"),
                  joinBtn: "[href*='SITE_MEMBER.joinSubmit(false); return false;']",
                  detailPage: -1 !== e.indexOf("shop_view"),
                  orderFormPage: -1 !== e.indexOf("shop_payment"),
                  orderCompletePage: -1 !== e.indexOf("shop_payment_complete")
                };
              },
              nhn_proContantKey: function () {
                var e = document.querySelector("script#kg-service-init").getAttribute("skin-type"),
                  t = document.location.href,
                  o = window.sessionStorage.getItem("profile"),
                  r = o ? JSON.parse(o) : "";
                return "another" == e
                  ? {
                      logout: r.length > 0,
                      normalLogin: null === r.providerType,
                      snsLogin: ["kakao", "facebook", "naver", "payco"],
                      snsLoginReferrer: "/callback/auth-callback.html",
                      joinPage: -1 !== t.indexOf("/pages/join/method.html"),
                      joinBtn: "[href='/pages/join/method.html']",
                      detailPage: -1 !== t.indexOf("/pages/product/view.html"),
                      orderFormPage: -1 !== t.indexOf("/pages/order/order.html"),
                      orderCompletePage: -1 !== t.indexOf("/pages/order/order-complete.html")
                    }
                  : "aurora" == e
                  ? {
                      logout: -1 == document.cookie.indexOf("SSID"),
                      normalLogin: -1 !== document.referrer.indexOf("/sign-in"),
                      snsLogin: ["kakao", "facebook", "naver", "payco"],
                      snsLoginReferrer: "/callback/auth-callback.html",
                      joinPage: -1 !== t.indexOf("/sign-up"),
                      joinBtn: "[href='/sign-up']",
                      detailPage: -1 !== t.indexOf("/product-detail?productNo="),
                      orderFormPage: -1 !== t.indexOf("/order/"),
                      orderCompletePage: -1 !== t.indexOf("/order/confirm")
                    }
                  : void 0;
              },
              generateUUID: function () {
                var e = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (e) {
                  var t = (16 * Math.random()) | 0;
                  return ("x" == e ? t : (3 & t) | 8).toString(16);
                });
                "" === JSON.parse(n.storageBy().get()).kg_user.uuid && n.updateJsonData("kg_user", "uuid", e);
              },
              generatePageCount: function (e, t) {
                var o = JSON.parse(n.storageBy().get())[e][t];
                n.updateJsonData(e, t, o + 1);
              },
              generateGetDate: function (e, t) {
                var o = new Date(),
                  r = o.getMonth() + 1 >= 10 ? o.getMonth() + 1 : "0" + (o.getMonth() + 1),
                  a = o.getFullYear() + "-" + r + "-" + o.getDate(),
                  i = JSON.parse(n.storageBy().get())[e][t];
                ("" !== i && i === a) || n.updateJsonData(e, t, a);
              },
              generateMemberType: function (e) {
                n.updateJsonData("kg_user", "is_member", !0), n.generateGetDate("kg_user", "last_login_date");
                var t = JSON.parse(n.storageBy().get()).kg_user.member_type;
                0 !== t.length
                  ? n.updateJsonData("kg_user", "member_type", "kakao" === e ? t + "+kakao_sync" : t + "+" + e)
                  : n.updateJsonData("kg_user", "member_type", "kakao" === e ? "kakao_sync" : e);
              }
            },
            a = {
              loadFiles: function (e, t) {
                window.keepgrowInitialized ||
                  ((window.keepgrowInitialized = !0),
                  e.map(function (e) {
                    a.keepgrowPrdRender(e, t);
                  }));
              },
              keepgrowPrdRender: function (r, n) {
                var i = n[r],
                  d = i.active,
                  c = i.hosting,
                  g = i.path,
                  l = i.option,
                  m = "/m/index.html" === t || "/m/main.html" === t,
                  s = !!l && "powerpack" === l.skintype && m && "mobile" === o();
                if ("ACTIVE" === d && c === e.toUpperCase() && g && !s) {
                  0, "kakaosync" === r && a.backgroundCover(o(), c.toUpperCase());
                  var u = document.createElement("script");
                  (u.id = "kakaosync" === r ? "kgSync-init" : "kg-".concat(r, "-service")),
                    (u.type = "text/javascript"),
                    (u.async = !1),
                    (u.characterSet = "UTF-8"),
                    u.setAttribute("data-env", o()),
                    (u.src = "//storage.keepgrow.com/".concat(g)),
                    document.body.insertBefore(u, null);
                }
              },
              backgroundCover: function (e, o) {
                var r = {
                    CAFE24: [
                      "/member/login.html",
                      "/m/member/login.html",
                      "mobile" === e ? "/member/agreement.html" : "/member/join.html"
                    ],
                    MAKESHOP: [
                      "/shop/member.html",
                      "/shop/qmember.html",
                      "/shop/confirm_login.html",
                      "/m/login.html",
                      "/shop/idinfo.html",
                      "/m/join_contract.html"
                    ],
                    IMWEB: ["/login", "/site_join_type_choice"],
                    NHN_PRO: [
                      "/m/pages/login/login.html",
                      "/m/pages/join/method.html",
                      "/pages/login/login.html",
                      "/pages/join/method.html",
                      "/sign-in",
                      "/sign-up"
                    ]
                  },
                  n = document.createElement("div");
                (n.id = "kg-background-cover"),
                  (n.innerHTML = '<div class="loaderContainer"><div class="loader"></div></div>');
                var a = document.createElement("style");
                (a.innerHTML =
                  "\n                #kg-background-cover { position:fixed;top:0;left:0;width:100%;height:100%;background:#fff;z-index:9998; }\n                .loaderContainer { display: inline-block; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}\n                .loader, .loader:after { border-radius: 50%; width: 2em; height: 2em;}\n                .loader { font-size: 10px; position: relative; text-indent: -9999em; border-top: 0.5em solid rgba(156, 176, 221, 0.2); border-right: 0.5em solid rgba(156, 176, 221, 0.2); border-bottom: 0.5em solid rgba(156, 176, 221, 0.2); border-left: 0.5em solid #5e81f4; -webkit-transform: translateZ(0); -ms-transform: translateZ(0);transform: translateZ(0); -webkit-animation: load8 1.1s infinite linear; animation: load8 1.1s infinite linear;}\n                @-webkit-keyframes load8 { 0% { -webkit-transform: rotate(0deg); transform: rotate(0deg);} 100% { -webkit-transform: rotate(360deg); transform: rotate(360deg);} }\n                @keyframes load8 { 0% { -webkit-transform: rotate(0deg); transform: rotate(0deg);} 100% { -webkit-transform: rotate(360deg); transform: rotate(360deg);} \n            "),
                  r[o].indexOf(t) > -1 && (document.head.appendChild(a), document.body.appendChild(n));
              }
            };
          (window.keepgrowServiceInit = function (e) {
            var t = Object.keys(e),
              o = e;
            n.injectJsonData(n.basicJsonData()), window.addEventListener("load", a.loadFiles(t, o), !1);
          }),
keepgrowServiceInit({kakaosync : {active : "ACTIVE", hosting : "IMWEB", option : {}, path : "admin/kakaosync/imweb/kg_kakaosync_350814dd-abc9-4d45-81e0-7add4bd58ddc.js"}})
        } catch (c) {
          console.log("keepgrow-service-debug : " + c);
          var i = document.querySelector("#kg-service-init"),
            d = document.querySelector("#kg-background-cover");
          i && document.body.removeChild(i), d && document.body.removeChild(d);
        }
      },
      {}
    ]
  },
  {},
  ["QxvH"],
  null
);
