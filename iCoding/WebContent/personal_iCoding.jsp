<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="baidu-site-verification" content="UW1SBiMHO7" />
    <meta name="google-site-verification" content="YTgbOq_0TDShJS6KTcUYCQoAAZTm308SJ7ibsafBD_Y" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>个人空间 - iCoding</title>
    
    <link rel="shortcut icon" type="image/png" href="https://cdn.acwing.com/static/web/img/favicon.ico"/>
    <link rel="stylesheet" href="https://cdn.acwing.com/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/signform.css">
    <link rel="stylesheet" href="https://cdn.acwing.com/static/jquery-ui-dist/jquery-ui.min.css">
    
        <link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/success_modal.css" />
    
    
        
            <link rel="stylesheet" href="https://cdn.acwing.com/static/web/css/wss/chat/chat_list.css">
        
    
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
            let chat_state = {
                chat_socket: "",
                me_id: "",
                now_host_id: "",
                last_record_time: "",
                total_online_friends: 0,
                unique_message_id: 0,

                code_editor: "",
                editor_type: 0,     // 1 for input-area;  2 for message history;
                editor_language: "",
                editor_save_code: "",
                editor_open_from: "",

                pulling_request_message: false,
                host_photo_urls: [],
                host_space_urls: [],
                host_usernames: [],
                host_messages: [],
                host_online_status: [],
                host_online_has_set_disconnected: [],
                host_last_record_time: [],
                host_messages_remains: [],
                host_unread_messages: [],
                total_unread_messages: 0,
                host_get_into_room_functions: [],

                search_user_url: "/http_wss/chat/search/",
                emoji_gif_data_url: "/http_wss/chat/gif_data/",
                emoji_gif_search_url: "/http_wss/chat/gif_search/",

                is_ready: false,
            };
            chat_state.host_photo_urls[6286] = "https://cdn.acwing.com/media/user/profile/photo/6286_md_2f34f9bc9d.jpg";
            chat_state.host_space_urls[6286] = "/user/myspace/index/6286/";
            chat_state.host_usernames[6286] = "";
            chat_state.host_messages_remains[6286] = 0;
            chat_state.me_id = 6286;
        </script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/utils.js"></script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/notification.js"></script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/chat.js"></script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/chat_list.js"></script>
        <script src="https://cdn.acwing.com/static/web/third_party/ace-builds/src-min-noconflict/ace.js"  type="text/javascript" charset="utf-8"></script>
        <script src="https://cdn.acwing.com/static/web/js/editor/utils.js"></script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/emoji-data.js"></script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/emoji.js"></script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/editor/code_editor.js"></script>
        <script src="https://cdn.acwing.com/static/web/js/wss/chat/editor/debug_code.js"></script>
    
    <script>
        let user_state = {
            is_authenticated: true,
            is_mobile: false,
        };
        if (user_state.is_authenticated){
            user_state.user_id = 6286;
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
    
        <link rel ="stylesheet" href="css/style.css">
		
		<link rel="stylesheet" href="css/homepage.css" />
    <script type="text/javascript" src="jquery.js"></script>
    
    
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
            <a class="navbar-brand" href="/">iCoding</a>
        </div>

        <!-- Items -->
        <div class="collapse navbar-collapse" id="topNavBar">
            <ul class="nav navbar-nav">
                <li class=""><a href="/about/">首页</a></li>
                <li class=""><a href="/problem/">题库</a></li>
                <li class=""><a href="/blog/">题解</a></li>
                 <li class=""><a href="lishidanmu.jsp">讨论区</a></li>
                <li class=""><a href="danmu.jsp">吐槽</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                
                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-bell" style="font-size: 20px;"></span>
                            
                        </a>
                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <strong id="id_user_username">${user.username}</strong>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href = "personal_iCoding.jsp">我的空间</a></li>
                            <li><a href = "modify.html">修改密码</a></li>
                            <li class = "divider"></li>
                            <li><a href="exit?myurl=index.jsp">退出登录</a></li>
                        </ul>
                    </li>
                
            </ul>
        </div>
    </div>
</nav>


<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	
	</div>
    <!-- END # MODAL LOGIN -->
        <div class="container">
            <div class="row">
    
            
                <div class="col-xs-4 col-sm-4 col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-body" align="center">
                            
                                <a href="/user/profile/index/">
                                    <img class="img-responsive center-block" src="https://cdn.acwing.com/media/user/profile/photo/6286_lg_2f34f9bc9d.jpg">
                                	<input id="ingredient_file" type="file" style="display: none;" name="photo" required="">
                                </a>
                            
                            <hr/>
                            <div class="caption">
                                <p class="personal-info text-center"><a href = "#">${user.username}</a></p>
                                <p class="personal-info text-center"></p>
                            </div>
                            <hr/>
                        </div>
                    </div>
                </div>
            
            
                <div class="col-xs-8 col-sm-8 col-md-9">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <ul class="nav nav-tabs" style="font-size: 17px;">
                            <li role="presentation" class="active">
                                <a href="#" class="user-myspace-base-subtitle dropdown-toggle" >
                                    题解
                                    <b class="caret"></b>
                                </a>
                            </li>
                            <li role="presentation">
                                <a href="pdanmu.jsp" class="user-myspace-base-subtitle dropdown-toggle" >
                                    我的弹幕
                                    <b class="caret"></b>
                                </a>
                            </li>
                        </ul>
                        <br>
                        
    
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>标题</th>
                    <th>难度</th>
                    <th>阅读</th>
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <td>1</td>
                        <td><a href="/solution/LeetCode/content/2730/">A+B</a></td>
                        <td><span class="label label-success round">简单</span></td>
                        <td>1</td>
                    </tr>
                
            </tbody>
        </table>
    
    <div align="right">
        <ul class="pagination">
            <li><a href="/user/myspace/solution/index/leetcode/6286/">&laquo;</a></li>
            
                <li class="active"><a href="/user/myspace/solution/index/leetcode/6286/1/">1</a></li>
            
            <li><a href="/user/myspace/solution/index/leetcode/6286/1/">&raquo;</a></li>
        </ul>
    </div>
    

                    </div>
                </div>
    </div>
    </div></div>
<script src="https://cdn.acwing.com/static/web/js/status/click.js"></script>
</body>
</html>