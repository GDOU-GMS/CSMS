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
		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/aui-production.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/core/raphael.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/DialogBySHF.js"></script>
		<!--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>-->
		<script src="${pageContext.request.contextPath }/manage/documentation/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/manage/documentation/js/jquery.min.js"></script>
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
						<form action="${pageContext.request.contextPath }/orderin_edit.do?id=${order.id}" method="post">
						<div class="form-row">
							<div class="form-label col-md-2 width:100px;" >
								<label for="" >单据号 :</label>
							</div>
							<div class="form-input col-md-3 textstyle">
								<input style="width:200px;height:28px;" type="text" name="number" id="order_number" readonly="readonly" value="${order.number}">
							</div>
							<div class="form-label col-md-2 labelstyle" >
								<label for=""> 入库日期: </label>
							</div>
							<div class="form-input col-md-3">
								<input type="text" style="width:200px;height:28px;" name="time"value="${order.time}"   readonly="readonly" >
							</div>

						</div>
						<div class="form-row">
							<div class="form-label col-md-2 labelstyle">
								<label for=""> 所入仓库: </label>
							</div>
							<div class="form-input col-md-3">
								 <input type="text" style="width:200px;height:28px;" name="time"value="${order.storage.name}" id="" readonly="readonly" >
								  
							</div>
							<div class="form-label  col-md-2 labelstyle">
								<label for=""> 来源: </label>
							</div>
							<div class="form-input col-md-3">
								<input type="text" style="width:200px;height:28px;"value="${order.site}" name="site" id="order_site"  readonly="readonly">
							</div>
							</div>
							<div class="form-row">
							<div class="form-label  col-md-2 labelstyle">
								<label for=""> 经办人: </label>
							</div>
							<div class="form-input col-md-3">
							     <input type="text" style="width:200px;height:28px;" name="site" id="" value="${order.user.userName}"  readonly="readonly">
								
							</div>
						</div>
						
					</form>
					</div>
					
					<div class="example-code">
					
						<a data-toggle="modal"  data-target="#addModal" title="添加" class="tooltip-button btn small bg-yellow" title="添加" href="#">
								<i class="glyph-icon icon-plus-square-o"></i></a>
						<br><br>
						
						
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>序号</th>
									<th>货号</th>
									<th>品名</th>
									<th>色号</th>
									<th>尺码</th>
									<th>进价</th>
									<th>售价</th>
									<th>数量</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="list" status="status" >
									<tr>
									<td>${(pageNum-1)*10+status.count }</td>
									<td id="numberText_${id }">${item.item_number}</td>
									<td id="nameText_${id }">${item.brand}</td>
									<td id="storageNumText_${id }">${item.color_number}</td>
									<td id="storageNumText_${id }">${item.size}</td>
									<td id="storageNumText_${id }">${item.factory_price}</td>
									<td id="storageNumText_${id }">${item.retail_price}</td>
									<td id="storageNumText_${id }">${num}</td>
									<td>
									<s:if test="#session.user.hasPrivilegeByName('入库单修改')">
										<a data-toggle="modal"  data-target="#updateModal" href="" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="reshow(${id})">  
										<i class="glyph-icon icon-edit"></i> </a>
									</s:if>
									<s:if test="#session.user.hasPrivilegeByName('入库单删除')">
										<a data-toggle="modal"  data-target="#deleteModal" href="#" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="showId(${item.id})">
										<i class="glyph-icon icon-remove"></i> </a>
									</s:if>
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
										<a href="${pageContext.request.contextPath }/orderin_query.do?pageNum=${pageNum-1}&storage.name=${storageName}&number=${number}&time=${time}&timedate=${timedate}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath }/orderin_query.do?pageNum=${i}&storage.name=${storageName}&number=${number}&time=${time}&timedate=${timedate}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/orderin_query.do?pageNum=${pageNum+1}&storage.name=${storageName}&number=${number}&time=${time}&timedate=${timedate}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
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
										<a href="${pageContext.request.contextPath }/orderin_detailList.do?pageNum=${pageNum-1}&number=${order.number}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath}/orderin_detailList.do?pageNum=${i}&number=${order.number}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/orderin_detailList.do?pageNum=${pageNum+1}&number=${order.number}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
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
     <form class="form-horizontal" action="${pageContext.request.contextPath }/item_addItem.do?orderId=${order.id}" method="post">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加货物</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      	<input type="hidden" name="pageNum" value="${pageNum}">
		  <div class="form-group">
		    <label for="storageNum">货号</label>
		    <input type="text" class="form-control" name="item_number" placeholder="请输入单据编号" required>
		  </div>
		  <div class="form-group">
		    <label for="storageNum">品名</label>
		    <input type="text" class="form-control" name="brand" placeholder="请输入单据品名" required>
		  </div>
		  <div class="form-group form-input">
		    <label for="storageName">尺码</label>
		    <select  class="form-control"  name="size">
		    <option value="">请选择尺码</option>
		    <s:iterator value="sizes" status="status">
			<option value="${num}">${num}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group  form-input">
		    <label for="contactsName">色号</label>
			<select  class="form-control"  name="color_number" >
		    <option value="">请选择色号</option>
		    <s:iterator value="colors" status="status" >
			<option value="${name}">${name}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group form-input">
		    <label for="contacts_phone">进价</label>
		    <input type="text" class="form-control"  name="factory_price" placeholder="请输入来源" required>
		  </div>
		  <div class="form-group form-input">
		    <label for="contacts_phone">售价</label>
		    <input type="text" class="form-control"  name="retail_price" placeholder="请输入来源" required>
		  </div>
		  <div class="form-group form-input">
		    <label for="contacts_phone">数量</label>
		    <input type="text" class="form-control"  name="num" placeholder="请输入来源" required>
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
      <form class="form-horizontal" action="${pageContext.request.contextPath }/item_editItem.do" method="post">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">更新货物</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      	<input type="hidden" name="pageNum" value="${pageNum}">
      	<input type="hidden"  name="orderId" id="orderId">
		  <div class="form-group">
		    <label for="storageNum">货号</label>
		    <input type="text" class="form-control" id="itemNumber" name="item_number" required >
		  </div>
		  <div class="form-group">
		    <label for="storageNum">品名</label>
		    <input type="text" class="form-control" id="itemBrand" name="brand" required >
		  </div>
		  <div class="form-group form-input">
		    <label for="storageName">尺码</label>
		    <select  class="form-control"  id="itemSize" name="size">
		    <option value="">请选择尺码</option>
		    <s:iterator value="sizes" status="status">
			<option value="${num}">${num}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group  form-input">
		    <label for="contactsName">色号</label>
			<select  class="form-control" id="colorNumber" name="color_number" >
		    <option value="">请选择色号</option>
		    <s:iterator value="colors" status="status" >
			<option value="${name}">${name}</option>
			</s:iterator>
			</select> 
		  </div>
		  <div class="form-group form-input">
		    <label for="contacts_phone">进价</label>
		    <input type="text" class="form-control" id="factoryPrice"  name="factory_price" required>
		  </div>
		  <div class="form-group form-input">
		    <label for="contacts_phone">售价</label>
		    <input type="text" class="form-control" id="retailPrice" name="retail_price"  required>
		  </div>
		  <div class="form-group form-input">
		    <label for="contacts_phone">数量</label>
		    <input type="text" class="form-control" id="num" name="num"  >
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
      <form class="form-horizontal" action="${pageContext.request.contextPath }/item_deleteItem.do?">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">删除货物</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
       <input type="hidden"  name="pageNum" value="${pageNum }">
        <input type="hidden" name="id" id="deleteId" >
        <input type="hidden" name="orderId"  value="${order.id}" >
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

