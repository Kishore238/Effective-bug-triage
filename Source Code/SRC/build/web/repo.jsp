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
      <table border="1" align="center">
     <th colspan="5" align="center">Bug Repository</th>
     <tr><td>Error Name</td><td>Error Description</td><td>Triage</td><td>Solution</td></tr>
     <%
     Connection con=null;
     Class.forName("com.mysql.jdbc.Driver");
		con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
		Statement st;
	
		
		st = con.createStatement();
	
		
		 String sql= "select * from sln";
	     ResultSet rs = st.executeQuery(sql);
	     while(rs.next())
	     {
	    	 String a=rs.getString(1);
 			String b=rs.getString(2);
	    			String c=rs.getString(3);
	    			String d=rs.getString(4);
	    		
	    			
     %>
     <tr><td><%=a%></td><td><%=b%></td><td><%=c%></td><td><%=d%></td></tr>
     <%} %>
     
     </table>
     <center><a href="manager1.jsp">Click Here to Mov back</a></center>
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
