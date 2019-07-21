<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<html lang="zh-CN">
	<head>
	    <meta charset="UTF-8">
	    <meta name="keywords" content="题解,编程,算法"/>
	    <meta name="description" content="一个专属于程序员的平台，为大家在漫漫的刷题之旅中，提供最优质的解答"/>
	    <meta name="baidu-site-verification" content="UW1SBiMHO7" />
	    <meta name="google-site-verification" content="YTgbOq_0TDShJS6KTcUYCQoAAZTm308SJ7ibsafBD_Y" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	    <title>iCoding题库</title>
	    
	    <link rel="shortcut icon" type="image/png" href="https://cdn.acwing.com/static/web/img/favicon.ico"/>
	    <link rel="stylesheet" href="https://cdn.acwing.com/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	    <link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/signform.css">
	    <link rel="stylesheet" href="https://cdn.acwing.com/static/jquery-ui-dist/jquery-ui.min.css">
	    <link rel="stylesheet" type="text/css" href="css/problems.css"/>
	    
	    
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
	    <!-- by宇哥 -->
	    <link rel="stylesheet" type="text/css" href="codemirror/lib/codemirror.css"/>
		<script type="text/javascript" src="codemirror/lib/codemirror.js"></script>
		<script type="text/javascript" src="jquery.js"></script>
		
		<script type="text/javascript" src="codemirror/mode/javascript/javascript.js"></script>
		<script type="text/javascript" src="codemirror/mode/clike/clike.js"></script>
		<script type="text/javascript" src="codemirror/mode/python/python.js"></script>
		
		<link rel="stylesheet" type="text/css" href="codemirror/theme/abcdef.css"/>
		<link rel="stylesheet" type="text/css" href="codemirror/theme/3024-day.css"/>
		<link rel="stylesheet" type="text/css" href="codemirror/theme/erlang-dark.css"/>
		<link rel="stylesheet" type="text/css" href="codemirror/addon/hint/show-hint.css"/>
		
		<script type="text/javascript">
			
			
			$(function(){
				var editor = CodeMirror.fromTextArea(document.getElementById('my_code'),{
					lineNumbers: true,
					mode:"clike",
					lineWrapping:true,
					matchBrackets:true,
				});
				$("#select_theme").change(function(){
					var theme = $(this).val();
					editor.setOption("theme",theme);
				});
				$("#select_dome").change(function(){
					var mode = $(this).val();
					var my_code = editor.getValue();
					if(mode=="c/c++")
					{
						editor.setOption("mode","clike");
						editor.setValue();
					}
					else
					{
						editor.setOption("mode",mode);
						editor.setValue();
					}
				});
				
				
				$("#scbutton").click(function(){
					
					$.ajax({
						url:"SaveCode",
						type:"post",
						dataType:"json",
						data:{
							"qid" : "${qid}",
							"questionTitle" : "${tit}",
							"code" : editor.getValue(),
							"codeType" : "cpp",
							"uid" : "${user.uid}"
						},
						success:function(dataJson){
							if(dataJson=="noUser"){
								window.open("login.html","_self");
							}
							else
							{
								alert(dataJson);
							}
						}
					});
					
			
				
				
			});
		
		
		
		
		<!-- by宇哥 -->	
	    
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
	            background-image: linear-gradient(rgba(206, 27, 40, 0.25), rgba(206, 27, 40, 0.25)), url(img/background.jpg);
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
	                <li ><a href="index.jsp">首页</a></li>
	                <li class="active "><a href="questionBank.jsp">题库</a></li>
	                <li>
	                    <a href="#" class="dropdown-toggle " data-toggle="dropdown">
	                        题解
	                        <b class="caret"></b>
	                    </a>
	                    <ul class="dropdown-menu">
	                        <li><a href = "index.jsp">iCoding</a></li>
	                    </ul>
	                </li>
	               
	                <li class=""><a href="lishidan.jsp">讨论区</a></li>
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
	    <div class="panel panel-default">
	        <div class="panel-body">
	            <div class="nice_font problem-content-title">
	                <h2><b>${ qid }</b>.<b>${ tit }</b></h2>
	            </div>
	            <ul class="nav nav-tabs">
	                <li role="presentation" class="active">
	                    <a class="problem-content-sub-btn" href="#" style="padding-left: 30px; padding-right: 30px;">
	                        <span class="glyphicon glyphicon-list-alt" style="top: 4px;"></span>
	                        &nbsp;
	                        题目
	                    </a>
	                </li>
	            </ul>
	            <br>
	            
	    <div class="row">
	        <div class="col-sm-9 col-xs-12">
	            <div class="main-martor main-martor-content" data-field-name="content">
	                <div class="section-martor">
	                    <div class="ui bottom attached tab active martor-preview" data-tab="preview-tab-content">
	                      <!--题目内容  -->
	                      	<h4 class="tit"><b>题目内容</b></h4>
	                      	<p>${des}</p>
							<h4 class="format_in"><b>输入格式</b></h4>
							<p>${format_in}</p>
							<h4 class="formit_out"><b>输出格式</b></h4>
							<p>${ format_out }</p>
							<h4><b>样例输入：</b></h4>
							<pre class="example_in"><code>${ example_in }
							</code></pre>
	
							<h4 class="example_out"><b>样例输出：</b></h4>
							<pre class="hljs"><code>${ example_out }
						</code></pre>
	                    
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <hr>
	    
	<div id="code_tool_bar">
	    <div class="controls" style="float: right; margin: 8px 10px 0 10px;">
			<select id='select_dome' style="height: 40px; width: 100px;">
				<option selected>c/c++</option>
				<option>python</option>
				<option>javascript</option>
			</select>
		</div>
	    <div class="controls" style="float: right; margin: 8px 10px 0 10px;">
			<select id='select_theme' style="height: 40px; width: 100px;">
				<option selected>default</option>
				<option>3024-day</option>
				<option>erlang-dark</option>
				<option>abcdef</option>
			</select>
		</div>
	</div>
	
	<!-- by宇哥 -->
	<div id="code_div" >
		<textarea id="my_code" ></textarea>
	</div>
	<!-- by宇哥 -->
	    <div>
	        <button id ="scbutton" class="btn btn-success" data-toggle="modal" data-target="#login-modal" style="float: right; border-radius: 20px; margin: 20px 0 0 20px;">
	            <span class="glyphicon glyphicon-cloud-upload" style="top: 1px;"></span>
	            &nbsp;
	            提交代码
	            &nbsp;
	        </button>
	        <button class="btn btn-default" data-toggle="modal" data-target="#login-modal" style="float: right; border-radius: 20px; margin: 20px 0 0 0;">
	            <span class="glyphicon glyphicon-play-circle" style="top: 2px;"></span>
	            &nbsp;
	            运行代码
	            &nbsp;
	        </button>
	    </div>
	
	
	        </div>
	    </div>
	</div>

	
	</body>
	</html>