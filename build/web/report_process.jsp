<%-- 
    Document   : report_process
    Created on : 15 Apr, 2018, 12:41:31 PM
    Author     : imsaiful
--%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>

<html>
    <head>
         <title>Locate your lost item</title>
            <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
<%
String str="";
String name=request.getParameter("item_name");
String location=request.getParameter("item_location");
SimpleDateFormat in = new SimpleDateFormat("yyyy-MM-dd");
String parameter = request.getParameter("item_date");
java.util.Date temp_date = in.parse(parameter);
String date=temp_date.toString();
String category=request.getParameter("item_category");
String description=request.getParameter("item_descition");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root","myammaji");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into report(item_name,item_location,date,category,item_description) values('"+name+"','"+location+"','"+date+"','"+category+"','"+description+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
    str=e.toString();
    out.print(e);
    e.printStackTrace();
} 
%>

        <h1>Success</h1>
        <% out.print(name);%>
        <% out.print(location);%>
        <% out.print(date);%>
        <% out.print(description);%>
        <% out.print(category);%>
        <a href="home.jsp">Back to home</a>
    </body>
</html>