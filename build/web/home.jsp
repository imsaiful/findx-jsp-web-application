<!DOCTYPE html>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <style>
      .navbar-brand{
          color:red!important;
          font-size: 36px !important;
          font-weight: bold;
          font-style: italic;
          
      }
      .icon{
          width: 24px;
          height: 24px;
      }
      .X{
          font-size: 44px;
      }
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">find<span class="X"></span>X</a>
    </div>
    <ul class="nav navbar-nav">
        <li class="active"><a href="home.jsp"><img class="icon" src="images/home.png"><span>Home</span></a></li>
        <li class="active"><a href="report.jsp"><img class="icon" src="images/report.png"><span>Report</span></a></li>
        <li class="active"><a href="#"><img class="icon" src="images/notification.png"><span>Notification</span></a></li>

    </ul>
    <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" size="50" placeholder="Search your Item" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>
</nav>
<hr>
<div class="container">
    <div class="col-md-4">
    </div>
     <div class="col-md-8">
         <table>
        <%
           String str="";
           try
           {
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root","myammaji");
           Statement st=conn.createStatement();
           String sql ="select * from report";
           ResultSet rs = st.executeQuery(sql);
           while(rs.next()){
               %>
                <table>
               <tr><td>Item Name</td><td><%=rs.getString("item_name") %></td></tr>
               <tr><td>Location</td><td><%=rs.getString("item_location") %></td></tr>
               <tr><td>Date</td><td><%=rs.getString("date") %></td></tr>
               <tr><td>Desciption</td><td><%=rs.getString("item_description") %></td></tr>
                </table>
                <hr>
               <%
           
           }
           }
           catch(Exception e)
           {
               str=e.toString();
               out.print(e);
               e.printStackTrace();
           } 
           %>

        
    </div>
 
</div>
</div>
</body>
</html>

