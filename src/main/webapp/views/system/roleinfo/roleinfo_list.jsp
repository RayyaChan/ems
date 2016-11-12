<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>角色管理</title>
	<jsp:include page="${pageContext.request.contextPath}/views/common/script.jsp"/>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">系统管理</a></li>
        <li>角色管理</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
<form  action="roleinfo/list.do" method="post" class="form-horizontal">
	<div class="col-sm-2">角色名称:</div>
    <div class="col-sm-3">
    	<input type="text"  name="roleName" class="form-control input-sm"/>
    </div>
    <input type="submit"   class="btn btn-danger"   value="查询"/>
    <input type="button"   class="btn btn-success"   value="添加" onClick="javascript:window.location='<%=basePath%>view/system/roleinfo/roleinfo_add.jsp'"/>
    </form>
</div>
<div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display:${empty info?'none':'block'} ">
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			
		</button>
		<p align="center" style="color: red;">角色信息-${info }</p>
	</div>	
</div>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
	<display:table class="table  table-condensed table-striped" name="list"  pagesize="10" requestURI="roleinfo/list.do">
		<display:column property="roleId" title="角色编号"/>
		<display:column  property="roleName" title="角色名称"/>
		<display:column property="roleDesc" title="角色描述"/>
		<display:column href="roleinfo/load.do" paramId="roleId" paramProperty="roleId" value="修改"  title="修改"/>
		<display:column href="roleinfo/delete.do"  paramId="roleId" paramProperty="roleId"  value="删除"  title="删除"/>
	</display:table>
</div>

</body>
</html>