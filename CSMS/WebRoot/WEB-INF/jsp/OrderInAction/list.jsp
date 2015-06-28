<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>

<!-- AUI Documentation -->
<!DOCTYPE html>
<html>
<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>仓库管理</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicons -->

		<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->

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
		<link rel="stylesheet"   href="${pageContext.request.contextPath }/manage/documentation/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath }/manage/documentation/css/datepicker.css">
		<!-- Fides Admin JS -->
		 <script type="text/javascript" src="${pageContext.request.contextPath}/manage/documentation/assets/js/minified/aui-production.min.js"></script> 
		<script type="text/javascript" src="${pageContext.request.contextPath}/manage/documentation/assets/js/minified/core/raphael.min.js"></script>

		<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/manage/documentation/assets/js/DialogBySHF.js"></script> --%>
		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/js/jquery-2.0.0.min.js"></script>
		<%-- <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script> --%>
		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/js/bootstrap.min.js"></script>
		
	    <script  type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/js/bootstrap-datepicker.js"></script>
	   
	  
<!-- 自定义的js函数 -->
	</head>
<body>
	<div class="rm-from-production">
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/manage/_assets/syntax-highlighter/scripts/shCore.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/manage/_assets/syntax-highlighter/scripts/shBrushPhp.js"></script>
		<link type="text/css" rel="stylesheet"
			href="${pageContext.request.contextPath}/manage/_assets/syntax-highlighter/styles/shCoreDefault.css">
		<script type="text/javascript">
			SyntaxHighlighter.all();
		</script>
	</div>

	<div id="loading"
		class="ui-front loader ui-widget-overlay bg-white opacity-100">
		<img src="${pageContext.request.contextPath}/manage/documentation/assets/images/loader-dark.gif" alt="">
	</div>
			<div id="page-title">
				<h3>
					Welcome to 入库管理 <small></small>
				</h3>

			</div>
	
			<div id="page-content">

				<!-- 主要表格 -->
				<!-- 表格 -->
				<div class="example-box">
					<div class="example-code">
						<form action="${pageContext.request.contextPath }/orderin_query.do" method="post">
						<div class="form-row">
							<div class="form-label col-md-2 width:100px;">
								<label for="" > 所入仓库 :</label>
							</div>
							<div class="form-input col-md-3" style="width:220px;display:inline;float:left;">
								<select id="" class="" name="storage.name">
									<!-- <option value="仓库一">仓库一</option>
									<option value="仓库二">仓库二</option>
									<option value="仓库三">仓库三</option>
									<option value="仓库四">仓库四</option> -->
									<option value="">请选择仓库</option>
									<s:iterator value="#session.storages" status="status" >
									<option value="${name}">${name}</option>
									</s:iterator>
									
								</select>
							</div>
							<div class="form-label col-md-2 labelstyle" style="margin-left: 30px;">
								<label for="">单据编号: </label>
							</div>
							<div class="form-input col-md-3 textstyle">
								<input style="width:200px;height:28px;" type="text" name="number" id="">
							</div>

						</div>
						<div class="form-row">
							<div class="form-label col-md-2 labelstyle">
								<label for="">入库日期: </label>
							</div>
							<div class="form-input col-md-3">
								<input type="text" style="width:200px;height:30px;" name="time" id="dateFirst">
							</div>
							<span style="display:inline;float:left;padding-right:32px;">至</span>
							<div class="form-input col-md-3 textstyle">
								<input type="text" name="timeDate" id="dateSecond" style="width:200px;height:28px;">
							</div>
						
							<!-- <a href="#" class="btn medium primary-bg"
									style="margin-left:10px;" title=""> <span
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
					
					<!-- 	<a data-toggle="modal"  data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
							<i class="glyph-icon icon-plus-square-o"></i>
						</a><br><br> -->
					    <a data-toggle="modal"  title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="${pageContext.request.contextPath }/orderin_detailPage.do">
							<i class="glyph-icon icon-plus-square-o"></i>
						</a><br><br>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>序号</th>
									<th>单据编号</th>
									<th>所入仓库</th>
									<th>入库日期</th>
									<th>经办人</th>
									<th>来源</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="list" status="status" >
									<tr>
									<td>${(pageNum-1)*10+status.count }</td>
									<td id="numberText_${id }"><a href="${pageContext.request.contextPath }/orderin_detailList.do?number=${number}">${number}</a></td>
									<td id="nameText_${id }">${storage.name}</td>
									<td id="storageNumText_${id }">${time}</td>
									<td id="storageNumText_${id }">${user.userName}</td>
									<td id="storageNumText_${id }">${site}</td>
									<td>
									<a data-toggle="modal"  data-target="#updateModal" href="" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="reshow(${id})">  
									<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal"  data-target="#deleteModal" href="#" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="showId(${id})">
									<i class="glyph-icon icon-remove"></i> </a>
									</td>
									</tr>
								</s:iterator>
								
								
							</tbody>
						</table>
						<!-- 如果是查询结果 -->
						 <s:if test="#querystatue != null">
							<!-- start分页,有数据的时候才显示分页. -->
							<s:if test="totalRecord>0">
								<div class="col-md-3" style="float:right; margin-bottom:20px; width:500px;">
									<div class="button-group center-div">
										<a href="${pageContext.request.contextPath }/orderin_list.do?pageNum=${pageNum-1}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath }/orderin_list.do?pageNum=${i}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i}</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/orderin_list.do?pageNum=${pageNum+1}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-right"></i> </a>
									</div>
								</div>
							</s:if>
							<!-- end 分页 -->
						</s:if>
						<!-- 如果不是查询结果，而是原始分页 -->
						<s:else>
							<!-- start分页,有数据的时候才显示分页. -->
							<s:if test="totalRecord>0">
								<div class="col-md-3" style="float:right; margin-bottom:20px; width:500px;">
									<div class="button-group center-div">
										<a href="${pageContext.request.contextPath }/orderin_list.do?pageNum=${pageNum-1}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath }/orderin_list.do?pageNum=${i}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/orderin_list.do?pageNum=${pageNum+1}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-right"></i> </a>
									</div>
								</div>
							</s:if> 
							<!-- end 分页 -->
						</s:else>
						
					</div>

				</div>
			</div>
			<!-- #page-content -->
			
			
					
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"  >
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/orderin_add.do" method="post">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加订单</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      	<input type="hidden" name="pageNum" value="${pageNum}" >
      	
		  <div class="form-group">
		    <label for="storageNum">单据编号</label>
		    <input type="text" class="form-control" id="storageNum" name="number" placeholder="请输入单据编号">
		  </div>
		  <div class="form-group form-input">
		    <label for="storageName">所入仓库</label>
		   <!--  <input type="text" class="form-control" id="storageName" name="storage.name" placeholder="请输入所入仓库"> -->
		    
		    <select  class="form-control"  name="storage.name">
		    <option value="">请选择仓库</option>
		    <s:iterator value="#session.storages" status="status" >
			<option value="${name}">${name}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group  form-input">
		    <label for="contactsName">入库日期</label>
			<input type="text" name="time" id="date">
		  </div>
		   <div class="form-group form-input">
		    <label for="contacts_phone">经办人</label>
		    <select  class="form-control" name="user.userName" >
		    <option value="">请选择经办人</option>
		    <s:iterator value="#session.users" status="status" >
			<option value="${userName}">${userName}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group">
		    <label for="storage_num">来源 </label>
		    <input type="text" class="form-control" id="storage_num" name="site" placeholder="请输入来源">
		  </div> 
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">添加 </span></button>
		<button type="reset"class="btn medium primary-bg" style="margin-left:10px;" data-dismiss="modal" aria-label="Close">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>






