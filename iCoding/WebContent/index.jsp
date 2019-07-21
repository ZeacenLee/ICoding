<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="AcWing,Leetcode,题解,编程,算法"/>
    <meta name="description" content="一个专属于程序员的平台，为大家在漫漫的刷题之旅中，提供最优质的解答"/>
    <meta name="baidu-site-verification" content="UW1SBiMHO7" />
    <meta name="google-site-verification" content="YTgbOq_0TDShJS6KTcUYCQoAAZTm308SJ7ibsafBD_Y" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>iCoding</title>
    
    <link rel="shortcut icon" type="image/png" href="https://cdn.acwing.com/static/web/img/favicon.ico"/>
    <link rel="stylesheet" href="https://cdn.acwing.com/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/signform.css">
    <link rel="stylesheet" href="https://cdn.acwing.com/static/jquery-ui-dist/jquery-ui.min.css">
    
    
    <!--link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/pace.css"-->
    <!--script src="https://cdn.acwing.com/static/web/js/pace.js"></script-->
    <script>
        let onbeforeunload_functions = [];
    </script>
    <script src="https://cdn.acwing.com/static/jquery/js/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.acwing.com/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.acwing.com/static/jquery-ui-dist/jquery-ui.min.js"></script>
    <script src="https://cdn.acwing.com/static/web/js/signform.js"></script>
    <script src="https://cdn.acwing.com/static/web/js/handlebars-v1.3.0.js"></script>
    <script src="https://cdn.acwing.com/static/web/js/effect_anchor.js"></script>
    
    <script>
        let user_state = {
            is_authenticated: false,
            is_mobile: false,
        };
        if (user_state.is_authenticated){
            user_state.user_id = None;
        }
        
    </script>

    

