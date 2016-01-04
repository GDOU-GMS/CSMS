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

<script type="text/javascript"
	src="assets/js/minified/aui-production.min.js"></script>

<script type="text/javascript"
	src="assets/js/minified/core/raphael.min.js"></script>
<script type="text/javascript"
	src="assets/js/minified/widgets/charts-justgage.min.js"></script>


<script type="text/javascript"
	src="assets/js/DialogBySHF.js"></script>

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


		<div id="page-header" class="clearfix">
			<!-- <div id="header-logo">Documentation</div> -->
				<div id="header-logo"><img src="images/toplogo.png"alt=""></div>
			<div class="hide" id="black-modal-60" title="Modal window example">
				<div class="pad20A">

					<div class="infobox notice-bg">
						<div class="bg-azure large btn info-icon">
							<i class="glyph-icon icon-bullhorn"></i>
						</div>
						<h4 class="infobox-title">Modal windows</h4>
						<p>Thanks to the solid modular Fides Admin arhitecture, modal
							windows customizations are very flexible and easy to apply.</p>
					</div>

					<h4 class="heading-1 mrg20T clearfix">
						<div class="heading-content" style="width: auto;">
							Icons <small> All icons across the Fides Admin Framework
								use FontAwesome icons. </small>
						</div>
						<div class="clear"></div>
						<div class="divider"></div>
					</h4>

					<a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-compass" href="../icon/compass"><i
						class="glyph-icon icon-compass"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-collapse" href="../icon/collapse"><i
						class="glyph-icon icon-collapse"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-collapse-top" href="../icon/collapse-top"><i
						class="glyph-icon icon-collapse-top"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-expand" href="../icon/expand"><i
						class="glyph-icon icon-expand"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-eur" href="../icon/eur"><i
						class="glyph-icon icon-eur"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-euro" href="../icon/eur"><i
						class="glyph-icon icon-euro"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-gbp" href="javascript:;"><i
						class="glyph-icon icon-gbp"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-usd" href="javascript:;"><i
						class="glyph-icon icon-usd"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-dollar" href="javascript:;"><i
						class="glyph-icon icon-dollar"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-inr" href="javascript:;"><i
						class="glyph-icon icon-inr"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-rupee" href="javascript:;"><i
						class="glyph-icon icon-rupee"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-jpy" href="javascript:;"><i
						class="glyph-icon icon-jpy"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-yen" href="javascript:;"><i
						class="glyph-icon icon-yen"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-cny" href="javascript:;"><i
						class="glyph-icon icon-cny"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-renminbi" href="javascript:;"><i
						class="glyph-icon icon-renminbi"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-krw" href="javascript:;"><i
						class="glyph-icon icon-krw"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-won" href="javascript:;"><i
						class="glyph-icon icon-won"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-btc" href="javascript:;"><i
						class="glyph-icon icon-btc"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-bitcoin" href="javascript:;"><i
						class="glyph-icon icon-bitcoin"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-file" href="javascript:;"><i
						class="glyph-icon icon-file"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-file-text" href="javascript:;"><i
						class="glyph-icon icon-file-text"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-sort-by-alphabet" href="javascript:;"><i
						class="glyph-icon icon-sort-by-alphabet"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-sort-by-alphabet-al" href="javascript:;"><i
						class="glyph-icon icon-sort-by-alphabet-alt"></i>t</a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-sort-by-attributes" href="javascript:;"><i
						class="glyph-icon icon-sort-by-attributes"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-sort-by-attribu" href="javascript:;"><i
						class="glyph-icon icon-sort-by-attributes-alt"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-sort-by-order" href="javascript:;"><i
						class="glyph-icon icon-sort-by-order"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-sort-by-order-alt" href="javascript:;"><i
						class="glyph-icon icon-sort-by-order-alt"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-thumbs-up" href="javascript:;"><i
						class="glyph-icon icon-thumbs-up"></i> </a> <a
						class="btn medium radius-all-4 mrg5A ui-state-default tooltip-button"
						title="icon-thumbs-down" href="javascript:;"><i
						class="glyph-icon icon-thumbs-down"></i> </a>

				</div>
			</div>

			<div class="hide" id="white-modal-80" title="Dialog with tabs">
				<div class="tabs pad15A remove-border opacity-80">
					<ul class="opacity-80">
						<li><a href="#example-tabs-1">First</a>
						</li>
						<li><a href="#example-tabs-2">Second</a>
						</li>
						<li><a href="#example-tabs-3">Third</a>
						</li>
					</ul>
					<div id="example-tabs-1">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						<p>Nam dui erat, auctor a, dignissim quis, sollicitudin eu,
							felis. Pellentesque nisi urna, interdum eget, sagittis et,
							consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.
						</p>
					</div>
					<div id="example-tabs-2">
						<p>Phasellus mattis tincidunt nibh. Cras orci urna, blandit
							id, pretium vel, aliquet ornare, felis. Maecenas scelerisque sem
							non nisl. Fusce sed lorem in enim dictum bibendum.</p>
						<p>Nam dui erat, auctor a, dignissim quis, sollicitudin eu,
							felis. Pellentesque nisi urna, interdum eget, sagittis et,
							consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.
						</p>
					</div>
					<div id="example-tabs-3">
						<p>Nam dui erat, auctor a, dignissim quis, sollicitudin eu,
							felis. Pellentesque nisi urna, interdum eget, sagittis et,
							consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.
						</p>
						<p>Nam dui erat, auctor a, dignissim quis, sollicitudin eu,
							felis. Pellentesque nisi urna, interdum eget, sagittis et,
							consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.
						</p>
					</div>
				</div>
				<div class="pad10A">
					<div class="infobox success-bg radius-all-4">
						<p>Sed ut perspiciatis unde omnis iste natus error sit
							voluptatem accusantium doloremque laudantium, totam rem aperiam,
							eaque</p>
					</div>
				</div>
				<div class="ui-dialog-buttonpane clearfix">

					<a href="dropdown_menus.html"
						class="btn medium float-left bg-azure"> <span
						class="button-content text-transform-upr font-size-11">Dropdown
							menus</span> </a>
					<div class="button-group float-right">
						<a href="buttons.html" class="btn medium bg-black"
							title="View more buttons examples"> <i
							class="glyph-icon icon-star"></i> </a> <a href="buttons.html"
							class="btn medium bg-black" title="View more buttons examples">
							<i class="glyph-icon icon-random"></i> </a> <a href="buttons.html"
							class="btn medium bg-black" title="View more buttons examples">
							<i class="glyph-icon icon-map-marker"></i> </a>
					</div>
					<a href="javascript:;"
						class="medium btn bg-blue-alt float-right mrg10R tooltip-button"
						data-placement="left" title="Remove comment"> <i
						class="glyph-icon icon-plus"></i> </a>

				</div>
			</div>



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
							<li><a href="yhgl.jsp" title="Dashboard panels">
							<i class="glyph-icon icon-chevron-right"></i> 用户管理 </a></li>
							<li><a href="hhgl.jsp" title="Tile buttons"> <i
									class="glyph-icon icon-chevron-right"></i> 货号管理 </a></li>
							<li><a href="ck.jsp" title="Timeline"> <i
									class="glyph-icon icon-chevron-right"></i> 仓库 </a></li>

						</ul></li>
					<li><a href="javascript:;" title="Components"> <i
							class="glyph-icon icon-folder-open"></i> 库存管理 </a>
						<ul>
							<li><a href="rkgl.jsp" title="Dashboard panels">
									<i class="glyph-icon icon-chevron-right"></i> 入库管理 </a></li>
							<li><a href="ckgl.jsp" title="Tile buttons"> <i
									class="glyph-icon icon-chevron-right"></i> 出库管理 </a></li>

						</ul></li>
						<li><a href="javascript:;" title="Components"> <i
							class="glyph-icon icon-folder-open"></i> 辅助管理 </a>
						<ul>
							<li><a href="fzgl.jsp" title="Dashboard panels">
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
		<div id="page-content-wrapper">
			<div id="page-title">

				<h3>
					Welcome to 用户管理 <small></small>
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
									style="margin-right:5px;">
									<label for=""> 用户姓名: </label>
								</div>
								<div class="form-input col-md-3 textstyle">
									<input style="width:200px;height:28px;" type="text" name=""
										id="">
								</div>
								<div class="form-label col-md-2 labelstyle"
									style="margin-right:5px;width:100px;">
									<label for=""> 用户登录号: </label>
								</div>
								<div style="width:200px;height:28px;"
									class="form-input col-md-3 textstyle">
									<input type="text" name="" id="">
								</div>
								<!-- <a href="#" class="btn medium primary-bg" style="margin-left:10px;" title=""> <span
									class="button-content">查询</span> </a> -->
								<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">查询 </span></button>
								
							</div>
							<div class="form-row"></div>
							<div>


								<!--  <a href="#" class="btn medium ui-state-default" title="">
					            <span class="button-content">取消</span>
					        	</a> -->
							</div>
						</form>
					</div>
					<div class="example-code">

						<table class="table table-condensed">
							<thead>
								<tr>
									<th>序号</th>
									<th>用户登录号</th>
									<th>用户姓名</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td class="font-bold text-left">John Clark</td>
									<td><a href="javascript:;">Sales</a>
									</td>
									<td>
								<!-- 	<a href="javascript:;" class="btn small bg-yellow tooltip-button" data-placement="top" title="Flag">
									<i class="glyph-icon icon-flag"></i> </a>  -->
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>4</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
  									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
  									</td>
								</tr>
								<tr>
									<td>6</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>7</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>8</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>9</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
								<tr>
									<td>10</td>
									<td class="font-bold text-left">Kenny Davis</td>
									<td><a href="javascript:;">Development</a>
									</td>
									<td>
									<a title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="javascript:;" onclick="addUser()">
									<i class="glyph-icon icon-plus-square-o"></i></a>
									<a href="javascript:;" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="updateUser()">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a href="javascript:;" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="deleteUser()">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- <div class="pagestyle">
							<span>共20 页</span> <span><a href="">首页</a>
							</span> <span><a href="">上一页</a>
							</span>
							<ul>
								<li><span class="active"><a href="">1</a>
								</span>
								</li>
								<li><span><a href="">2</a>
								</span>
								</li>
								<li><span><a href="">3</a>
								</span>
								</li>
								<li><span><a href="">4</a>
								</span>
								</li>
								<li><span><a href="">5</a>
								</span>
								</li>
								<li><span><a href="">6</a>
								</span>
								</li>
								<li><span><a href="">7</a>
								</span>
								</li>
								<li><span><a href="">8</a>
								</span>
								</li>
								<li><span><a href="">9</a>
								</span>
								</li>
								<li><span><a href="">10</a>
								</span>
								</li>
							</ul>
							<span><a href="">下一页</a>
							</span> <span><a href="">最后一页</a>
							</span>
						</div> -->
						<div class="col-md-3" style="float:right; margin-bottom:20px; width:500px;">
							<div class="button-group center-div">
								<a href="javascript:;" class="btn large ui-state-default">
								<i class="glyph-icon icon-chevron-left"></i> </a>
								<a href="javascript:;" class="btn large ui-state-default"> 1 </a>
								<a href="javascript:;" class="btn large disabled ui-state-default"> 2 </a> 
								<a href="javascript:;" class="btn large ui-state-default"> 3 </a>
								<a href="javascript:;" class="btn large ui-state-default"> 4 </a>
								<a href="javascript:;" class="btn large ui-state-default"> 5 </a>
								<a href="javascript:;" class="btn large ui-state-default"> 6 </a>
								<a href="javascript:;" class="btn large ui-state-default"> 7</a>
								<a href="javascript:;" class="btn large ui-state-default"> 8 </a>
								<a href="javascript:;" class="btn large ui-state-default"> 9 </a>
								<a href="javascript:;" class="btn large ui-state-default"> 10 </a>
								<a href="javascript:;" class="btn large ui-state-default">
								<i class="glyph-icon icon-chevron-right"></i> </a>
							</div>
						</div>
					</div>

				</div>


			</div>
			<!-- #page-content -->
		</div>
		<!-- #page-main -->
	</div>
	<!-- #page-wrapper -->

</body>
</html>
