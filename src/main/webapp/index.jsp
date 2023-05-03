<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body >

<h1>MY CAlCULATOR</h1>

<form action="servlet" method="post">

  <table class="center">
    <tr>
      <label >Choose One Option</label>

      <select name="option">
        <option >--Select--</option>
        <option value="Addition" >Addition</option>
        <option value="Subtraction">Subtraction</option>
        <option value="Multiplication" >Multiplication</option>
        <option value="Division">Division</option>
      </select>
    </tr>
    <tr>
      <td>First Number :</td>
      <td><input type="text" name="num1" size="5" /></td>
    </tr>
    <tr>
      <td>Second Number :</td>
      <td><input type="text" name="num2" size="5" /></td>
    </tr>
    <tr>
      <td>Result </td>
      <td><input type="text" name="res" value="${serverResponse}" readonly></td>
    </tr>


  </table>
  <p />
  <input type="submit" value="Calculate" />
  <%-- <%
    if(request.getParameter("num1")!=null && request.getParameter("num1")!=""){
    int first_no=Integer.parseInt(request.getParameter("num1"));
    int Second_no=Integer.parseInt(request.getParameter("num2"));
    int Result=Integer.parseInt(request.getParameter("res"));

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
    }}
  %> --%>

</form>


</body>

</html>