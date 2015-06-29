<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!-- AUI Documentation -->
<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>用户管理</title>
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
					Welcome to 用户管理 <small></small>
				</h3>

			</div>
			<!-- #page-title -->
			<div id="page-content">

				<!-- 主要表格 -->
				<!-- 表格 -->
				<div class="example-box">
					<s:if test="#session.user.hasPrivilegeByName('用户查询')">
					<div class="example-code">
						<form action="${pageContext.request.contextPath }/user_query.do" method="post">
							<div class="form-row">
								<div class="form-label col-md-2 labelstyle"
									style="margin-right:5px;">
									<label for="queryusername"> 用户姓名: </label>
								</div>
								<div class="form-input col-md-3 textstyle">
									<input style="width:200px;height:28px;" type="text" name="userName"id="queryusername">
								</div>
								<div class="form-label col-md-2 labelstyle"
									style="margin-right:5px;width:120px;">
									<label for="queryloginName"> 用户登录号: </label>
								</div>
								<div style="width:200px;height:28px;" class="form-input col-md-3 textstyle">
									<input type="text" name="loginName" id="queryloginName">
								</div>
								
								<button type="submit"class="btn medium primary-bg" style="margin-left:10px;">
									<span class="button-content">查询 </span>
								</button>
							</div>
							<div>
							</div>
						</form>
					</div>
					</s:if>
					<div class="example-code">
						<s:if test="#session.user.hasPrivilegeByName('用户添加')">
							<a data-toggle="modal"  data-target="#addModal" title=".icon-plus-square-o" class="tooltip-button btn small bg-yellow" title="添加" href="#">
								<i class="glyph-icon icon-plus-square-o"></i>
							</a><br><br>
						</s:if>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>序号</th>
									<th>用户登录号</th>
									<th>用户姓名</th>
									<th>角色</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="list" status="status" >
									<tr>
									<td>${(pageNum-1)*10+status.count }</td>
									<td class="font-bold text-left" id="loginName_${id }">${loginName }</td>
									<td><a href="javascript:;" id="userName_${id }">${userName }</a></td>
									<td id="roleName_${id }">
										<!-- 如果是 超级管理员 -->
										<s:if test="loginName == 'admin'">超级管理员</s:if>
										<s:iterator value="roles">
											<span>${name}</span>
										</s:iterator>
									</td>
									<td>
									<s:if test="loginName != 'admin'">
										<s:if test="#session.user.hasPrivilegeByName('用户修改')">
											<a data-toggle="modal"  data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top" title="更新" onclick="getDetail(${id},'${intro }')">  
											<i class="glyph-icon icon-edit"></i> </a>
										</s:if>
										<s:if test="#session.user.hasPrivilegeByName('用户删除')">
											<a data-toggle="modal"  data-target="#deleteModal" href="#" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="showDeleteId(${id})">
											<i class="glyph-icon icon-remove"></i> </a>
										</s:if>
										<s:if test="#session.user.hasPrivilegeByName('重置密码')">
											<a href="${pageContext.request.contextPath }/user_resetPwd.do?id=${id}&pageNum=${pageNum}" class="btn small bg-green tooltip-button"  title="重置密码" onclick="confirm('你确定要将该用户密码重置为123456吗？')">  
											<i class="glyph-icon icon-refresh"></i> </a>
										</s:if>
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
										<a href="${pageContext.request.contextPath }/user_query.do?pageNum=${pageNum-1}&userName=${userName}&loginName=${loginName}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath }/user_query.do?pageNum=${i}&userName=${userName}&loginName=${loginName}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/user_query.do?pageNum=${pageNum+1}&userName=${userName}&loginName=${loginName}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
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
										<a href="${pageContext.request.contextPath }/user_list.do?pageNum=${pageNum-1}" class="btn large ui-state-default" <s:if test="pageNum == 1 ">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> </a>
										<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
											<a href="${pageContext.request.contextPath }/user_list.do?pageNum=${i}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
										</s:iterator>
										<a href="${pageContext.request.contextPath }/user_list.do?pageNum=${pageNum+1}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
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
		</div>
		<!-- #page-main -->
		
		<!-- #page-content -->
		
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/user_add.do" method="post">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
       <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
		  <div class="form-group">
		    <label for="loginName">用户登录号</label>
		    <input type="text" class="form-control" id="loginName" name="loginName" placeholder="请输入用户账号">
		  </div>
		  <div class="form-group">
		    <label for="userName">用户姓名</label>
		    <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户姓名">
		  </div>
		  <div class="form-group">
		    <label for="password">用户密码</label>
		    <input type="password" class="form-control" id="password" name="password" placeholder="请输入用户密码">
		  </div>
		  <div class="form-group">
		    <label for="intro">用户简介</label>
		   <textarea class="form-control" rows="3" id="intro" name="intro" placeholder="请输入用户简介"></textarea>
		  </div>
		  <div class="form-group">
		  	<label for="intro">分配角色(按住ctrl可以多选)</label>
		  	<select name="roleIds" multiple="true" size="20" style="height:100px;">
              <s:iterator value="roleList">
              	 <option value="${id }">${name }</option>
              </s:iterator>
            </select>
		  </div>
		  
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">添加</span></button>
		<button type="reset"class="btn medium primary-bg" data-dismiss="modal" aria-label="Close" style="margin-left:10px;" title="">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>






