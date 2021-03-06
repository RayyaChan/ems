<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="http://jyw.com" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <base href="<%=basePath%>">
    <title>沟通记录管理</title>
    <jsp:include page="${pageContext.request.contextPath}/views/common/script.jsp"/>
    <script src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

</head>
<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>学员管理</li>
        <li>添加沟通记录</li>
    </ul>
</div>

<form action="communicateinfo/add.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="communicateId" readonly="readonly" class="form-control input-sm" placeholder="请输入编号"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学员</label>
                <div class="col-sm-9">
                	 <select name="studentId" class="form-control input-sm">
               				<c:forEach items="${stulist}" var="stu">
               					<option value="${stu.studentId }">${stu.studentName }</option>
               				</c:forEach>
               			</select>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">沟通时间</label>
                <div class="col-sm-9">
               			<input type="text" name="communicateTime" onclick="WdatePicker()" readonly="readonly" class="form-control input-sm" placeholder="请输入沟通时间"/>
                </div>
            </div>
        </div>


    </div>


 
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">沟通内容</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">沟通内容</label>
                <div class="col-sm-9">
                	<textarea name="communicateContent" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="保存"/>

              <a class="btn btn-warning" href="communicateinfo/list.do">返回上一级</a>
        </div>
    </div>
</form>
</body>
</html>