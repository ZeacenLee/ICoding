<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>弹幕演示</title>
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
            background: white url("img/icon-1379228_960_720.png");
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
            background-image: linear-gradient(rgba(206, 27, 40, 0.25), rgba(206, 27, 40, 0.25)), url(img/color-code-1875543__340.png);
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        
    </style>
<style type="text/css">    
html,body{
    margin:0px;
    padding:0px;
    width: 100%;
    height:100%;
    font-family: "微软雅黑";
    font-size: 62.5%;
    background: #ccc;
    }   
.boxDom {
    width:100%;        
    height: 100%;        
    position: relative;        
    overflow: hidden;    
}    
.idDom {
    width: 100%;        
    height: 60px;        
    background: #666;        
    position: fixed;        
    bottom: 0px;    
}    
.content {
    display: inline-block;        
    width:430px;        
    height: 40px;        
    position: absolute;        
    left: 0px;        
    right: 0px;        
    top:0px;        
    bottom:0px;        
    margin:auto;    
}    
.title {        
    display: inline;        
    font-size: 4em;        
    vertical-align:bottom;       
    color:#fff;    
}    
.text {
    border:none;        
    width:300px;        
    height: 30px;        
    border-radius: 5px;        
    font-size: 2.4em;    
}    
.btn {        
    width:60px;        
    height: 30px;        
    background-color: #4CAF50;        
    border:none;        
    color:white;        
    font-size: 2.4em; 
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    border-radius: 15px;
       
}    
.string {        
    width:300px;        
    height: 40px;        
    position: absolute;        
    overflow: hidden;        
    color:#000;        
    font-size: 4em;        
    line-height: 1.5em;        
    cursor: pointer;        
    white-space:nowrap;    
}
.button2:hover {
background-color: #008CBA;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button2:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>

<body>
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
                <li class=""><a href="index.jsp">首页</a></li>
                <li class=""><a href="questionBank.jsp">题库</a></li>
                <li> <a href="questionAnsBank.jsp" class="dropdown-toggle " >题解</a></li>
                <li class=""><a href="lishidanmu.jsp">讨论区</a></li>
                <li class="active "><a href="danmu.jsp">吐槽</a></li>
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

<div class="boxDom" id="boxDom">    
    <div class="idDom" id="idDom">        
        <div class="content">            
            <p class="title">吐槽:</p>            
            <input type="text" class="text" id="text" />  
            <span id="spandate"></span>          
            <button type="button" class="btn button2" id="btn">发射</button>       
        </div>
            
    </div>
</div>
</body>



<script  src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>

<script >   
$(function(){        
   
    var pageW=parseInt($(document).width());        
    var pageH=parseInt($(document).height());        
    var boxDom=$("#boxDom");        
    var btnDom=$("#btn");        
    var Top,Right;        
    var width;        
    width=pageW;        
    var colorArr=["#cfaf12","#12af01","#981234","#adefsa","#db6be4","#f5264c","#d34a74"];         
    //btnDom.bind("click",auto);        
    document.onkeydown=function(e){            
        if(e.keyCode == 13){                
            auto();            
        }        
    }        
    
    
function autoa(text){       
    	
    	
        var creSpan=$("<span class='string'></span>");            
        //var text=$("#text").val();            
        creSpan.text(text);            
                    
        Top=parseInt(pageH*(Math.random()));            
        var num=parseInt(colorArr.length*(Math.random()));            
        if(Top>pageH-90){                
            Top=pageH-90;            
        }            
        creSpan.css({"top":Top,"right":-300,"color":getRandomColor()});            
        boxDom.append(creSpan);
        var spanDom=$("#boxDom>span:last-child");            
        spanDom.stop().animate({"right":pageW+300},10000,"linear",function(){                        
            $(this).remove();                    
        });  
        
        
    }       
    
    
    
    function auto(){       
    	
    	
        var creSpan=$("<span class='string'></span>"); 
        
        var text=$("#text").val();      
        
        creSpan.text(text);            
              
        Top=parseInt(pageH*(Math.random()));            
        var num=parseInt(colorArr.length*(Math.random()));            
        if(Top>pageH-90){                
            Top=pageH-90;            
        }            
        creSpan.css({"top":Top,"right":-300,"color":getRandomColor()});            
        boxDom.append(creSpan);
        var spanDom=$("#boxDom>span:last-child");            
        spanDom.stop().animate({"right":pageW+300},10000,"linear",function(){                        
            $(this).remove();                    
        });        
    }       
    
    function getRandomColor(){            
        return '#' + (function(h){                
            return new Array(7 - h.length).join("0") + h            
        })((Math.random() * 0x1000000 << 0).toString(16));        
    }
   
    var sid ="";
    
    $.ajax({
		   url:"getlishidanmuServlet",
		   type:"post",
		   dataType:"json",
		   data:{
			   
		   },
		   success:function(jsondata){
			   sid = setInterval(function(){
				 test(jsondata);  
			   },300);	
			
		   }
	   });
    var i = 0;
    function test(jsondata){
    	if(i >= jsondata.length){
    		i = 0;
    		clearInterval(sid);
    	}
    	autoa(jsondata[i].barrage);
    	i++;
    }

    $("button").click(function(){
            
   
    	
            $.ajax({
                    url:"getBarrage",
                    type:"post",
                    dataType:"json",
                    data:{
                           
                           "tet":$("#text").val(),
                           "Bguser":"${user.username}"
                    },
                    success:function(dataJson){
                    }		
           });
            auto();
            
            $("#text").val("");
         });
});
   
         
</script>

</html>
