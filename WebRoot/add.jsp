<%@page import="java.sql.Connection" %>
<%@page import="test.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
    <form action="add.jsp"  method="post">
    <p align="center">请在下表中增加数据</p>
    <table>
    
     <tr>
       <td>学号</td><td>姓名</td><td>性别</td><td>班级</td><td>部门</td><td>专业</td>
       </tr>
       <tr>
        <td><input type="text" name="number" value=" "></td>
         <td><input type="text" name="name" value=" "></td>
          <td><input type="text" name="sex" value=" "></td>
           <td><input type="text" name="banji" value=" "></td>
            <td><input type="text" name="bumen" value=" "></td>
             <td><input type="text" name="zhuanye" value=" "></td>
       </tr>
    </table>
    <input type="submit" value="增加数据">
    </form>
   <% 
    request.setCharacterEncoding("UTF-8");
    String number=request.getParameter("number");
    String name=request.getParameter("name");
    String sex=request.getParameter("sex");
    String banji=request.getParameter("banji");
    String bumen=request.getParameter("bumen");
    String zhuanye=request.getParameter("zhuanye");
    
    
    Student student=new Student();
    student.setNumber(number);
    student.setName(name);
    student.setSex(sex);
    student.setBanji(banji);
    student.setBumen(bumen);
    student.setZhuanye(zhuanye);
    
   
     caozuo cz=new caozuo();
     cz.add(student);
  %>
  <form action="index.jsp"  method="post">
   <input type="submit" value="查看数据库信息">
  
  </form>
  </body>
</html>
