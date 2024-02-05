<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>NewWave Business Inc.</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
         $(function() {
            $( "#datepicker-12" ).datepicker();
            $( "#datepicker-12" ).datepicker("setDate", "10w+1");
         });
      </script>
      <script>
         $(function() {
            $( "#datepicker-13" ).datepicker();
            $( "#datepicker-13" ).datepicker("setDate", "10w+1");
         });
      </script>
</head>
<body>
<center>
  <div id="main_block">
    <!--Top Block Starts -->
    <div id="top_block">
      <div class="navi">
<!--        <a href="http://all-free-download.com/free-website-templates/" class="navi_hm">Home</a>  -->
<!--        <a href="bug.jsp" class="navi_tx">Bug</a>  -->
<!--        <a href="assbugs.jsp" class="navi_tx">Assign bugs</a>  -->
<!--        <a href="red.jsp" class="navi_tx" style="width:70px;">Status</a>  -->
<!--         <a href="red.jsp" class="navi_tx" style="width:70px;">Reduction</a>  -->
<!--        <a href="index.jsp" class="navi_tx" style="width:13px;">Logout</a>  -->
       </div>
      <div class="tp_img1">
        <div class="tp_img2"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.gif" alt="" width="211" height="131" class="logo" /></a> <img src="images/tp_tx.gif" alt="" width="450" height="49" class="tp_tx" /> </div>
      </div>
    </div>
    <!--Top Block Ends -->
    
    
    
    
  </div>
  <div id="sub_block1">
    <!--Content Block Starts -->
    <div id="content_block">
      <!--Left Block Starts -->
    
<!--       <div id="left_block"> <span class="blk1_lp"> -->
      
        
        
        
       

       </div>
      <!--Left Block Ends -->
      <!--Right Block Starts -->
      <div id="right_block"> <span class="modul"> <span class="wel">
      <center>Instance Selection</center>
      <form action="red.jsp">
      <%!String q,w,e,d,t; %>
      <%
      String a=request.getParameter("z8");
      String b=request.getParameter("z9");
      if(a==null&&b==null)
      {%>
    	  <table border="1" align="center">
      <tr><td>Select Start Date</td><td><input type="text" name="z8" id="datepicker-12" ></td></tr>
      <tr><td>Select End Date</td><td><input type="text" name="z9" id="datepicker-13" ></td></tr>
      <tr><td colspan="2" align="center"><input type="submit" value="GetResults"></input></td></tr>
      </table>
      </form>
      <br></br>
     <center><a href="manager1.jsp">Click Here to Mov back</a></center>  
     <%}
      else
      { Connection con=null;
      Class.forName("com.mysql.jdbc.Driver");
		con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
		Statement st;
	
		
		st = con.createStatement();
	%>
	 <table border="1" align="center">
     <th colspan="5" align="center">Bug Status</th>
     <tr><td>Bug Name</td><td>Bug Description</td><td>Triage</td><td>Assigned To</td><td>Date</td></tr>
		
	<% String sql= "SELECT * FROM rep WHERE DATE BETWEEN '"+a+"' AND '"+b+"'";
		ResultSet r=st.executeQuery(sql);
		while(r.next())
		{
			
		 q=r.getString(2);
		 w=r.getString(3);
		 e=r.getString(4);
		 d=r.getString(5);
		 t=r.getString(6);
		
      %> 
      
      <%%>
		<tr><td><%=q %></td><td><%=w %></td><td><%=e %></td><td><%=d %></td><td><%=t %></td></tr>
		<%} 
		%>
      </table>
        <center><a href="manager1.jsp">Click here to mov back</a></center>
      <%
      }%>
    
        <br />
 
        <br />

        <br />
            
       </div>
      <!--Right Block Ends -->
      <!--Content Block Ends -->
    </div>
  </div>
  <div id="sub_block2">
    <div id="footer_block"> <span class="ftr_nv">
     <a href="http://all-free-download.com/free-website-templates/">Home</a>
      <span>|</span> <a href="http://all-free-download.com/free-website-templates/">Bugs Raised </a> <span>|</span>
       <a href="http://all-free-download.com/free-website-templates/"></a> <span>|</span> 
       <a href="http://all-free-download.com/free-website-templates/">About Us </a> <span>|</span>
        <a href="http://all-free-download.com/free-website-templates/"style="width: 77px;" >Contact us</a> 
        </span> <span class="cpy">Copyright &copy; 2008, All rights reserved. <a href="http://www.buytemplates.net/CSS-XHTML-web-templates.aspx">Css/Xhtml template</a> designed by buytemplates.net</span> </div>
  </div>
</center>
<!-- <div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body> -->
</html>
