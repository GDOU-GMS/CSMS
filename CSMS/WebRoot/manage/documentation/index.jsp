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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicons -->

<link rel="stylesheet" href="css/bootstrap.min.css">

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


<link id="theme-animations" rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/animations.min.css">

<link rel="stylesheet" type="text/css"
	href="assets/themes/minified/fides/responsive.min.css">

<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/DialogBySHF.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Fides Admin JS -->

<script type="text/javascript"
	src="assets/js/minified/aui-production.min.js"></script>

<script type="text/javascript"
	src="assets/js/minified/core/raphael.min.js"></script>
<script type="text/javascript"
	src="assets/js/minified/widgets/charts-justgage.min.js"></script>
	
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

	<div class="rm-from-production">
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
	</div>

	<div id="page-wrapper">


		<div id="page-header" class="clearfix"  style="z-index: -2;">
			<!-- <div id="header-logo">Documentation</div> -->
				<div id="header-logo"><img src="images/toplogo.png"alt=""></div>
			<div class="top-icon-bar"></div>

		</div>
		<!-- #page-header -->
		<!--侧栏菜单 -->
		<div id="page-sidebar" class="scrollable-content">

			<div id="sidebar-menu">
				<ul>

					<li><a href="javascript:;" title="Components"> <i
							class="glyph-icon icon-folder-open"></i> 系统管理 </a>
						<ul>
							<li><a href="yhgl.jsp" title="Dashboard panels" target="main-frame">
							<i class="glyph-icon icon-chevron-right"></i> 用户管理 </a></li>
							<li><a href="hhgl.jsp" title="Tile buttons" target="main-frame"> <i
									class="glyph-icon icon-chevron-right"></i> 货号管理 </a></li>
							<li><a href="ck.jsp" title="Timeline"  target="main-frame"> <i
									class="glyph-icon icon-chevron-right"></i> 仓库 </a></li>

						</ul></li>
					<li><a href="javascript:;" title="Components" > <i
							class="glyph-icon icon-folder-open"></i> 库存管理 </a>
						<ul>
							<li><a href="rkgl.jsp" title="Dashboard panels"  target="main-frame">
									<i class="glyph-icon icon-chevron-right"></i> 入库管理 </a></li>
							<li><a href="ckgl.jsp" title="Tile buttons"  target="main-frame"> <i
									class="glyph-icon icon-chevron-right"></i> 出库管理 </a></li>

						</ul></li>
						<li><a href="javascript:;" title="Components"> <i
							class="glyph-icon icon-folder-open"></i> 辅助管理 </a>
						<ul>
							<li><a href="fzgl.jsp" title="Dashboard panels"  target="main-frame">
									<i class="glyph-icon icon-chevron-right"></i> 修改密码 </a></li>

						</ul></li>

				</ul>
				<!-- 侧栏结束 -->

			</div>

		</div>
		<!-- #page-sidebar -->
		<div id="menu-right" class="scrollable-content hidden">
			<a href="javascript:;" title="Get Source"
				class="popover-title button-toggle-open"> Cloud status <i
				class="glyph-icon icon-caret-right icon-caret-down"></i> </a>
			<div class="toggle-content-open pad20T pad20B">

				<div class="row">
					<div class="col-md-4">
						<div
							class="text-center font-gray-dark pad5B text-transform-upr font-size-11">New
							visits</div>
						<div class="chart-alt-2" data-percent="55">
							<span>55</span>%
						</div>
					</div>
					<div class="col-md-4">
						<div
							class="text-center font-gray-dark pad5B text-transform-upr font-size-11">Bounce
							rate</div>
						<div class="chart-alt-2" data-percent="46">
							<span>46</span>%
						</div>
					</div>
					<div class="col-md-4">
						<div
							class="text-center font-gray-dark pad5B text-transform-upr font-size-11">Server
							load</div>
						<div class="chart-alt-2" data-percent="92">
							<span>92</span>%
						</div>
					</div>
				</div>
				<div class="divider"></div>
				<div class="text-center">
					<a href="javascript:;"
						class="btn center-div ui-state-default small text-transform-upr updateEasyPieChart">
						<span class="button-content font-normal"> <i
							class="glyph-icon icon-refresh float-left"></i> Refresh all pie
							charts </span> </a>
				</div>
			</div>
			<div class="clear"></div>
			<a href="javascript:;" title="Get Source"
				class="popover-title button-toggle-open"> Realtime server load <i
				class="glyph-icon icon-caret-right icon-caret-down"></i> </a>
			<div class="toggle-content-open clearfix">

				<div id="g10" class="small-gauge float-left"></div>
				<div id="g11" class="small-gauge float-right"></div>

			</div>
			<div class="clear"></div>
			<a href="javascript:;" title="Get Source"
				class="popover-title button-toggle-open"> Tasks for today <i
				class="glyph-icon icon-caret-right icon-caret-down"></i> </a>
			<div class="toggle-content-open">

				<ul class="progress-box progress-box-alt">
					<li>
						<div class="progress-title">
							New features development <b>87%</b>
						</div>
						<div class="progressbar-smaller progressbar" data-value="87">
							<div class="progressbar-value bg-azure">
								<div class="progressbar-overlay"></div>
							</div>
						</div></li>
					<li>
						<div class="progress-title">
							Finishing uploading files <b>66%</b>
						</div>
						<div class="progressbar-smaller progressbar" data-value="66">
							<div class="progressbar-value bg-red">
								<div class="progressbar-overlay"></div>
							</div>
						</div></li>
					<li>
						<div class="progress-title">
							Creating tutorials <b>58%</b>
						</div>
						<div class="progressbar-smaller progressbar" data-value="58">
							<div class="progressbar-value bg-blue-alt"></div>
						</div></li>
					<li>
						<div class="progress-title">
							Frontend bonus theme <b>74%</b>
						</div>
						<div class="progressbar-smaller progressbar" data-value="74">
							<div class="progressbar-value bg-purple"></div>
						</div></li>
				</ul>

			</div>
			<div class="clear"></div>
			<a href="javascript:;" title="Get Source"
				class="popover-title button-toggle-open"> Pending notifications
				<span class="badge bg-orange tooltip-button" title="Orange badge">4</span>
				<i class="glyph-icon icon-caret-right icon-caret-down"></i> </a>
			<div class="toggle-content-open">

				<ul class="notifications-box remove-border">
					<li><span
						class="btn bg-red radius-all-100 icon-notification glyph-icon icon-glass"></span>
						<span class="notification-text">You have to buy milk</span></li>
					<li><span
						class="btn bg-blue-alt radius-all-100 icon-notification glyph-icon icon-leaf"></span>
						<span class="notification-text">Don't forget about new
							features</span></li>
					<li><span
						class="btn bg-yellow radius-all-100 icon-notification glyph-icon icon-trophy"></span>
						<span class="notification-text">Eat some donuts</span></li>
				</ul>

			</div>
			<div class="clear"></div>
			<a href="javascript:;" title="Get Source"
				class="popover-title button-toggle-open"> Sales for today <i
				class="glyph-icon icon-caret-right icon-caret-down"></i> </a>
			<div class="toggle-content-open">
				<div
					class="info-box mrg10B bg-white remove-border radius-all-4 tooltip-button"
					title="4px border radius">
					<div class="chart-icon">
						<div class="sprk-1-dash">5,6,7,5,9,8,6,3,2,1,2,4,2,2,4,6,7</div>
					</div>
					<b>Current growth</b> <span class="stats font-blue"> <i
						class="glyph-icon icon-chevron-down font-red"></i> 765 <span
						class="font-orange">-8.1</span> </span>
				</div>
			</div>
			<div class="clear"></div>
			<a href="javascript:;" title="Get Source"
				class="popover-title button-toggle-open"> Tabs example <i
				class="glyph-icon icon-caret-right icon-caret-down"></i> </a>
			<div class="toggle-content-open">

				<div class="tabs">
					<ul>
						<li><a href="#core-helpers-tabs-1" title="Tab 1"> <i
								class="glyph-icon icon-archive font-blue font-size-23"></i> </a></li>
						<li><a href="#core-helpers-tabs-2" title="Tab 2"> <i
								class="glyph-icon icon-beaker font-black font-size-23"></i> </a></li>
						<li><a href="#core-helpers-tabs-3" title="Tab 3"> <i
								class="glyph-icon icon-cogs font-green font-size-23"></i> </a></li>
					</ul>
					<div id="core-helpers-tabs-1">tab 1 content</div>
					<div id="core-helpers-tabs-2">tab 2 content</div>
					<div id="core-helpers-tabs-3">tab 3 content</div>
				</div>

			</div>
		</div>

		<script type="text/javascript">
			
		</script>
		<div id="page-content-wrapper"  style="height: 680px;" >
			
			<iframe src="yhgl.jsp" id="main-frame" name="main-frame" frameborder="no" width=100% height=100%></iframe>
				
		</div>
		<!-- #page-main -->
	</div>
	<!-- #page-wrapper -->

</body>
</html>






