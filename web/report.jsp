<%-- 
    Document   : report
    Created on : 15 Apr, 2018, 12:38:39 AM
    Author     : imsaiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
      .report-input{
          float: left;
          float: left;
          margin-left: -15px;
          margin-top: 5px;
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
    <div class="row">
        <div class="col-md-4">
</div>
        <div class="col-md-8">
            <h1>Submit the Report</h1>
            <form class="form-horizontal" method="post" action="report_process.jsp" >
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Item Name</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="text" class="form-control" placeholder="Enter Item Name" name="item_name" required>
                    </div>
                </div>
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Location</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="text" class="form-control"  placeholder="Where You find this Item" name="item_location" required>
                    </div>
                </div>
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Date</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="date" class="form-control" id="date" placeholder="Enter Date" max="" name="item_date" required>
                    </div>
                </div>
                
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Description</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <textarea class="form-control" rows="5" name="item_descition" placeholder="Add some description" required></textarea>
                    </div>
                </div>
                <div class="form-item row">
                    <div class="col-md-2">
 
                    </div>
                    <div class="report-input col-md-6">
                        <input type="Submit" value="Submit Report">
                    </div>
                </div>
            </form>
        </div>
</div>
</body>
</html>


