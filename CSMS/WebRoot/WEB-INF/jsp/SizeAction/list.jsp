<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!-- AUI Documentation -->
<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>尺码管理</title>
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
		<!-- Fides Admin JS -->

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/aui-production.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/core/raphael.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/minified/widgets/charts-justgage.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath }/manage/documentation/assets/js/DialogBySHF.js"></script>
		<!--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>-->
		<script src="${pageContext.request.contextPath }/manage/documentation/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/manage/documentation/js/jquery.min.js"></script>

	</head>

	<body>

		<div id="page-title">
				<h3>
					Welcome to 尺码管理 <small></small>
				</h3>

			</div>
			<!-- #page-title -->
			<div id="page-content">
			

				<!-- 主要表格 -->
				<!-- 表格 -->
				<div class="example-box">

					<div class="example-code">
						<s:if test="#session.user.hasPrivilegeByName('尺码添加')">
							<a data-toggle="modal"  data-target="#addModal" title="添加" class="tooltip-button btn small bg-yellow" title="添加" href="#">
								<i class="glyph-icon icon-plus-square-o"></i>
							</a><br><br>
						</s:if>			
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>序号</th>
									<th>名称</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="list" status="status" >
									<tr>
									<td>${(pageNum-1)*10+status.count }</td>
									<td class="font-bold text-left" id="name_${id }">${num}</td>
									<td>
									<s:if test="#session.user.hasPrivilegeByName('尺码修改')">
										<a data-toggle="modal"  data-target="#updateModal" href="#" class="btn small bg-blue-alt tooltip-button" data-placement="top"  title="更新" onclick="reshow(${id})">  
										<i class="glyph-icon icon-edit"></i> </a>
									</s:if>
									<s:if test="#session.user.hasPrivilegeByName('尺码删除')">
										<a data-toggle="modal"  data-target="#deleteModal" href="#" class="btn small bg-red tooltip-button" data-placement="top" title="删除" onclick="getId(${id})">
										<i class="glyph-icon icon-remove"></i> </a>
									</s:if>
									</td>
								</tr>
								</s:iterator>
							</tbody>
						</table>
						
						<!-- start分页,有数据的时候才显示分页. -->
						<s:if test="totalRecord>0">
							<div class="col-md-3" style="float:right; margin-bottom:20px; width:500px;">
								<div class="button-group center-div">
									<a href="${pageContext.request.contextPath }/size_list.do?pageNum=${pageNum-1}" class="btn large ui-state-default" <s:if test="pageNum == 1">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-left"></i> 
									</a>
									<s:iterator begin="%{startPage}" end="%{endPage}" var="i">
										<a href="${pageContext.request.contextPath }/size_list.do?pageNum=${i}" class="btn large ui-state-default" <s:if test="pageNum==#i">disabled="disabled"</s:if>>${i }</a>
									</s:iterator>
									<a href="${pageContext.request.contextPath }/size_list.do?pageNum=${pageNum+1}" class="btn large ui-state-default" <s:if test="pageNum == totalPage">disabled="disabled"</s:if>>
										<i class="glyph-icon icon-chevron-right"></i> 
									</a>
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
      <form class="form-horizontal" action="${pageContext.request.contextPath }/size_add.do" method="post" onsubmit="return validate('add')">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加尺码</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
       	  <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
		  <div class="form-group">
		    <label for="exampleInputEmail1">名称</label>
            <span style="color:red;margin-left:20px;" id="SizeText"></span>
		    <input type="text" class="required form-control" id="Size" name="num" placeholder="请输入尺码" onchange="removeSizeText()">
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
      <form class="form-horizontal" action="${pageContext.request.contextPath }/size_edit.do" method="post" onsubmit="return validate('update')">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">更新尺码</h4>
      </div>
      <div class="modal-body" style="margin:20px;">
       <input type="hidden" class="form-control" name="pageNum" value="${pageNum }" >
		  <div class="form-group">
		    <label for="updateId">序号</label>
		    <input type="text" class="form-control" readonly="readonly" name="id" id="updateId">
		  </div>
		  </br>
		  <div class="form-group">
		    <label for="updateName">尺码名称</label>
		    <span style="color:red;margin-left:20px;" id="updateSizeText"></span>
		    <input type="text" class="required form-control" placeholder="请输入尺码" id="updateSize" name="num"onchange="removeupdateSizeText()">
		  </div>
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
      <form class="form-horizontal" action="${pageContext.request.contextPath }/size_delete.do" method="post">
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">删除尺码</h4>
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


<script type="text/javascript">
	
	//用于更新回显
	function reshow(id){
		var url = "size_getJsonById.do";
		$.getJSON(url,{date:new Date(),id:id},function(data){
			var size = data.size;
			$("#updateId").val(id);
			$("#updateSize").val(size.num);
		});
	}
	//用户删除
	function getId(id){
		$("#deleteId").val(id);
	}
	function validate(method){
	
		var reg = /^[1-9]\d{2}$/;
		
			if(method=='add'){
			
				var Size = $("#Size").val();	
				
				{
					if(Size == null || Size ==""){
						$("#SizeText").text("尺码不能为空！");
						return false;
					}else if(!reg.test(Size)){
						$("#SizeText").text("您输入的尺码不符合格式！");
						return false;
					}else {
						return true;
					}
				}
			}

	if (method == 'update') {
			var updateSize = $("#updateSize").val();
			{
				if (updateSize == null || updateSize == "") {
					$("#updateSizeText").text("尺码不能为空！");
					return false;
				} else {
					return true;
				}
			}
		}

	}

	//移除提示
	function removeSizeText() {
		$("#SizeText").text("");
	}
	function removeupdateSizeText() {
		$("#updateSizeText").text("");
	}
</script>
</body>

</html>




