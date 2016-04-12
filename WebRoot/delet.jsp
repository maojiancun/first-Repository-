<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="test.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delet.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <p >请输入你要删除那条信息的学号 </p>
   <form action="delet.jsp" method="post">
     <table>
     <tr>
       <td>你确定要删除学号为</td><td><input type="text" name="number"></td><td>的信息？</td>
       </tr>
     </table> 
     <input type="submit"  value="确定">
    
    </form>
    <% 
    request.setCharacterEncoding("UTF-8");
    String number=request.getParameter("number");
    
    Student student=new Student();
    student.setNumber(number);
    
     caozuo c=new caozuo();
     c.delect(student);
    %>
     <form action="index.jsp"  method="post">
   <input type="submit" value="查看数据库信息">
  
  </form>
  </body>
</html>
