<%-- 
    Document   : call.jsp
    Created on : 18 Apr, 2018, 3:41:18 PM
    Author     : imsaiful
--%>

<%-- 
    Document   : report
    Created on : 15 Apr, 2018, 12:38:39 AM
    Author     : imsaiful
--%>
         <%@ include file = "header.jsp" %>
        <div class="col-md-2">
             
        </div>
        <div class="col-md-8">
            <h1>Request for call</h1><br>
            <form class="form-horizontal" method="post" action="report_process.jsp" >
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Name</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="text" class="form-control" placeholder="Enter your Name" name="item_name" required>
                    </div>
                </div><br>
                 <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Mobile</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="number" class="form-control" placeholder="Enter your mobile number" name="item_name" required>
                    </div>
                </div><br>
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Write some information about lost article</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <textarea class="form-control" rows="5" name="item_descition" placeholder="Add some description" required></textarea>
                    </div>
                </div><br>
                <div class="form-item row">
                    <div class="col-md-2">
 
                    </div>
                    <div class="report-input col-md-6">
                        <input type="Submit" value="Request for call">
                    </div>
                </div>
            </form>
            
        </div>
    </div><br><br><br><br>
    
 <%@ include file = "footer.jsp" %>