<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/user_edit.do" method="post">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">更新用户</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      		<input type="hidden" name="id" id="showid">
      		 <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
		  <div class="form-group">
		    <label for="loginName">用户登录号</label>
		    <input type="text" class="form-control" id="showloginName" name="loginName">
		  </div>
		  <div class="form-group">
		    <label for="userName">用户姓名</label>
		    <input type="text" class="form-control" id="showuserName" name="userName">
		  </div>
		  <div class="form-group">
		    <label for="intro">用户简介</label>
		   <textarea class="form-control" rows="3" id="showintro" name="intro"></textarea>
		  </div>
		   <div class="form-group">
		  	<label for="intro">分配角色(按住ctrl可以多选)</label>
		  	<select name="roleIds" class="roleNames" multiple="true" size="20" style="height:100px;">
              <s:iterator value="roleList">
              	 <option value="${id }">${name }</option>
              </s:iterator>
            </select>
		  </div>
      </div>
      <div class="modal-footer">
       	<button type="submit"class="btn medium primary-bg" style="margin-left:10px;" title="">
		<span class="button-content">更新 </span></button>
		<button type="reset" class="btn medium primary-bg" data-dismiss="modal" aria-label="Close" style="margin-left:10px;">
		<span class="button-content">取消</span></button>
      </div>
      </form>
    </div>
  </div>
</div>




<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/user_delete.do">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">删除用户</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
      	<input type="hidden" name="id" id="deleteId">
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

<script type="text/javascript">

	function getDetail(id){
		var url = "user_getJsonById.do";
		var params = {
				date:new Date(),
				id:id
		}
		$.getJSON(url,params,function(data){
			var user = data.user;
			var roles = user.roles;
			
			$("#showid").val(id);
			$("#showloginName").val(user.loginName);
			$("#showuserName").val(user.userName);
			$("#showintro").val(user.intro);
			
			$.each($(".roleNames > option"),function(i,n){
				$(n).removeAttr("selected");
			});
			$.each(roles,function(i,r){
				$.each($(".roleNames > option"),function(i,n){
					if(r.name.indexOf($(n).text())>=0){
						$(n).attr("selected","selected");
					}
				});
			});
		});
		
		
		
		
		
	}
	
	/* 
	function getDetail(id,intro){
		var loginName = $("#loginName_"+id).text();
		var userName = $("#userName_"+id).text();
		var roleName = $("#roleName_"+id+" span").text();
		
		$("#showid").val(id);
		$("#showloginName").val(loginName);
		$("#showuserName").val(userName);
		$("#showintro").val(intro);
		
		$.each($(".roleNames > option"),function(i,n){
			$(n).removeAttr("selected");
		});
		$.each($(".roleNames > option"),function(i,n){
			if(roleName.indexOf($(n).text())>=0){
				$(n).attr("selected","selected");
			}
		});
	}
	*/
	function showDeleteId(id){
		$("#deleteId").val(id);
	}
	
</script>
</body>

</html>