<script type="text/javascript">
	
	$(document).ready(function() { 
		$( "#dateFirst" ).datepicker({format: 'yyyy-mm-dd'});
		$( "#dateFirst" ).datepicker('hide');
		
	}); 
	function showDetail(id){
	    
		var url = "item_getJsonItemId.do";
		var params ={
			orderListId:id
		};
		$.getJSON(url,params,function(data){
			var orderList = data.orderList;
			
			$("#itemNumber").val(orderList.item.item_number);
			$("#dateFirst").val(orderList.order.time);
			$("#user_userName").val(orderList.order.user.userName);
			$("#order_site").val(orderList.order.site);
			$("#order_number").value(orderList.order.number);
		});
	}
	function reshow(id){
		var url = "item_getJsonById.do";
		var params ={
			orderListId:id 
		};
		$.getJSON(url,params,function(data){
			var orderList = data.orderList;
			$("#orderId").val(orderList.id);
			$("#itemNumber").val(orderList.item.item_number);
			$("#itemBrand").val(orderList.item.brand);
			$("#itemSize").val(orderList.item.size);
			$("#colorNumber").val(orderList.item.color_number);
			$("#factoryPrice").val(orderList.item.factory_price);
			$("#retailPrice").val(orderList.item.retail_price);
			$("#num").val(orderList.num);
		});
	}
	 
	function showId(id){
		$("#deleteId").val(id);
	}
	
</script>
</body>
</html>





