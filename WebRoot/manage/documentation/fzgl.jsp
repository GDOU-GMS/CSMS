<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- AUI Documentation -->

<!DOCTYPE html>
<html>
<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Fides Admin</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicons -->

		<link rel="stylesheet" href="css/bootstrap.min.css">

		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/icons/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/icons/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/icons/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="assets/images/icons/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="assets/images/icons/favicon.png">

		<!--[if lt IE 9]>
          <script src="assets/js/minified/core/html5shiv.min.js"></script>
          <script src="assets/js/minified/core/respond.min.js"></script>
        <![endif]-->

		<!-- Fides Admin CSS Core -->

		<link rel="stylesheet" type="text/css" href="assets/css/minified/aui-production.min.css">

		<!-- Theme UI -->

		<link id="layout-theme" rel="stylesheet" type="text/css" href="assets/themes/minified/fides/color-schemes/dark-blue.min.css">

		<!-- Fides Admin Responsive -->

		<link rel="stylesheet" type="text/css" href="assets/themes/minified/fides/common.min.css">

		<link id="theme-animations" rel="stylesheet" type="text/css" href="assets/themes/minified/fides/animations.min.css">

		<link rel="stylesheet" type="text/css" href="assets/themes/minified/fides/responsive.min.css">

		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/DialogBySHF.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- Fides Admin JS -->

		<script type="text/javascript" src="assets/js/minified/aui-production.min.js"></script>

		<script type="text/javascript" src="assets/js/minified/core/raphael.min.js"></script>
		<script type="text/javascript" src="assets/js/minified/widgets/charts-justgage.min.js"></script>

		<script type="text/javascript" src="assets/js/DialogBySHF.js"></script>
		<!--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>-->
		<script src="js/bootstrap.min.js"></script>
		<!-- <script src="js/jquery.min.js"></script>-->
		<!-- 自定义的js函数 -->
		<script>
			function addUser(){
			$.DialogBySHF.Dialog({ Width: 650, Height: 500, Title: "添加", URL: 'addUser.jsp' });
			}
			function deleteUser(){
			 /*$.DialogBySHF.Confirm({ Width: 350, Height: 200, Title: "提示信息", });*/
			$.DialogBySHF.Dialog({ Width: 350, Height: 200, Title: "删除用户", URL: 'confirm.jsp' });
		        
			}
			function updateUser(){
			 /*$.DialogBySHF.Confirm({ Width: 350, Height: 200, Title: "提示信息", });*/
			$.DialogBySHF.Dialog({ Width: 650, Height: 500, Title: "更新用户", URL: 'updateUser.jsp' });
		        
			}
		</script>

	</head>
<body>
	<!--<div class="rm-from-production">
		<script type="text/javascript"
			src="../_assets/syntax-highlighter/scripts/shCore.js"></script>
		<script type="text/javascript"
			src="../_assets/syntax-highlighter/scripts/shBrushPhp.js"></script>
		<link type="text/css" rel="stylesheet"
			href="../_assets/syntax-highlighter/styles/shCoreDefault.css">
		<script type="text/javascript">
			SyntaxHighlighter.all();
		</script>
	</div>

	<div id="loading"
		class="ui-front loader ui-widget-overlay bg-white opacity-100">
		<img src="assets/images/loader-dark.gif" alt="">
	</div>-->

				
	
		
		
		
			<div id="page-title">

				<h3>
					Welcome to 辅助管理 <small></small>
				</h3>

			</div>
			<!-- #page-title -->
			<div id="page-content">

				<!-- 主要表格 -->
				<!-- 表格 -->
				<div class="example-box">
					<div class="example-code">
						<form action="" method="">
							<div class="form-row">
								
								<div class="form-label col-md-1 labelstyle"
									style="margin-left: 30px; width:100px;">
									<label for="">旧密码: </label>
								</div>
								<div 
									class="form-input col-md-3 textstyle">
									<input type="text" style="width:200px;height:28px;" name="" id="">
								</div>

							</div>
							<div class="form-row">
								
								<div class="form-label col-md-1 labelstyle"
									style="margin-left: 30px;width:100px;">
									<label for="">新密码: </label>
								</div>
								<div 
									class="form-input col-md-3 textstyle">
									<input type="text" style="width:200px;height:28px;" name="" id="">
								</div>

							</div>
							<div class="form-row">
								<div class="form-label col-md-1 labelstyle"
								style="margin-left: 30px;width:100px;">
									<label for="">确认新密码: </label>
								</div>
								<div class="form-input col-md-3" >
									<input  type="text"style="width:200px;height:28px;" name=""id="">
								</div>
								<!-- <a href="#" class="btn medium primary-bg"
									style="margin-left:10px;" title=""> <span
									class="button-content">确认</span> </a> -->
								<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">确定</span></button>
								
							</div>
							<div>


								<!--  <a href="#" class="btn medium ui-state-default" title="">
					            <span class="button-content">取消</span>
					        	</a> -->
							</div>
						</form>
					</div>
					

				</div>


			</div>
			<!-- #page-content -->
		

</body>
</html>


