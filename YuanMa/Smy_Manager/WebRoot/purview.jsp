<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>    
<title>My JSP 'user.jsp' starting page</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/info.css">
<script type="text/javascript">
		function deleteOper(obj,id){
			if(confirm("是否确认删除该操作员?")){
				obj.href = "user!remove.action?user.id=" + id;
			}
		}
		function checkChoose(){
			var flag=false;
			var chks = document.getElementsByName("userPur.purview_ids");
			for(var i=0;i<chks.length;i++){
				if(chks[i].checked){
					flag=true;
					break;
				}
			}
			
			if(flag==false){
				alert("请选择权限");
			}
			return flag;
		}
	</script>
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
  
<body>
  	<div class="map"><label class="curr">当前位置：</label>
  	<label class="curr1">系统权限管理 &gt; 权限管理  &gt; 权限重置</label>
  	</div>
<div>
  <form name="form1" method="post" action="<%=basePath %>insertUserPur" onsubmit="return checkChoose();">
    <table border="1" width="100%">
      <tr>
        <td width="163" class="td1">用户名</td>
        <td width="1158" colspan="3" class="td1">
          <select name="userid">
            <c:forEach items="${users}" var="user">
            	<option value="${user.userid}" ${user.userid eq u.userid?"selected":""}>${user.uname}</option>
            </c:forEach>
          </select>
        </td>
      </tr>
      <tr>
        <td colspan="4" class="td1"><span class="STYLE1">权限设置</span></td>
      </tr>
      <tr>
        <td class="td1">系统设置管理</td>
        <td colspan="3" class="td1">
        <c:forEach items="${purs}" var="p">
        	<c:if test="${p.menu_id==1}">
          		<input type="checkbox" name="purview_ids" value="${p.pid}">${p.pname}
          	</c:if>
		</c:forEach>
       </td>
      </tr>
      <tr>
        <td class="td1">部门信息管理</td>
        <td colspan="3" class="td1">
        <c:forEach items="${purs}" var="p">
        	<c:if test="${p.menu_id==2}">
          		<input type="checkbox" name="userPur.purview_ids" value="${p.pid}">${p.pname}
          	</c:if>
		</c:forEach>
		</td>
      </tr>
      <tr>
        <td class="td1">员工信息管理</td>
        <td colspan="3" class="td1">
        	<c:forEach items="${purs}" var="p">
        	<c:if test="${p.menu_id==3}">
          		<input type="checkbox" name="userPur.purview_ids" value="${p.pid}">${p.pname}
          	</c:if>
		</c:forEach>
        </td>
      </tr>      
    </table>
	
	<div class="div2" style="margin-top:20px;">
	    		<span><input type="submit" value="确 定" class="btn" style="width:120px;height:30px;"  /></span>
	    		<span style="margin-left:20px;"><input type="button" value="重 置" class="btn" style="width:120px;height:30px;" /></span>
   	</div>
  </form>
  
</div>
</body>
</html>



