<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!-- AUI Documentation -->
<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>权限设置</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicons -->


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


		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/assets/themes/minified/fides/responsive.min.css">

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/manage/documentation/css/style.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath }/manage/documentation/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/manage/jquery_treeview/jquery.treeview.css">
		<!-- Fides Admin JS -->

		<script src="${pageContext.request.contextPath }/manage/documentation/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/manage/documentation/js/jquery.min.js"></script>

	</head>

	<body>

	<div id="page-title">
			<h3>
				Welcome to 权限设置 <small></small>
			</h3>

	</div>
	<!-- #page-title -->
	<div id="page-content">
		
	<form class="form-horizontal" action="${pageContext.request.contextPath }/role_setPrivilege.do" method="post" >
     <div class="modal-body" style="margin:20px;">
     <input type="hidden" name="id" value="${id }"/>
      <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
     <ul id="PrivilegeTree">
     	<s:iterator value="topPrivilegeList">
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
      <hr>
      <div>
       	<button type="submit"class="btn medium primary-bg" style="margin-left: 30px;">
		<span class="button-content">确定</span></button>
		<button type="reset"class="btn medium primary-bg" style="margin-left: 30px;" onclick="window.history.go(-1)">
		<span class="button-content">取消</span></button>
      </div>
      </form>
		

	</div>
	<!-- #page-content -->
	

<script type="text/javascript" src="${pageContext.request.contextPath }/manage/jquery_treeview/jquery.treeview.min.js"></script>
<script type="text/javascript">
	
	//显示权限树
	$(function(){
		$("#PrivilegeTree").treeview();
	});
	
	// 增加onclick事件处理函数			
	$("input[name=privilegeIds]").click(function(){
		// 当选中或取消某个权限时，同时也选中或取消所有的下级权限
		$(this).siblings("ul").find("input").attr("checked", this.checked);

		// 当选中某个权限时，应同时选中他的直系上的权限。
		if(this.checked == true){ // 可以直接写为 if(this.checked){..}
			$(this).parents("li").children("input[name=privilegeIds]").attr("checked", true);
		}
		
		// 当取消某个权限时，如果同级的权限都没有选择，就也取消上级权限
		else{
			if( $(this).parent().siblings("li").children("input:checked").size() == 0 ){
				$(this).parent().parent().siblings("input").attr("checked", false);
			}
		}
		
	});
</script>
</body>

</html>




