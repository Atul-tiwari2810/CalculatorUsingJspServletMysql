<%--
  Created by IntelliJ IDEA.
  User: developer1
  Date: 4/26/2023
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*"%>




<%
  int first_no=Integer.parseInt(request.getParameter("num1"));
  int Second_no=Integer.parseInt(request.getParameter("num2"));
  int Result=Integer.parseInt(request.getParameter("num2"));

  try
  {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator", "root", "Atul@123");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("insert into users(first_no,Second_no,Result)values('"+first_no+"','"+Second_no+"','"+Result+"')");
    System.out.println("Data is successfully inserted!");
  }
  catch(Exception e)
  {
    System.out.print(e);
    e.printStackTrace();
  }
%>
