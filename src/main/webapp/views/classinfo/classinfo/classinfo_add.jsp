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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <base href="<%=basePath%>">
    <title>班级管理</title>
    <jsp:include page="${pageContext.request.contextPath}/views/common/script.jsp"/>
    <script src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
</head>
<body>

<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li>班级管理</li>
        <li>添加班级</li>
    </ul>
</div>

<form action="classinfo/add" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级编号</label>
                <div class="col-sm-9">
                	<input type="text" readonly="readonly" name="classId" class="form-control input-sm" placeholder="请输入编号"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">班级名称</label>
                <div class="col-sm-9">
                	<input type="text" name="className" class="form-control input-sm" placeholder="请输入班级名称"/>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">开班日期</label>
                <div class="col-sm-9">
               			<input type="text" name="classStartTime" readonly="readonly" onclick="WdatePicker()" class="form-control input-sm" placeholder="请输入开班日期"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">结束日期</label>
                <div class="col-sm-9">
               		 <input type="text" name="classEndTime" readonly="readonly" onclick="WdatePicker()" class="form-control input-sm" placeholder="请输入结束日期"/>
                </div>
            </div>
        
        </div>

    </div>
        <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">班级人数</label>
                <div class="col-sm-9">
               			<input type="text" name="classNumber" class="form-control input-sm" placeholder="请输入班级人数"/>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教师</label>
                <div class="col-sm-9">
               		 <select name="staffId" class="form-control input-sm">
               		 	<c:forEach items="${staffInfo }" var="staff">
                     	<option value="${staff.staffId }">${staff.staffName }</option>
                     	</c:forEach>
          
                     </select>
                </div>
            </div>

        </div>

    </div>
        <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">学科</label>
                <div class="col-sm-9">
               	   <select name="disciplineId" class="form-control input-sm">
                    	<c:forEach items="${disciplineInfo }" var="discip">
                     	<option value="${discip.disciplineId }">${discip.disciplineName }</option>
                     	</c:forEach>
                     </select>
                </div>
            </div>
        </div>
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程表</label>
                <div class="col-sm-9">
               		 <select name="syllabusId" class="form-control input-sm">
                       	<c:forEach items="${syllabusInfo }" var="syll">
                     	<option value="${syll.syllabusId }">${syll.syllabusName }</option>
                     	</c:forEach>
                     </select>
                </div>
            </div>

        </div>

    </div>
           <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教室</label>
                <div class="col-sm-9">
               	   <select name="classroomId" class="form-control input-sm">
                     	<c:forEach items="${classroomInfo }" var="room">
                     	<option value="${room.classroomId }">${room.classroomName }</option>
                     	</c:forEach>
                     </select>
                </div>
            </div>
        </div>

    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">描述</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述</label>
                <div class="col-sm-9">
                	<textarea name="classDesc" class="form-control"></textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="保存"/>

              <a class="btn btn-warning" href="/classinfo/list.do">返回上一级</a>
        </div>
    </div>
</form>

</body>
</html>