<style>
    /* latin */
    @font-face {
      font-family: 'Satisfy';
      font-style: normal;
      font-weight: 400;
      src: local('Satisfy Regular'), local('Satisfy-Regular'), url(https://cdn.acwing.com/static/web/fonts/rP2Hp2yn6lkG50LoCZOIHQ.woff2) format('woff2');
      unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
    }

    /* latin-ext */
    @font-face {
      font-family: 'Lato';
      font-style: italic;
      font-weight: 400;
      src: local('Lato Italic'), local('Lato-Italic'), url(https://cdn.acwing.com/static/web/fonts/S6u8w4BMUTPHjxsAUi-qJCY.woff2) format('woff2');
      unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
    }
    /* latin */
    @font-face {
      font-family: 'Lato';
      font-style: italic;
      font-weight: 400;
      src: local('Lato Italic'), local('Lato-Italic'), url(https://cdn.acwing.com/static/web/fonts/S6u8w4BMUTPHjxsAXC-q.woff2) format('woff2');
      unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
    }
    /* latin-ext */
    @font-face {
      font-family: 'Lato';
      font-style: italic;
      font-weight: 700;
      src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://cdn.acwing.com/static/web/fonts/S6u_w4BMUTPHjxsI5wq_FQft1dw.woff2) format('woff2');
      unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
    }
    /* latin */
    @font-face {
      font-family: 'Lato';
      font-style: italic;
      font-weight: 700;
      src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://cdn.acwing.com/static/web/fonts/S6u_w4BMUTPHjxsI5wq_Gwft.woff2) format('woff2');
      unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
    }
    /* latin-ext */
    @font-face {
      font-family: 'Lato';
      font-style: normal;
      font-weight: 400;
      src: local('Lato Regular'), local('Lato-Regular'), url(https://cdn.acwing.com/static/web/fonts/S6uyw4BMUTPHjxAwXjeu.woff2) format('woff2');
      unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
    }
    /* latin */
    @font-face {
      font-family: 'Lato';
      font-style: normal;
      font-weight: 400;
      src: local('Lato Regular'), local('Lato-Regular'), url(https://cdn.acwing.com/static/web/fonts/S6uyw4BMUTPHjx4wXg.woff2) format('woff2');
      unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
    }
    /* latin-ext */
    @font-face {
      font-family: 'Lato';
      font-style: normal;
      font-weight: 700;
      src: local('Lato Bold'), local('Lato-Bold'), url(https://cdn.acwing.com/static/web/fonts/S6u9w4BMUTPHh6UVSwaPGR_p.woff2) format('woff2');
      unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
    }
    /* latin */
    @font-face {
      font-family: 'Lato';
      font-style: normal;
      font-weight: 700;
      src: local('Lato Bold'), local('Lato-Bold'), url(https://cdn.acwing.com/static/web/fonts/S6u9w4BMUTPHh6UVSwiPGQ.woff2) format('woff2');
      unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
    }
</style>
    <style>
        #acwing_body {
            background: white url("img/background.png");
        }

        
    </style>
    
        <link rel ="stylesheet" href="css/style.css">
    
    
    
        <link rel="stylesheet" href="css/homepage.css" />
    
    <style>
        /* latin-ext */
        @font-face {
          font-family: 'Raleway';
          font-style: normal;
          font-weight: 300;
          src: local('Raleway Light'), local('Raleway-Light'), url(https://cdn.acwing.com/static/web/fonts/1Ptrg8zYS_SKggPNwIYqWqhPAMif.woff2) format('woff2');
          unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }
        /* latin */
        @font-face {
          font-family: 'Raleway';
          font-style: normal;
          font-weight: 300;
          src: local('Raleway Light'), local('Raleway-Light'), url(https://cdn.acwing.com/static/web/fonts/1Ptrg8zYS_SKggPNwIYqWqZPAA.woff2) format('woff2');
          unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }
        /* latin-ext */
        .center-banner{
            background-image: linear-gradient(rgba(206, 27, 40, 0.25), rgba(206, 27, 40, 0.25)), url(img/sun.jpg);
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        
    </style>

    
</head>
<body id="acwing_body">
<nav class="navbar navbar-inverse">
    <div class="container">

        <!-- Header -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                
            </button>
            <a class="navbar-brand" href="index.jsp">iCoding</a>
        </div>

        <!-- Items -->
        <div class="collapse navbar-collapse" id="topNavBar">
            <ul class="nav navbar-nav">
                <li class=" active "><a href="index.jsp">首页</a></li>
                <li class=""><a href="questionBank.jsp">题库</a></li>
                <li> <a href="questionAnsBank.jsp" class="dropdown-toggle " >题解</a></li>
                <li class=""><a href="lishidanmu.jsp">讨论区</a></li>
                <li class=""><a href="danmu.jsp">吐槽</a></li>
            </ul>
       
    

            <ul class="nav navbar-nav navbar-right">
                
                <c:if test="${user==null}">
				    <li>
                        <a href="login.html" >登录/注册</a>
                    </li>
	
				</c:if>
				
				<c:if test="${user!=null}">
				    <li>
                        <a href="personal_iCoding.jsp">用户:${user.username}</a>
                    </li>
                    <li>
            			 <a href="exit?myurl=index.jsp">退出登录</a>
            		</li>
	
				</c:if>
			
    
            </ul>
            
            
        </div>
    </div>
</nav>


<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	<div class="modal-dialog" style="width: 85%; max-width: 350px;">
			<div class="modal-content">
				<div class="modal-header" align="center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
                    <span class = "acwing-brand">iCoding</span>
				</div>

                <!-- Begin # DIV Form -->
                <div id="div-forms">

                    <!-- Begin # Login Form -->
                    <form class="sign-form" id="login-form" role="form" action="/user/account/signin/" method="post" enctype="multipart/form-data">
                        <input type='hidden' name='csrfmiddlewaretoken' value='IG5UDgRNYmpgD1epmb1pW5fwde8Hgk1BeQGuxxyVCqFA6aAKrEzW0SfS9aMgn1Em' />
		                <div class="modal-body">
				    		<div id="div-login-msg">
                                <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-login-msg">请输入登录信息</span>
                            </div>
				    		<input id="login_username" name="username" class="form-control" type="text" placeholder="用户名或邮箱" maxlength="30" required>
				    		<input id="login_password" name="password" class="form-control" type="password" placeholder="密码" maxlength="16" required>
                            <div class="checkbox">
                                <label>
                                    <input id="login_remember_me" name="remember_me" type="checkbox" checked="checked"> 记住我
                                </label>
                            </div>
        		    	</div>
				        <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
                            </div>
                            <div>
                                <div style="width:50%;padding:0;margin:0;float:left;box-sizing:border-box;" align="left">
                                    <button id="login_lost_btn" type="button" class="btn btn-link">忘记密码</button>
                                </div>
                                <div style="width:50%;padding:0;margin:0;float:left;box-sizing:border-box;" align="right">
                                    <button id="login_register_btn" type="button" class="btn btn-link">注册</button>
                                </div>
                            </div>
				        </div>
                    </form>
                    <!-- End # Login Form -->

                    <!-- Begin | Lost Password Form -->
                    <form class="sign-form" id="lost-form" role="form" action="/user/account/password_forget/" method="post" enctype="multipart/form-data" style="display:none;" >
                        <input type='hidden' name='csrfmiddlewaretoken' value='IG5UDgRNYmpgD1epmb1pW5fwde8Hgk1BeQGuxxyVCqFA6aAKrEzW0SfS9aMgn1Em' />
    	    		    <div class="modal-body">
		    				<div id="div-lost-msg">
                                <div id="icon-lost-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-lost-msg">请输入绑定的邮箱地址</span>
                            </div>
		    				<input id="lost_email" name="email" class="form-control" type="email" placeholder="邮箱地址" maxlength="254" required>
            			</div>
		    		    <div class="modal-footer">
                            <div>
                                <button type="submit" id="lost_password_btn" class="btn btn-primary btn-lg btn-block">发送</button>
                            </div>
                            <div>
                                <div style="width:50%;padding:0;margin:0;float:left;box-sizing:border-box;" align="left">
                                    <button id="lost_login_btn" type="button" class="btn btn-link">登录</button>
                                </div>
                                <div style="width:50%;padding:0;margin:0;float:left;box-sizing:border-box;" align="right">
                                    <button id="lost_register_btn" type="button" class="btn btn-link">注册</button>
                                </div>
                            </div>
		    		    </div>
                    </form>
                    <!-- End | Lost Password Form -->

                    <!-- Begin | Register Form -->
                    <form class="sign-form" id="register-form" role="form" action="/user/account/signup/" method="post" enctype="multipart/form-data" style="display:none;">
                        <input type='hidden' name='csrfmiddlewaretoken' value='IG5UDgRNYmpgD1epmb1pW5fwde8Hgk1BeQGuxxyVCqFA6aAKrEzW0SfS9aMgn1Em' />
            		    <div class="modal-body">
		    				<div id="div-register-msg">
                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-register-msg">请输入注册信息</span>
                            </div>
		    				<input id="register_username" name="username" class="form-control" type="text" placeholder="用户名" maxlength="30" required>
                            <input id="register_password" name="password" class="form-control" type="password" placeholder="密码" maxlength="16" required>
                            <input id="register_email" name="email" class="form-control" type="email" placeholder="邮箱地址" maxlength="50" required>
            			</div>
		    		    <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">注册</button>
                            </div>
                            <div align="right">
                                <button id="register_login_btn" type="button" class="btn btn-link">登录</button>
                            </div>
		    		    </div>
                    </form>
                    <!-- End | Register Form -->

                </div>
                <!-- End # DIV Form -->

			</div>
		</div>
	</div>
    <!-- END # MODAL LOGIN -->





    <div class="row banner">
        <div class="col-xs-12 banner-title">
            <h1 class="text-center">
                iCoding
            </h1>
            <p class="text-center">
                一个专属于程序员的平台
                <br>
                为大家在漫漫的刷题之旅中，提供最优质的服务
            </p>
        </div>
    </div>

    <div class="container">
        <div class="row wrapper">
            <div class="col-xs-12 wrapper-title">
                <h1 class="text-center">
                    服务
                </h1>
                <h3 class="text-center">
                    为了提供更人性化的帮助，我们将服务分为四个主要方面：
                </h3>
            </div>
            <div class="col-xs-offset-2 col-xs-8 col-sm-offset-0 col-sm-6">
                <a href="questionAnsBank.jsp" style="text-decoration:none">
                    <div class="panel panel-default wrapper-activity">
                        <div class="panel-body">
                            <div class="text-center">
                                <span class="glyphicon glyphicon-book wrapper-icon"></span>
                                <p class="wrapper-icon-title">题解</p>
                                <p class="wrapper-icon-content">
                                    我们会针对目前流行的在线编程网站，提供优质的题解。同时您也可以发布自己的题解。
                                </p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xs-offset-2 col-xs-8 col-sm-offset-0 col-sm-6">
                <a href="questionBank.jsp" style="text-decoration:none">
                    <div class="panel panel-default wrapper-activity">
                        <div class="panel-body">
                            <div class="text-center">
                                <span class="glyphicon glyphicon-file wrapper-icon"></span>
                                <p class="wrapper-icon-title">题库</p>
                                <p class="wrapper-icon-content">
                                    我们针对不同算法，提供了标准程序模板。同时您可以发布、浏览、评论与编程相关的技术分享。
                                </p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xs-offset-2 col-xs-8 col-sm-offset-0 col-sm-6">
                <a href="lishidanmu.jsp" style="text-decoration:none">
                    <div class="panel panel-default wrapper-activity">
                        <div class="panel-body">
                            <div class="text-center">
                                <span class="glyphicon glyphicon-paperclip wrapper-icon"></span>
                                <p class="wrapper-icon-title">问答</p>
                                <p class="wrapper-icon-content">
                                    如果您在平时的生活中，遇到任何与编程相关的问题，都可以在这里提问。同时您也可以为其他人提供解答。
                                </p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xs-offset-2 col-xs-8 col-sm-offset-0 col-sm-6">
                <a href="danmu.jsp" style="text-decoration:none">
                    <div class="panel panel-default wrapper-activity">
                        <div class="panel-body">
                            <div class="text-center">
                                <span class="glyphicon glyphicon-education wrapper-icon"></span>
                                <p class="wrapper-icon-title">吐槽</p>
                                <p class="wrapper-icon-content">
                                    我们会定期举办LeetCode等题库的刷题活动，大家可以相互督促，相互交流，讨论遇到的问题。
                                </p>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div class="row center-banner">
        <div class="col-xs-12 center-banner-title">
            <h1 class="text-center">
                iCoding
            </h1>
            <p class="text-center">
                我们会竭尽全力，为程序员打造专属于我们自己的平台
            </p>
        </div>
    </div>

<footer class="footer">
    <div class="container">
        <hr>
        <div class="row">
            <div class="col-sm-8 copyright">
                <span>
                    © 2018-2019 iCoding 506TJISE版权所有
                    &nbsp;|&nbsp;
                    津ICP备17053197号-1
                </span>
            </div>
            <div class="text-right col-sm-4 region-us">
                <div class="links">
                    <a href="/footer/contactus/">联系我们</a>
                    &nbsp;|&nbsp;
                    <a href="/footer/faq/">常见问题</a>
                </div>
            </div>
        </div>
    </div>
</footer>

<script>
    
        $(document).ready(function () {
            let $weixin_connect_link = $('#third_party_weixin_connect_link_base');
            $weixin_connect_link.attr("href", "/third_party/weixin/open_platform/login/apply_code/?source_url=/");
            if (typeof WeixinJSBridge === "object" && typeof WeixinJSBridge.invoke === "function") {
                callback();
            } else {
                if (document.addEventListener) {
                    document.addEventListener("WeixinJSBridgeReady", callback, false);
                } else if (document.attachEvent) {
                    document.attachEvent("WeixinJSBridgeReady", callback);
                    document.attachEvent("onWeixinJSBridgeReady", callback);
                }
            }
            function callback() {
                $weixin_connect_link.attr("href", "/third_party/weixin/open_platform/login/apply_code/1/?source_url=/");
            }
        });
    
    window.onbeforeunload = function (ev) {
        let notify = false;
        for (let i = 0; i < onbeforeunload_functions.length; i ++ ){
            let ret = onbeforeunload_functions[i]();
            if (ret){
                notify = true;
            }
        }
        if (notify){
            return true;
        }
    };
    let CLICK_URL = "/status/count/click/";
</script>
<script src="https://cdn.acwing.com/static/web/js/status/click.js"></script>
</body>
</html>