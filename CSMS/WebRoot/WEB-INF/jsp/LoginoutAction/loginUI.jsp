<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- AUI Documentation -->
<!DOCTYPE html>
    <html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>登录</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Favicons -->

        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/manage/documentation/assets/images/icons/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/manage/documentation/assets/images/icons/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/manage/documentation/assets/images/icons/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/manage/documentation/assets/images/icons/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="${pageContext.request.contextPath }/manage/documentation/assets/images/icons/favicon.png">

        <!--[if lt IE 9]>
          <script src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/core/html5shiv.min.js"></script>
          <script src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/core/respond.min.js"></script>
        <![endif]-->

        <!-- Fides Admin CSS Core -->

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/assets/css/minified/aui-production.min.css">

        <!-- Theme UI -->

        <link id="layout-theme" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/assets/themes/minified/fides/color-schemes/dark-blue.min.css">

        <!-- Fides Admin Responsive -->

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/_assets/themes/fides/common.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/_assets/themes/fides/responsive.css">

        <!-- Fides Admin JS -->

        <script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/aui-production.min.js"></script>
		
		<script>
			//解决多个页面其中一个退出登录之后分帧页面出错的问题.
			if(window.parent != window)	{
				window.parent.location.href = window.location.href;
			}
		</script>
    </head>
    <body>
        <div class="rm-from-production">
            <script type="text/javascript" src="${pageContext.request.contextPath }/manage/_assets/syntax-highlighter/scripts/shCore.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath }/manage/_assets/syntax-highlighter/scripts/shBrushPhp.js"></script>
            <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/manage/_assets/syntax-highlighter/styles/shCoreDefault.css">
            <script type="text/javascript">SyntaxHighlighter.all();</script>
        </div>

        <div id="loading" class="ui-front loader ui-widget-overlay bg-white opacity-100">
            <img src="${pageContext.request.contextPath }/manage/documentation/assets/images/loader-dark.gif" alt="">
        </div>


        <div id="page-header" class="clearfix">
            <div id="header-logo"><img src="${pageContext.request.contextPath }/manage/documentation/images/toplogo.png"></div>
        </div> <!-- #page-header -->

<div class="row">

    <form action="${pageContext.request.contextPath }/loginout_login.do" id="login-validation" class="col-md-4 center-margin" method="post" onsubmit="return validate()">

        <div id="login-form" class="content-box form-vertical">
            <h3 class="content-box-header ui-state-default">
                <div class="glyph-icon icon-separator">
                    <i class="glyph-icon icon-user"></i>
                </div>
                <span>登  录</span>
            </h3>
            <div class="content-box-wrapper pad20A pad0B">
                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="login_email">
                            	登录名:
                            <span class="required">*</span>
                            <span style="color:red;margin-left:20px;" id="loginNameText"></span>
                        </label>
                    </div>
                    <div class="form-input col-md-10">
                        <div class="form-input-icon">
                            <i class="glyph-icon icon-envelope-o ui-state-default icon-user"></i>
                            <input placeholder="请输入您的登录账号" class="required"  onchange="removeLoginNameText()" type="text" name="loginName" id="loginName">
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-label col-md-2">
                        <label for="login_pass">
                            	密码：
                            <span class="required">*</span>
                            <span style="color:red;margin-left:20px;" id="passwordText"></span>
                        </label>
                    </div>
                    <div class="form-input col-md-10">
                        <div class="form-input-icon">
                            <i class="glyph-icon icon-unlock-alt ui-state-default"></i>
                            <input placeholder="请输入您的密码" class="required" onchange="removePassowrdText()" type="password" name="password" id="password">
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-checkbox-radio col-md-6">
                        <input type="checkbox" class="custom-checkbox" name="remember-password" id="remember-password">
                        <label for="remember-password" class="pad5L">记住密码?</label>
                    </div>
                    <div class="form-checkbox-radio text-right col-md-6">
                        <a href="#" class="toggle-switch"  title="Recover password" style="margin-left:120px;" onclick="alert('请联系管理员重置密码！')">忘记密码？</a>
                    </div>
                </div>
            </div>
            <div class="button-pane text-center">
                <button type="submit" class="btn large primary-bg text-transform-upr font-size-11" id="demo-form-valid">
                    <span class="button-content">
                        	登录
                    </span>
                </button>
            </div>
        </div>

        <div class="divider"></div>
    </form>

</div>

<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/js/jquery.min.js"></script>
<script type="text/javascript">
		//表单校验.
   		function validate(){
   			var loginName = $("#loginName").val();
   			var password = $("#password").val();
   			if(loginName == null || loginName ==""){
   				$("#loginNameText").text("登录名不能为空！");
   				return false;
   			}else if(password == null || password==""){
   				$("#passwordText").text("密码不能为空！");
   				return false;
   			}else {
   				return true;
   			}
   		}
		//移除提示
   		function removeLoginNameText(){
   			$("#loginNameText").text("");
   		}
		function removePassowrdText(){
			$("#passwordText").text("");
		}
</script>
    </body>
</html>
