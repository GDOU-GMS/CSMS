<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>货号管理</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicons -->

		<link rel="stylesheet" href="css/bootstrap.min.css">

		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/manage/documentation/assets/images/icons/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/manage/documentation/assets/images/icons/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/manage/documentation/assets/images/icons/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/manage/documentation/assets/images/icons/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/manage/documentation/assets/images/icons/favicon.png">

		<!--[if lt IE 9]>
          <script src="${pageContext.request.contextPath}/manage/documentation/assets/js/minified/core/html5shiv.min.js"></script>
          <script src="${pageContext.request.contextPath}/manage/documentation/assets/js/minified/core/respond.min.js"></script>
        <![endif]-->

		<!-- Fides Admin CSS Core -->

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/manage/documentation/assets/css/minified/aui-production.min.css">

		<!-- Theme UI -->

		<link id="layout-theme" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/manage/documentation/assets/themes/minified/fides/color-schemes/dark-blue.min.css">

		<!-- Fides Admin Responsive -->

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/manage/documentation/assets/themes/minified/fides/common.min.css">

		<link id="theme-animations" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/manage/documentation/assets/themes/minified/fides/animations.min.css">

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/manage/documentation/assets/themes/minified/fides/responsive.min.css">

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/css/style.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/css/DialogBySHF.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/manage/documentation/css/bootstrap.min.css">
		<!-- Fides Admin JS -->

		<script type="text/javascript" src="${pageContext.request.contextPath}/manage/documentation/assets/js/minified/aui-production.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/manage/documentation/assets/js/minified/core/raphael.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/manage/documentation/assets/js/minified/widgets/charts-justgage.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/manage/documentation/assets/js/DialogBySHF.js"></script>
		<script src="${pageContext.request.contextPath }/manage/documentation/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/manage/documentation/js/jquery.min.js"></script>
	

	</head>

	<body>

		<div id="page-title">

			<h3>

					Welcome to 货号管理 <small></small>

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
							<div class="form-label col-md-1 labelstyle" style="margin-right:5px;">
								<label for=""> 货号: </label>
							</div>
							<div class="form-input col-md-3 textstyle">
								<input style="width:200px;height:28px;" type="text" name="" id="">
							</div>
							<div class="form-label col-md-2 labelstyle" style="margin-right:5px;">
								<label for=""> 品名: </label>
							</div>
							<div style="width:200px;height:28px;" class="form-input col-md-3 textstyle">
								<input type="text" name="" id="">
							</div>

						</div>
						<div class="form-row">
							<div class="form-label col-md-1 labelstyle" style="margin-right:5px;">
								<label for=""> 色号: </label>
							</div>
							<div class="form-input col-md-3 textstyle">
								<input style="width:200px;height:28px;" type="text" name="" id="">
							</div>
							<div class="form-label col-md-2 labelstyle" style="margin-right:5px;">
								<label for=""> 尺码: </label>
							</div>
							<div style="width:200px;height:28px;" class="form-input col-md-3 textstyle">
								<input type="text" name="" id="">
							</div>
							<!-- <a href="#" class="btn medium primary-bg" style="margin-left:10px;" title=""> <span
									class="button-content">查询</span> </a> -->
							<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">查询</span>
							</button>

						</div>
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
								<th>货号</th>
								<th>色号</th>
								<th>尺码</th>
								<th>品名</th>
								<th>出厂价</th>
								<th>零售价</th>
								<th>操作</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>

								<td>
									<!-- 	<a href="javascript:;" class="btn small bg-yellow tooltip-button" data-placement="top" title="Flag">
									<i class="glyph-icon icon-flag"></i> </a>  -->
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td class="font-bold text-left">John Clark</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a> </td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a> </td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>

							</tr>
							<tr>
								<td>5</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a> </td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>6</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>7</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a> </td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>8</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a> </td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>9</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a> </td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
							<tr>
								<td>10</td>
								<td class="font-bold text-left">Kenny Davis</td>
								<td><a href="javascript:;">Development</a> </td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td class="font-bold text-left">John Clark</td>
								<td><a href="javascript:;">Sales</a>
								</td>
								<td>
									<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
										<i class="glyph-icon icon-plus-square-o"></i>
									</a>
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#">
										<i class="glyph-icon icon-remove"></i> </a>
								</td>
							</tr>
						</tbody>
					</table>

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

		<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">添加货号</h4>
						</div>
						<div class="modal-body" style="margin:20px;">
							内容
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">查询 </span>
							</button>
							<button type="reset" class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">取消</span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">更新货号</h4>
						</div>
						<div class="modal-body" style="margin:20px;">
							内容
							<div class="modal-footer">
								<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
									<span class="button-content">查询 </span>
								</button>
								<button type="reset" class="btn medium primary-bg" style="margin-left:10px;" title="">
									<span class="button-content">取消</span>
								</button>
							</div>
					</form>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">更新货号</h4>
						</div>
						<div class="modal-body" style="margin:20px;">
							<p>确定删除吗？</p>
							<div class="modal-footer">
								<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
									<span class="button-content">查询 </span>
								</button>
								<button type="reset" class="btn medium primary-bg" style="margin-left:10px;" title="">
									<span class="button-content">取消</span>
								</button>
							</div>
					</form>
					</div>
				</div>
			</div>
		</div>

			
	</body>

</html>
