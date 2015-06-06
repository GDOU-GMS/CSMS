<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!-- AUI Documentation -->

<!-- AUI Documentation -->
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Fides Admin</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicons -->

<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/images/icons/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/images/icons/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/images/icons/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/images/icons/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/icons/favicon.png">


<!--[if lt IE 9]>
          <script src="assets/js/minified/core/html5shiv.min.js"></script>
          <script src="assets/js/minified/core/respond.min.js"></script>
        <![endif]-->

<!-- Fides Admin CSS Core -->

<link rel="stylesheet" type="text/css"
	href="assets/css/minified/aui-production.min.css">

<!-- Theme UI -->

<link id="layout-theme" rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/color-schemes/dark-blue.min.css">

<!-- Fides Admin Responsive -->

<link rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/common.min.css">
<!-- <link rel="stylesheet" type="text/css" href="../_assets/themes/fides/common.css"> -->

<link id="theme-animations" rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/animations.min.css">

<link rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/responsive.min.css">

<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/DialogBySHF.css">

<!-- Fides Admin JS -->

<!--<script type="text/javascript"
	src="assets/js/minified/aui-production.min.js"></script>-->

<script type="text/javascript"
	src="assets/js/minified/core/raphael.min.js"></script>
<script type="text/javascript"
	src="assets/js/minified/widgets/charts-justgage.min.js"></script>


	
</head>
<body>
	
	
			<!-- #page-title -->
			<div id="page-content">

				<!-- 主要表格 -->
				<!-- 表格 -->
				<div class="example-box">
					<div class="example-code" style="margin-left:180px;">
						<form action="" method="">
							
						
								<!--  <a href="#" class="btn medium ui-state-default" title="">
					            <span class="button-content">取消</span>
					        	</a> -->
						
							<div class="form-row">
								<div class="form-label col-md-2 labelstyle"
									style="margin-right:5px;">
									<label for=""> 用户登录号: </label>
								</div>
								<div class="form-input col-md-3 textstyle">
									<input style="width:200px;height:28px;" type="text" name=""
										id=""value="susu">
								</div>
								
							</div>
							<div class="form-row">
								<div class="form-label col-md-2 labelstyle"
									style="margin-right:5px;">
									<label for=""> 用户姓名: </label>
								</div>
								<div class="form-input col-md-3 textstyle">
									<input style="width:200px;height:28px;" type="text" name=""
										id="" value="苏苏">
								</div>
								
							</div>
							<div class="form-row">
								<div class="form-label col-md-2 labelstyle"
									style="margin-right:5px;">
									<label for=""> 用户密码: </label>
								</div>
								<div class="form-input col-md-3 textstyle">
									<input style="width:200px;height:28px;" type="text" name=""
										id="" value="123">
								</div>
								
							</div>
							<div class="form-row">
								<div class="form-label col-md-2 labelstyle"
									style="margin-right:5px;">
									<label for=""> 用户简介: </label>
								</div>
								<div class="form-input col-md-3 textstyle">
									<input style="width:200px;height:28px;" type="text" name=""
										id="" value="女孩">
								</div>
								
							</div>
							<div class="form-row">
								<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">确定</span></button>
								<button type="reset"class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">取消</span></button>
							</div>
						</form>
						
					</div>
					

				</div>

			</div>
			
		
		

</body>
</html>





