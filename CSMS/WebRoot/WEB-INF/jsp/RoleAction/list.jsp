<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!-- AUI Documentation -->
<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>角色管理</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicons -->

		<link rel="stylesheet" href="${pageContext.request.contextPath }/manage/documentation/css/bootstrap.min.css">

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

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/assets/themes/minified/fides/common.min.css">

		<link id="theme-animations" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/assets/themes/minified/fides/animations.min.css">

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/assets/themes/minified/fides/responsive.min.css">

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/css/style.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/css/DialogBySHF.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/manage/documentation/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/manage/jquery_treeview/jquery.treeview.css">
		<!-- Fides Admin JS -->

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/aui-production.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/core/raphael.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/widgets/charts-justgage.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/DialogBySHF.js"></script>
		<!--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>-->
		<script src="${pageContext.request.contextPath }/manage/documentation/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/manage/documentation/js/jquery.min.js"></script>
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

		<div id="page-title">
				<h3>
					Welcome to 角色管理 <small></small>
				</h3>

			</div>
			<!-- #page-title -->
			<div id="page-content">
			

				<!-- 主要表格 -->
				<!-- 表格 -->
				<div class="example-box">

					<div class="example-code">
						<s:if test="#session.user.hasPrivilegeByName('角色添加')">
							<a data-toggle="modal"  data-target="#addModal" title="添加" class="tooltip-button btn small bg-yellow" title="添加" href="#">
								<i class="glyph-icon icon-plus-square-o"></i>
							</a><br><br>
						</s:if>
									
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>序号</th>
									<th>名称</th>
									<th>描述</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="list" status="status" >
									<tr>
									<td>${(pageNum-1)*10+status.count }</td>
									<td class="font-bold text-left" id="name_${id }">${name}</td>
									<td id="description_${id}">${description}</td>
									<td>
									<s:if test="#session.user.hasPrivilegeByName('角色修改')">
										<a data-toggle="modal"  data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top"  title="更新" onclick="reshow(${id})">  
										<i class="glyph-icon icon-edit"></i> </a>
									</s:if>
									<s:if test="#session.user.hasPrivilegeByName('角色删除')">
										<a data-toggle="modal"  data-target="#deleteModal" href="#" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="getId(${id})">
										<i class="glyph-icon icon-remove"></i> </a>
									</s:if>
									<s:if test="#session.user.hasPrivilegeByName('设置权限')">
										<a href="${pageContext.request.contextPath }/role_setPrivilegeUI.do?id=${id}&pageNum=${pageNum}" class="btn small bg-red tooltip-button" data-placement="top" title="设置权限">
										<i class="glyph-icon icon-sun-o"></i> </a>
									</s:if>
									</td>
								</tr>
								</s:iterator>
							</tbody>
						</table>
						
						<s:if test="totalRecord>0">
							<div class="col-md-3" style="float:right; margin-bottom:20px; width:500px;">
								<div class="button-group center-div">
									<a href="${pageContext.request.contextPath }/role_list.do?pageNum=${pageNum-1}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
									<i class="glyph-icon icon-chevron-left"></i> </a>
									<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
										<a href="${pageContext.request.contextPath }/role_list.do?pageNum=${i}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
									</s:iterator>
									<a href="${pageContext.request.contextPath }/role_list.do?pageNum=${pageNum+1}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
									<i class="glyph-icon icon-chevron-right"></i> </a>
								</div>
							</div>
						</s:if>
						<!-- end 分页 -->
					</div>



			</div>
			<!-- #page-content -->
		</div>
		<!-- #page-main -->
		
		<!-- #page-content -->
		
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/role_add.do" method="post"onsubmit="return validate('add')">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加角色</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
		  <div class="form-group">
		    <label for="exampleInputEmail1">名称</label>
		    <span style="color:red;margin-left:20px;" id="RolenameText"></span>
		    <input type="text" class="form-control" id="RoleName"name="name" placeholder="请输入角色名称"onchange="removeRolenameText()">
		  </div>
		  </br>
		  <div class="form-group">
		    <label for="exampleInputEmail1">描述</label>
		    <input type="text" class="form-control" name="description" placeholder="请数据该角色的描述信息">
		  </div>
		   </br>
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">添加</span></button>
		<button type="reset" class="btn medium primary-bg" data-dismiss="modal" aria-label="Close" style="margin-left:10px;" title="">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>






