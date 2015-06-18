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
		<script type="text/javascript">
			//添加的时候获取颜色和尺码.
			function getColorAndSize(){
				var url = "json_getColorAndSize.do";
				$.getJSON(url,{date:new Date()},function(data){
					//颜色
					$.each(data.colors,function(k,v){
						var option = "<option>"+v.name+"</option>";
						$("#addColor").append(option)
					});
					//尺码
					$.each(data.sizes,function(k,v){
						var option = "<option>"+v.num+"</option>";
						$("#addSize").append(option);
					});
				});
			}
			//根据Id获取实体.
			function getItemById(id){
				var url = "item_getItemById.do";
				var params = {
						date:new Date(),
						id:id
				};
				
				$.getJSON(url,params,function(data){
					var item = data.item;
					var flag = false;
					//颜色
					$.each(data.colors,function(k,v){
						var option = "<option>"+v.name+"</option>";
						var selectoption = "<option selected='selected'>"+v.name+"</option>";
						if(v.name == item.color_number){
							$("#editColor").append(selectoption);
							flag = true;//证明有存在相同的值
						}else{
							$("#editColor").append(option);
						}
					});
					if(!flag){
						$("#editColor").append("<option selected='selected'>"+item.color_number+"</option>");
					}
					flag = false;
					//尺码
					$.each(data.sizes,function(k,v){
						var option = "<option>"+v.num+"</option>";
						var selectoption = "<option selected='selected'>"+v.num+"</option>";
						if(v.num == item.size){
							$("#editSize").append(selectoption);
							flag = true;//证明有存在相同的值
						}else{
							$("#editSize").append(option);
						}
					});
					if(!flag){
						$("#editSize").append("<option selected='selected'>"+item.size+"</option>");
					}
					//回显
					$("#editNumber").val(item.item_number);//货号
					$("#editBrand").val(item.brand);//品名
					$("#editLining").val(item.lining);//里料
					$("#editShell").val(item.shell);//面料
					$("#editFactory").val(item.factory_price);//出厂价格
					$("#editRetail").val(item.retail_price);//零售价
					$("#editId").val(item.id)//id
					
				});
			}
			//删除用
			function getDeleteId(id){
				$("#deleteId").val(id);
			}
		</script>

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
					<form action="${pageContext.request.contextPath }/item_query.do" method="post">
						<div class="form-row">
							<div class="form-label col-md-1 labelstyle" style="margin-right:5px;">
								<label for="querynumber"> 货号: </label>
							</div>
							<div class="form-input col-md-3 textstyle">
								<input style="width:200px;height:28px;" type="text" name="item_number" id="querynumber">
							</div>
							<div class="form-label col-md-2 labelstyle" style="margin-right:5px;">
								<label for="querybrand"> 品名: </label>
							</div>
							<div style="width:200px;height:28px;" class="form-input col-md-3 textstyle">
								<input type="text" name="brand" id="querybrand">
							</div>
						</div>
						<div class="form-row">
							<div class="form-label col-md-1 labelstyle" style="margin-right:5px;">
								<label for="querycolor_number"> 色号: </label>
							</div>
							<div class="form-input col-md-3 textstyle">
								<input style="width:200px;height:28px;" type="text" name="color_number" id="querycolor_number">
							</div>
							<div class="form-label col-md-2 labelstyle" style="margin-right:5px;">
								<label for="querysize"> 尺码: </label>
							</div>
							<div style="width:200px;height:28px;" class="form-input col-md-3 textstyle">
								<input type="text" name="size" id="querysize">
							</div>
							<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">查询</span>
							</button>

						</div>
					</form>
				</div>
				<div class="example-code">
				
				<!-- 	<a data-toggle="modal" data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#" onclick="getColorAndSize()">
						<i class="glyph-icon icon-plus-square-o"></i>
					</a><br><br> -->

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
							<s:iterator value="list" status="status">
							<tr>
								<td>${(pageNum-1)*10+status.count }</td>
								<td class="font-bold text-left">${item_number}</td>
								<td><a href="javascript:;">${color_number }</a>
								</td>
								<td class="font-bold text-left">${size}</td>
								<td><a href="javascript:;">${brand }</a>
								</td>
								<td class="font-bold text-left">${factory_price }</td>
								<td><a href="javascript:;">${retail_price }</a>
								</td>

								<td>
									
									<a data-toggle="modal" data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="getItemById(${id})">
										<i class="glyph-icon icon-edit"></i> </a>
									<a data-toggle="modal" data-target="#deleteModal"  class="btn small bg-red tooltip-button" data-placement="top" title="删除"  href="#" onclick="getDeleteId(${id})">
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
										<a href="${pageContext.request.contextPath }/item_query.do?pageNum=${pageNum-1}&item_number=${item_number}&brand=${brand}&color_number=${color_number}&size=${size}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath }/item_query.do?pageNum=${i}&item_number=${item_number}&brand=${brand}&color_number=${color_number}&size=${size}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/item_query.do?pageNum=${pageNum+1}&item_number=${item_number}&brand=${brand}&color_number=${color_number}&size=${size}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
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
										<a href="${pageContext.request.contextPath }/item_list.do?pageNum=${pageNum-1}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath }/item_list.do?pageNum=${i}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/item_list.do?pageNum=${pageNum+1}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
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

		<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal" action="${pageContext.request.contextPath }/item_add.do" method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">添加货号</h4>
						</div>
						<div class="modal-body" style="margin:20px;">
							<input type="hidden" name="pageNum" value="${pageNum }">
							  <div class="form-group">
							    <label for="storageNum">货号</label>
							    <input type="text" class="form-control" id="" name="item_number" placeholder="请输入货号">
							  </div>
							  <div class="form-group">
							    <label for="storageName">品名</label>
							    <input type="text" class="form-control" id="" name="brand" placeholder="请输入品名">
							  </div>
							   <div class="form-group">
							    <label for="contactsName">色号</label>
							    <select  class="form-control" id="addColor" name="color_number">
							    
							    </select>
							  </div>
							   <div class="form-group">
							    <label for="contacts_phone">尺码</label>
							    <select class="form-control" id="addSize" name="size">
							    	
							    </select>
							  </div>
						    	<div class="form-group">
							    	<label for="storage_num">面料</label>
							    	<input type="text" class="form-control" id="" name="shell" placeholder="请输入面料">
							  	</div> 
							  	<div class="form-group">
							    	<label for="storage_num">里料</label>
							    	<input type="text" class="form-control" id="" name="lining" placeholder="请输入里料">
							  	</div> 
							  	<div class="form-group">
							    	<label for="storage_num">出厂价</label>
							    	<input type="text" class="form-control" id="" name="factory_price" placeholder="请输入出厂价">
							  	</div> 
							  	<div class="form-group">
							    	<label for="storage_num">零售价</label>
							    	<input type="text" class="form-control" id="" name="retail_price" placeholder="请输入零售价">
							  	</div> 
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">添加</span>
							</button>
							<button type="reset" class="btn medium primary-bg" style="margin-left:10px;" data-dismiss="modal" aria-label="Close">
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
					<form class="form-horizontal" action="${pageContext.request.contextPath }/item_edit.do" method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">更新货号</h4>
						</div>
						<div class="modal-body" style="margin:20px;">
							<input type="hidden" name="pageNum" value="${pageNum }">
							<input type="hidden" name="id" id="editId">
							  <div class="form-group">
							    <label for="storageNum">货号</label>
							    <input type="text" class="form-control" id="editNumber" name="item_number" placeholder="请输入货号">
							  </div>
							  <div class="form-group">
							    <label for="storageName">品名</label>
							    <input type="text" class="form-control" id="editBrand" name="brand" placeholder="请输入品名">
							  </div>
							   <div class="form-group">
							    <label for="contactsName">色号</label>
							    <select  class="form-control" id="editColor" name="color_number">
							    
							    </select>
							  </div>
							   <div class="form-group">
							    <label for="contacts_phone">尺码</label>
							    <select class="form-control" id="editSize" name="size">
							    	
							    </select>
							  </div>
							  	<div class="form-group">
							    	<label for="storage_num">面料</label>
							    	<input type="text" class="form-control" id="editShell" name="shell" placeholder="请输入里料">
							  	</div> 
						    	<div class="form-group">
							    	<label for="storage_num">里料</label>
							    	<input type="text" class="form-control" id="editLining" name="lining" placeholder="请输入面料">
							  	</div> 
							  	<div class="form-group">
							    	<label for="storage_num">出厂价</label>
							    	<input type="text" class="form-control" id="editFactory" name="factory_price" placeholder="请输入出厂价">
							  	</div> 
							  	<div class="form-group">
							    	<label for="storage_num">零售价</label>
							    	<input type="text" class="form-control" id="editRetail" name="retail_price" placeholder="请输入零售价">
							  	</div> 
						  </div>
						<div class="modal-footer">
							<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
								<span class="button-content">更新</span>
							</button>
							<button type="reset" class="btn medium primary-bg" style="margin-left:10px;" data-dismiss="modal" aria-label="Close">
								<span class="button-content">取消</span>
							</button>
						</div>
					</form>
					</div>
				</div>
			</div>
		<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal" action="${pageContext.request.contextPath }/item_delete.do">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">更新货号</h4>
						</div>
						<div class="modal-body" style="margin:20px;">
							<input type="hidden" name="id" id="deleteId">
							<p>确定删除吗？</p>
							<div class="modal-footer">
								<button type="submit" class="btn medium primary-bg" style="margin-left:10px;" title="">
									<span class="button-content">删除 </span>
								</button>
								<button type="reset" class="btn medium primary-bg" style="margin-left:10px;" data-dismiss="modal" aria-label="Close">
									<span class="button-content">取消</span>
								</button>
							</div>
						</div>
					</form>
					</div>
				</div>
			</div>
			
	</body>

</html>
