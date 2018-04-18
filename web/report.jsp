<%-- 
    Document   : report
    Created on : 15 Apr, 2018, 12:38:39 AM
    Author     : imsaiful
--%>
         <%@ include file = "header.jsp" %>
        <div class="col-md-2">
             
        </div>
        <div class="col-md-8">
            <h1>Submit the Report</h1><br>
            <form class="form-horizontal" method="post" action="report_process.jsp" >
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Item Name</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="text" class="form-control" placeholder="Enter Item Name" name="item_name" required>
                    </div>
                </div><br>
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Location</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="text" class="form-control"  placeholder="Where You find this Item" name="item_location" required>
                    </div>
                </div><br>
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Date</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <input type="date" class="form-control" id="date" placeholder="Enter Date" max="" name="item_date" required>
                    </div>
                </div><br>
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Category</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <select name="item_category" style="width: 100%;">
                            <option value="mobile">Mobile</option>
                            <option value="document">Documents</option>
                            <option value="wallet">Wallet</option>
                            <option value="watch">Watch</option>
                            <option value="bag">Bag</option>
                            <option value="key">Key</option>
                            <option value="others">others</option>
                        </select>
                    </div>
                </div><br>
                
                <div class="form-item row">
                    <div class="col-md-2">
                        <h4>Description</h4>
                    </div>
                    <div class="report-input col-md-6">
                        <textarea class="form-control" rows="5" name="item_descition" placeholder="Add some description" required></textarea>
                    </div>
                </div><br>
                <div class="form-item row">
                    <div class="col-md-2">
 
                    </div>
                    <div class="report-input col-md-6">
                        <input type="Submit" value="Submit Report">
                    </div>
                </div><br>
            </form>
        </div>
    </div>
    <br><br><br><br>
    
 <%@ include file = "footer.jsp" %>


