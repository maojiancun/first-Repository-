<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="test.*" %>
<%@page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
   <%
       request.setCharacterEncoding("UTF-8");
     Connection con=null;
		Statement stmt=null;
		ResultSet rs;
		//try{
			
			 DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			String dburl="jdbc:mysql://localhost:3306/xin";
			String user="root";
			String password="123456";
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xin",user,password);
			
			stmt=con.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
			String sql="select * from student";
			rs=stmt.executeQuery(sql);
			  while(rs.next()){
    %>
    <tr>
       <td><%=rs.getInt("number") %> </td>
       <td><%=rs.getString("name") %> </td>
       <td><%=rs.getString("sex") %> </td>
       <td><%=rs.getInt("banji") %> </td>
       <td><%=rs.getString("bumen") %> </td>
       <td><%=rs.getString("zhuanye") %> </td></br>
      </tr>
    <% 	
		}/* }catch(Exception e){
			e.printStackTrace();
			
		} */%>
		 <form action="add.jsp"  method="post">
   <input type="submit" value="增加数据库信息">
   </form>
    <form action="delet.jsp"  method="post">
   <input type="submit" value="删除数据库信息">
   </form>
    <form action="update.jsp"  method="post">
   <input type="submit" value="修改数据库信息">
  
  </form>
  <form action="index.jsp"  method="post">
   <input type="submit" value="显示数据库信息">
  
  </form>
  
 
  
 
  </body>
</html>
