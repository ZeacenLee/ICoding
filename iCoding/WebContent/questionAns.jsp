<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="keywords" content="AcWing,题解,模拟">
		<meta name="description" content="### 算法">
		<meta name="baidu-site-verification" content="UW1SBiMHO7">
		<meta name="google-site-verification" content="YTgbOq_0TDShJS6KTcUYCQoAAZTm308SJ7ibsafBD_Y">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>AcWing&nbsp;- AcWing</title>

		<link rel="shortcut icon" type="image/png" href="https://cdn.acwing.com/static/web/img/favicon.ico">
		<link rel="stylesheet" href="https://cdn.acwing.com/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/signform.css">
		<link rel="stylesheet" href="https://cdn.acwing.com/static/jquery-ui-dist/jquery-ui.min.css">

		<script>
			let onbeforeunload_functions = [];
		</script>

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
				background: white url("https://cdn.acwing.com/static/web/img/background.png");
			}
		</style>

		<link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/style.css">


		<link rel="stylesheet" href="https://cdn.acwing.com/static/plugins/css/semantic.min.css">
		<link rel="stylesheet" href="https://cdn.acwing.com/static/plugins/css/resizable.min.css">
		<link rel="stylesheet" href="https://cdn.acwing.com/static/martor/css/martor.min.css">

		<link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/martor.css">

		<link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/popover.css">
		<link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/community/content.css">
		<link rel="stylesheet" href="https://cdn.acwing.com/static/plugins/css/ace.min.css">
	</head>
	<body id="acwing_body">
		<div id="MathJax_Message" style="display: none;"></div>
		<nav class="navbar navbar-inverse">
			<div class="container">

				<!-- Header -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>

					</button>
					<a class="navbar-brand" href="/">iCoding</a>
				</div>

				<!-- Items -->
				<div class="collapse navbar-collapse" id="topNavBar">
					<ul class="nav navbar-nav">
						<li class=""><a href="index.jsp">首页</a></li>
						<li class=""><a href="questionAnsBank.jsp">题库</a></li>
						<li>
							<a href="#" class="dropdown-toggle active" data-toggle="dropdown">
								题解
							</a>
							<ul class="dropdown-menu">
								<li><a href="/solution/leetcode/">LeetCode</a></li>
								<li><a href="/solution/acwing/">AcWing</a></li>
							</ul>
						</li>
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

		<div class="container">
			<div class="row">
				<div class="col-xs-offset-0 col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-2 col-md-9">

					<div class="panel panel-default copy-with-link">
						<div class="panel-body">

							<h2>
								iCoding&nbsp;&nbsp;<b>${tit}</b> 
								&nbsp;&nbsp;

								&nbsp;&nbsp;
								<span class="label label-success round" style="font-size:12px;font-weight: normal;">简单/中等/复杂</span>
							</h2>

							<div style="color: #999999; font-size:14px;">
								作者：<b>${author}</b>
								<a>
									<span style="font-size: 18px;"> </span>
								</a>
							</div>

							<hr style="margin-bottom: 10px;">
							<div class="row">
								<div class="col-xs-11 vote_cut">
									<div class="main-martor main-martor-content" data-field-name="content">
										<div class="section-martor">
											<div class="ui bottom attached tab active martor-preview" data-tab="preview-tab-content">
												<h3>问题简述</h3>
												<h5>${ des }</h5>
												<br></br>
												<!-- <p>分析</p>-->
												<h4>代码</h4>
												<pre><b>${code}</b></pre>
											</div>
										</div><!-- end  /.section-martor -->
									</div>
								</div>
							</div>
							<br>
							<hr style="margin: 10px 0 10px 0;">
							<div>

								<a href="xxxx">
									上一篇：xxxx
								</a>

								<br><br>

								<a href="xxxx">
									下一篇：xxxx
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-offset-0 col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-2 col-md-9">
				</div>
			</div>
	</body>
</html>