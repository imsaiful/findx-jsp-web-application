    <%@ include file = "header.jsp" %> 
    <div class="col-md-8">
        <%
           String str="";
           try
           {
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root","myammaji");
           Statement st=conn.createStatement();
           String sql ="select * from report order by id desc";
           ResultSet rs = st.executeQuery(sql);
           while(rs.next()){
               %>
               <div class="container" style="width:100%">
               
                <div class="panel panel-default">
                    <div class="panel-body">
                    <table >
                    <tr><td class="td-items">Item Name</td><td class="td-items-values"><%=rs.getString("item_name") %></td></tr>
                    <tr><td class="td-items">Location</td><td  class="td-items-values"><%=rs.getString("item_location") %></td></tr>
                    <tr><td class="td-items">Date</td><td  class="td-items-values"><%=rs.getString("date").substring(0,10) %></td></tr>
                    <tr><td class="td-items">Category</td><td  class="td-items-values"><%=rs.getString("category") %></td></tr>
                    <tr><td class="td-items">Description</td><td  class="td-items-values"><%=rs.getString("item_description") %></td></tr>
                    <tr><td></td><td></td></tr>
                    <tr class="last-row"><td class="td-items"><td  class="td-items-values "> <button type="button" class="btn btn-default btn-sm" onclick="window.open('call.jsp')">
                        <span class="glyphicon glyphicon-earphone"></span>Call
                                     </button> <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-share-alt"></span> Share
                      </button></td></td></tr>
                     </table>
                    </div>
                </div>
               </div>
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
<%@ include file = "footer.jsp" %>
   
