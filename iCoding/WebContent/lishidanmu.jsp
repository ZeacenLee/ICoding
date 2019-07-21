<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>历史弹幕</title>
<script src="js/jquery.js"></script>


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
<style type="text/css"></style>  
<style> 

.waterfall{
   margin-left:120px;
   margin-top:30px;
   -moz-column-count:4;
   -webkit-column-count:4;
   column-count:4;
   -moz-column-gap:1em;
   -webkit-column-gap:1em;
   column-gap:1em;
   width: 80%;
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
}



@keyframes myfirst
{
	from {background:red;}
	to {background:yellow;}
}

@-webkit-keyframes myfirst /* Safari and Chrome */
{
	from {background:red;}
	to {background:yellow;}
}

/*
.item{
     padding:1em;
     margin:0 0 1em 0;
     -moz-page-break-inside:avoid;
     break-inside:avoid;
     border:1px solid #000;
}


*/
</style>
<script>
       $(function(){
    	  
    	   showTime();
    	  showContext();
 
    	  
       });
       function showContext(){ 
    	   var $div = $(".waterfall");
    	   $.ajax({
    		   url:"getlishidanmuServlet",
    		   type:"post",
    		   dataType:"json",
    		   data:{},
    		   success:function(jsondata){
    			  
    			   for(var i=0;i<jsondata.length;i++){
    				   
    				   var $dv = $("<div></div>");
    				   var $dv2 = $("<div></div>");
    				   
    				   var $p1 = $("<p></p>");
    				   var $p2 =$("<p></p>");
    				   var $p3 =$("<p></p>");
    				   
    				   $p1.html(jsondata[i].barrage);
    				   $p2.html("发布者："+jsondata[i].bguser);
    				   $p3.html("时间："+jsondata[i].date);
    				   
    				   $p1.css({"list-style-type":"none","font-size":"16px","margin-top":"10px"});
    				   $p2.css({"font-size":"10px"});
    				   $p3.css({"font-size":"10px"});
    				   
    				   $div.append($dv);
    				 
    				   $dv.append($dv2);
    				   $dv.append($p1);
    				   
    				   $p1.append($p2);
    				   $p2.append($p3);
    				   
    				   $dv2.css({"background-image":"url("+image_url()+")","background-repeat": "no-repeat","width":"100%","height":"120px"});
    				  
    				   $dv.css({"break-inside":"avoid","border":"1px solid #000","-moz-page-break-inside":"avoid","padding":"1em","margin-top":"10px","margin":"0 0 1em 0","position":"relative","text-align":"center","box-shadow": "0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)"});
    				
    				   $dv.hover(function(){
    		   			   $(this).css("font-size","18px");
    		   			 
    		   		    });
    				   $dv.click(function(){
   					     $(this).hide();   
   		    		  });
    			   }

    		   }
    	   });
    	   	 
       }
     
       function checkTime(i){  //补位处理
    	     if(i<10){
    	         i="0"+i;
    	     } 
    	     return i;
    	  }
    	  function showTime(){ //时间显示函数
    	    var now=new Date(); //创建一个Date对象
    	    var year= now.getFullYear() ; //年
    	    var month=now.getMonth()+1 ; //月份（从0开始），所以+1
    	    var date= now.getDate()  ; //日（1-31）
    	    var day=now.getDay();  //星期（0-6）
    	    var h= now.getHours()  ; //小时（0-23）
    	    var m= now.getMinutes()  ;  //分钟（0-59）
    	    var s=  now.getSeconds()  ;  //秒
    	    m=checkTime(m) 
    	    s=checkTime(s)
    	    var weekday=new Array(7)  //星期数进一处理
    	    weekday[0]="星期日";
    	    weekday[1]="星期一";
    	    weekday[2]="星期二";
    	    weekday[3]="星期三";
    	    weekday[4]="星期四";
    	    weekday[5]="星期五";
    	    weekday[6]="星期六";
    	    document.getElementById("show").innerHTML=""+year+"年"+month+"月"+date+"日 "+ weekday[day] +h+":"+m+":"+s;
    	    t=setTimeout('showTime()',1000)  //设置定时器，每隔1s调用一次函数从而实现动态效果
    	  }
    	  
    	  function image_url(){//获取随机图片的路径方法
              var image_path = "imgs/";//定义背景图片的路径常量部分；
              var image_index =parseInt(Math.floor(Math.random()*20));//用random函数获取范围在0-75的随机数字并向下取整
                                                                      //转化成int数值类型
              return image_path+image_index+'.jpg';//利用字符串拼接返回图片路径
          }
</script>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container" style="font-color:#328c39">

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
                <li class=""><a href="questionBank.jsp">题库</a></li>
                <li> <a href="questionAnsBank.jsp" class="dropdown-toggle " >题解</a></li>
                <li class=" active "><a href="lishidanmu.jsp">讨论区</a></li>
                <li class=""><a href="danmu.jsp">吐槽</a></li>
                <li ><span  id="show" ></span></li>
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


 
<div class="waterfall">
  
</div>
   
   
   
   
</body>
</html>