<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/role_edit.do" method="post"onsubmit="return validate('upadate')">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">更新角色</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
		  <div class="form-group">
		    <label for="updateId">序号</label>
		    <input type="text" class="form-control" readonly="readonly" name="id" id="updateId">
		  </div>
		  </br>
		  <div class="form-group">
		    <label for="updateName">角色名称</label>
		    <span style="color:red;margin-left:20px;" id="updateNameText"></span>
		    <input type="text" class="required form-control" placeholder="角色名" id="updateName" name="name" onchange="removeupdateNameText()">
		  </div>
		   </br>
		  <div class="form-group">
		    <label for="updateDescription">角色描述</label>
		    <input type="text" class="form-control" id="updateDescription" placeholder="描述" name="description">
		  </div>
		   </br>
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">修改 </span></button>
		<button type="reset"class="btn medium primary-bg" style="margin-left:10px;" title="" data-dismiss="modal" aria-label="Close">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>




<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/role_delete.do" method="post">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">删除角色</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      <input type="hidden" class="form-control" name="id" id="deleteId" >
      <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
		  <p>确认删除吗？</p>
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">确定</span></button>
		<button type="reset"class="btn medium primary-bg"  data-dismiss="modal" aria-label="Close" style="margin-left:10px;" title="">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>

<div class="modal fade" id="privilegeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" method="post" action="${pageContext.request.contextPath }/role_setPrivilege.do">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">设置权限</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
     <ul id="PrivilegeTree">
     	<s:iterator value="#application.topPrivilegeList">
     		<%-- 第一层 --%>
			<li>
				<input type="checkbox" style="width: 13px;" name="privilegeIds" value="${id}" id="cb_${id}" <s:property value="%{id in privilegeIds ? 'checked' : ''}"/> />
				<label for="cb_${id}"><span class="folder">${name}</span></label>
				<ul>
					<%-- 第二层 --%>
					<s:iterator value="children">
						<li>
							<input type="checkbox" style="width: 13px;" name="privilegeIds"
							value="${id}" id="cb_${id}"
							<s:property value="%{id in privilegeIds ? 'checked' : ''}"/> />
							<label for="cb_${id}"><span class="folder">${name}</span></label>
							<ul>
								<!--  第三层 -->
								<s:iterator value="children">
									<li>
										<input type="checkbox" style="width: 13px;" name="privilegeIds"
										value="${id}" id="cb_${id}"
										<s:property value="%{id in privilegeIds ? 'checked' : ''}"/> />
										<label for="cb_${id}"><span class="folder">${name}</span></label>
									</li>
								</s:iterator>
							</ul>
						</li>
					</s:iterator>
				</ul>
			</li>		
     	</s:iterator>
     </ul>
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">确定</span></button>
		<button type="reset"class="btn medium primary-bg"  data-dismiss="modal" aria-label="Close" style="margin-left:10px;" title="">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath }/manage/jquery_treeview/jquery.treeview.min.js"></script>
<script type="text/javascript">
	
	//用于更新回显
	function reshow(id){
		var url = "role_getJsonById.do";
		var params = {
				date:new Date(),
				id:id
		};
		
		$.getJSON(url,params,function(data){
			var role = data.role;
			$("#updateId").val(id);
			$("#updateName").val(role.name);
			$("#updateDescription").val(role.description);
		});
		
	}
	/* 
	function reshow(id){
		var name = $("#name_"+id).text();
		var description = $("#description_"+id).text();
		$("#updateId").val(id);
		$("#updateName").val(name);
		$("#updateDescription").val(description);
	}
	*/
	//用户删除
	function getId(id){
		$("#deleteId").val(id);
	}
	//显示权限树
function validate(method){
			if(method=='add'){
			
				var RoleName = $("#RoleName").val();	
				{
					if(RoleName == null || RoleName ==""){
						$("#RolenameText").text("角色名不能为空！");
						return false;
					}else {
						return true;
					}
				}
			}

	if (method == 'upadate') {
			var updateName = $("#updateName").val();
			{
				if (updateName == null || updateName == "") {
					$("#updateNameText").text("角色名不能为空！");
					return false;
				} else {
					return true;
				}
			}
		}

	}

	//移除提示
	function removeRolenameText() {

		$("#RolenameText").text("");
	}
	function removeupdateNameText() {

		$("#updateNameText").text("");
	}
</script>
</body>

</html>




