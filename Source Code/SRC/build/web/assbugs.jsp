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
      <form action="Assign" method="post">
<table align="center" borer="1">
      
      <tr><td>Bug Name</td><td><input type="text" name="b1"></input></td></tr>
      <tr><td>Bug Description</td><td><input type="text" name="b2"></input></td></tr>
      <tr><td>Assign To</td><td>
     
      <select name="b3" style="width:148px;">
      <%!String user;
      String desig;
      %>
      <%
      Connection con=null;
      Class.forName("com.mysql.jdbc.Driver");
		con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
		Statement st;
	
		
		st = con.createStatement();
	
		
		 String sql= "select * from users";
		ResultSet r=st.executeQuery(sql);
		while(r.next())
		{
			
		 user=r.getString(2);
		 desig=r.getString(5);
			
		
      %>
      <option value="<%=user %>"><%=user%>-<%=desig%></option>
      <%} %>
      </select>
      </td></tr>
       <tr><td>Triage</td><td><select name="q" style="width: -moz-available;">
      <option value="low">Less Severe</option>
      <option value="mod">Moderate</option>
      <option value="high">High Risks</option>
     
      </select></td></tr>
      <tr><td>Date</td><td><input type="text" name="z7" id="datepicker-12" ></td></tr>
      <tr><td>Bug Status</td><td>
      <select name="b4" style="width:148px;">
       <option value="null"></option>
      <option value="unresolved">Raise Token</option>
           <option value="resolved">Rectified</option>
      </select>
      </td></tr>
      <tr><td align="center" colspan="2"><input type="submit" value="submit"></input></td></tr>
      </table>
      <center><a href="manager1.jsp">Click here to mov back</a></center>
      </form>
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
