<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<%@ taglib prefix="s" uri="http://jyw.com" %>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>营销活动</title>
	<jsp:include page="${pageContext.request.contextPath}/views/common/script.jsp"/>
</head>
<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">招生管理</a></li>
        <li>学员池</li>
    </ul>
</div>
<form action="studentpool/list.do" method="post" class="form-inline">
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >

     <div class="form-group">
         <label class="" for="activename">学员姓名：</label>
        <input type="text" name="studentName" class="form-control" id="activename" placeholder="请输入学员姓名">
      </div>

    <input type="submit"   class="btn btn-danger"     value="查询"/>
    <a  class="btn btn-success"  href="view/recruitstudent/studentpool/studentpool_add.jsp">添加学员</a>
    
</div>
<div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display:${empty info?'none':'block'} ">
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			
		</button>
		<p align="center" style="color: red;">${info }</p>
	</div>	
</div>
<div class="row" style="padding:15px; padding-top:0px; " align="right">
		<display:table class="table  table-condensed table-striped" name="list"  pagesize="10" requestURI="studentpool/list.do">
		<display:column property="studentId" title="编号" />
		<display:column  href="studentpool/show.do" paramId="studentId" paramProperty="studentId"  property="studentName" title="姓名"/>
		<display:column  property="studentSex" title="性别"/>
		<display:column  property="studentAge" title="年龄"/>
		<display:column  property="studentTellphone" title="手机号码"/>
		<display:column  property="studentEmail" title="电子邮件"/>
		<display:column  property="studentSchool" title="所在院校"/>
		<display:column href="studentpool/load.do" paramId="studentId" paramProperty="studentId" value="修改"  title="修改"/>
		<display:column href="studentpool/receive.do" paramId="studentId" paramProperty="studentId" value="领取学员"  title="领取学员"/>
		<display:column href="studentpool/delete.do"  paramId="studentId" paramProperty="studentId"  value="删除"  title="删除"/>
</display:table>               	                
</div>
</form>
</body>
</html>