<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/orderin_edit.do" method="post">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">更新订单</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      	<input type="hidden" name="pageNum" value="${pageNum}" >
		  <div class="form-group">
		    <label for="storage_num">单据号 </label>
		    <input type="text" class="form-control" id="order_number" name="number" placeholder="请输入来源"  readonly="readonly">
		  </div>
		  <div class="form-group form-input">
		    <label for="storageName">所入仓库</label>
		   <!--  <input type="text" class="form-control" id="storageName" name="storage.name" placeholder="请输入所入仓库"> -->
		    <select  class="form-control" id="storage_name" name="storage.id">
		    <option value="">请选择仓库</option>
		    <s:iterator value="#session.storages" status="status" >
			<option value="${id}">${name}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group  form-input">
		    <label for="contactsName">入库日期</label>
			<input type="text" name="time" id="order_time">
		  </div>
		   <div class="form-group form-input">
		    <label for="contacts_phone">经办人</label>
		    <select  class="form-control" id="user_userName" name="user.id" >
		    <option value="">请选择经办人</option>
		    <s:iterator value="#session.users" status="status" >
			<option value="${id}">${userName}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group">
		    <label for="storage_num">来源 </label>
		    <input type="text" class="form-control" id="order_site" name="site" placeholder="请输入来源">
		  </div> 
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">更新</span></button>
		<button type="reset"class="btn medium primary-bg" style="margin-left:10px;" data-dismiss="modal" aria-label="Close">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>




<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/orderin_delete.do">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">删除仓库</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
       <input type="hidden"  name="pageNum" value="${pageNum }" >
        <input type="hidden" name="id" id="deleteId" >
		  <p>确认删除吗？</p>
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">确定</span></button>
		<button type="reset"class="btn medium primary-bg" style="margin-left:10px;" data-dismiss="modal" aria-label="Close">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>
</body>
<script type="text/javascript">
	
	$(document).ready(function() { 
		$( "#dateFirst" ).datepicker({format: 'yyyy-mm-dd'});
		$( "#dateSecond" ).datepicker({format: 'yyyy-mm-dd'});
		$( "#order_time" ).datepicker({format: 'yyyy-mm-dd'});
		$( "#date" ).datepicker({format: 'yyyy-mm-dd'});
	}); 
	
	function reshow(id){
		var url = "orderin_getJsonById.do";
		var params ={
			id:id
		};
		$.getJSON(url,params,function(data){
			var order = data.order;
			$("#order_number").val(order.number);
			$("#storage_name").val(order.storage.id);
			$("#order_time").val(order.time);
			$("#user_userName").val(order.user.id);
			$("#order_site").val(order.site);
		});
	 }
	function showId(id){
		$("#deleteId").val(id);
	}
	function showText(id,contacts,contacts_phone){
		var number = $("#numberText_"+id).text();
		var name = $("#nameText_"+id).text();
		var storage_num = $("#storageNumText_"+id).text();
		$("#shownumber").val(number);
		$("#showname").val(name);
		$("#shownum").val(storage_num);
		$("#editId").val(id);
		$("#showcontactsName").val(contacts);
		$("#showphone").val(contacts_phone);
	}
	
	
</script>

</html>


