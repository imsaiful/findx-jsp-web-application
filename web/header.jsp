<%-- 
    Document   : header.jsp
    Created on : 17 Apr, 2018, 11:41:47 PM
    Author     : imsaiful
--%>
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
  <title>Locate your lost item</title>
  <link rel="stylesheet" href="css/style.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="margin-top: 65px;">
<div class="container">
<nav class="mynav navbar navbar-fixed-top ">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="about.jsp">Locate</a>
    </div>
    <ul class="nav navbar-nav">
        <li class=""><a href="home.jsp"><img class="icon" src="images/home.png"><span>Home</span></a></li>
        <li class=""><a href="report.jsp"><img class="icon" src="images/report.png"><span>Report</span></a></li>
        <li class=""><a href="#"><img class="icon" src="images/notification.png"><span>Notification</span></a></li>

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
<div class="container">
    <div class="col-md-2">
        <%@ include file = "left-sidebar.jsp" %>
    </div>
