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
    <title>题库</title>
    
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
            background-image: linear-gradient(rgba(206, 27, 40, 0.25), rgba(206, 27, 40, 0.25)), url(img/background.jpg);
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        
    </style>
    <script type="text/javascript" src="jquery.js"></script>
    <!--ajax-->
<script>
	$(function(){	
			var question = "question";
			$.ajax({
				url:"getPage?currentPage="+1+"&type="+question,
				type:"post",
				data:{},
				dataType:"json",
				success:function(dataJson){	
					var $tbody = $(".questionContent");
					$tbody.empty();
					var queList = dataJson.queList;
					var question = "question";
					for(i=0;i<queList.length;i++)
					{
						var $tr = $("<tr></tr>");
						$tr.html(
								"<td></td>"+
                        		 "<td><span style='color: grey;'>"+queList[i].qid+"</span></td>"+
                        		 "<td><a href='getquestionByid?id="+queList[i].qid+"&type="+question+"'>"+queList[i].questionTitle+"</a></td>"+
                        		 "<td><span style='color: grey;'>简单</span></td>"+
                        		 "<td><span class='label label-success round'>100%</span></td>"
                        		);
                        $tbody.append($tr);
						
					}
					var maxPage = dataJson.pageNum;
					var $li = $(".flag");
					for(var i=maxPage;i>0;i--)
					{
						var $myli = $("<li class='#' id='"+i+"'></li>");
						$myli.html(
									"<a href = '#'>"+i+"</a>"
									);
						$myli.click(function(){
							
							changePage( $(this).text() );
							
						});
						$li.after($myli);
						
					}
					$("#1").attr("class","active");
					$("#page_sta").click(function(){
						changePage( 1 );
					});
					$("#page_end").click(function(){
						changePage( maxPage );
					});
				}
				
			});
			
		
			$("#searchbutton").click(function(){
				
				$.ajax({
					url:"searchServlet?curpage="+1,
					type:"post",
					data:{
						"searchContent":$("#search_content").val()
					},
					dataType:"json",
					success:function(dataJson)
					{
						var $tbody = $(".questionContent");
						$tbody.empty();
						var queList = dataJson.queList;
						var question = "question";
						for(i=0;i<queList.length;i++)
						{
							var $tr = $("<tr></tr>");
							$tr.html(
									"<td></td>"+
	                        		 "<td><span style='color: grey;'>"+queList[i].qid+"</span></td>"+
	                        		 "<td><a href='getquestionByid?id="+queList[i].qid+"&type="+question+"'>"+queList[i].questionTitle+"</a></td>"+
	                        		 "<td><span style='color: grey;'>简单</span></td>"+
	                        		 "<td><span class='label label-success round'>100%</span></td>"
	                        		);
	                        $tbody.append($tr);
							
						}
						var lastmaxpage = ${maxpage};
						for(var i=1;i<=lastmaxpage;i++)
						{
							$("#"+i+"").remove();
						}
						var $li = $(".flag");	
						var $myli = $("<li class='#' id='1'></li>");
						$myli.html(
									"<a href = '#'>1</a>"
								  );
						$li.after($myli);
						$("#1").attr("class","active");
					}
				});
			});
			
		});

	function changePage(num)
	{
		var question = "question";
		$.ajax({
			url:"getPage?currentPage="+num+"&type="+question,
			type:"post",
			data:{},
			dataType:"json",
			success:function(dataJson){	
				var $tbody = $(".questionContent");
				$tbody.empty();
				var queList = dataJson.queList;
				var question = "question";
				for(i=0;i<queList.length;i++)
				{
					var $tr = $("<tr></tr>");
					$tr.html(
							"<td></td>"+
                    		 "<td><span style='color: grey;'>"+queList[i].qid+"</span></td>"+
                    		 "<td><a href='getquestionByid?id="+queList[i].qid+"&type="+question+"'>"+queList[i].questionTitle+"</a></td>"+
                    		 "<td><span style='color: grey;'>简单</span></td>"+
                    		 "<td><span class='label label-success round'>100%</span></td>"
                    		);
                    $tbody.append($tr);
					
				}
				for(var j=1;j<=dataJson.pageNum;j++)
				{
					$("#"+j+"").attr("class","#");
				}
				$("#"+num+"").attr("class","active");
				
			}
				
		});	
		
		
	}
</script>
    
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
                <li class=" active "><a href="#">题库</a></li>
                <li>
                    <a href="questionAnsBank.jsp" >
                        题解
                    </a>
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
        <div class="panel panel-default">
            <div class="panel-body">
                    <h1 class="text-center">iCoding题库</h1>
				<br>
				
				<div class="row">
                    <div class="col-xs-12 col-sm-10 col-md-6 col-sm-offset-1 col-md-offset-3">
                        
                            <div class="input-group">
                              <input type="text" id="search_content" class="form-control" placeholder="搜索题号、标题、标题关键字" style="border-radius: 5px;" maxlength="150">
                              <span class="input-group-btn">
                                <button id ="searchbutton" type="submit" style="border-radius: 5px;">
                                    &nbsp;&nbsp;<span class="glyphicon glyphicon-search" style="font-size: 17px;"></span>
                                </button>
                              </span>
                            </div>
                        
                    </div>
                </div>
                <hr>
                <div class="table-responsive">
                    <table class="table table-striped table-responsive">
                        <thead>
                            <tr>
                                <th></th>
                                <th>#</th>
                                <th>标题</th>
                                <th>难度</th>
                                <th>通过率</th>
                            </tr>
                        </thead>

                        <tbody class="questionContent">
 
                        </tbody>
                    </table>
                </div>
                <div align="right">
                    <ul class="pagination">
                        <li class = "flag"><a name="page_turning" id="page_sta" href="#">&laquo;</a></li>
                        
                            
                        
                            <!--<li class="">
                                <a name="page_turning" id="page_2" href="/problem/2/">2</a>
                            </li>
                        
                            <li class="">
                                <a name="page_turning" id="page_3" href="/problem/3/">3</a>
                            </li>
                        
                            <li class="">
                                <a name="page_turning" id="page_4" href="/problem/4/">4</a>
                            </li>
                        
                            <li class="">
                                <a name="page_turning" id="page_5" href="/problem/5/">5</a>
                            </li>-->
                        
                        <li><a name="page_turning" id="page_end" href="#">&raquo;</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


<script>
    
        $(document).ready(function () {
            let $weixin_connect_link = $('#third_party_weixin_connect_link_base');
            $weixin_connect_link.attr("href", "/third_party/weixin/open_platform/login/apply_code/?source_url=/problem/");
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
                $weixin_connect_link.attr("href", "/third_party/weixin/open_platform/login/apply_code/1/?source_url=/problem/");
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