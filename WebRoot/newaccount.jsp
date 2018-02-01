<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="db.GlobalConnection"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newaccount.jsp' starting page</title>
    
	<link rel="stylesheet" href="styles.css" type="text/css" />
</head>

<body>
<div id="container">
	<div id="header">
    	<h1><a href="/">Online Examination</a></h1>
        
    </div>
    
    <div id="navigation">
    	<ul>
        	<li class="selected"><a href="home.jsp">Home</a></li>
            <li><a href="">Examples</a></li>
            <li><a href="#">Products</a></li>
            <li><a href="#">Solutions</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
    
    <div id="body">
    	
        <div class="sidebar sidebar-left">
            <ul>	
                <li>
                    <h4>Search</h4>
                    <form id="searchform" method="get" action="http://wpdemo.justfreetemplates.com">
                    <div>
                        <input type="text" name="s" id="s" size="15" />
                        <input type="submit" value="Search" class="formbutton" />
                    
                    </div>
                    </form>
                </li>
                
                <li>
                	 <h4>About</h4>
                     <p>Quisque vulputate nibh non justo rutrum laoreet. Suspendisse quis elit nibh, sed adipiscing turpis. Pellentesque est orci, aliquam eget bibendum nec, malesuada a risus.</p>
                </li>
                
            </ul> 
        </div>
        
        <div id="content">
        <form method="get" action="newaccountdb.jsp">
        <table width="200px">
        
<tr>
<td colspan=2 align='center'><h2><b><u>New Account</u></b></h2></td>
</tr>

<tr>
<td><h4><b>Student Roll No.</b></h4></td>
<td><input type="text" name="roll" style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Name</b></h4></td>
<td><input type="text" name="name" style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Father Name</b></h4></td>
<td><input type="text" name="fname" style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Gender</b></h4></td>
<td><h4><b><input type="radio" name="gender" value="Male" /> Male   <input type="radio" name="gender" value="Female"/> Female</b></h4></td></tr>
<tr>
<td><h4><b>Course</b></h4></td>
<td><select name="course"  style="border: inset blue ">
<%
	try
	{
		Connection con=GlobalConnection.getcon();
		
		Statement st=con.createStatement();
		
		String sql="select distinct sub from paperload";
		
		ResultSet rs=st.executeQuery(sql);
		
		while(rs.next())
		{
			%>
			<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
			<%
		}
	}catch(Exception ee)
	{
		JOptionPane.showMessageDialog(null,ee.getMessage());
	}

 %><!-- 
<option value="C Language">C Language</option>
<option value="C++">C++</option>
<option value="Java">Java</option>-->
</select>
</td></tr>
<tr>
<td><h4><b>Contact No.</b></h4></td>
<td><input type="text" name="contact" style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Address</b></h4></td>
<td><textarea name="add" rows="2" cols=15  style="border: inset blue "></textarea></td></tr>
<tr>
<td><h4><b>Email Id</b></h4></td>
<td><input type="text" name="email" style="border: inset blue "/></td></tr>
<tr>
<td><input type="Submit" name="submit" value="Submit" style="border: inset blue "/></td>
<td><input type="Reset" name="reset" value="Reset" style="border: inset blue "/></td></tr>

</table></form>
        	        </div>
        
        
        <div class="sidebar sidebar-right">
            <ul>	
                <li>
                    <h4>Links</h4>
                    <ul>
                    <!-- Creating Links -->
                        <li><a href="" >Google</a></li>
                        <li><a href="">Yahoo!</a></li>
                        <li><a href="" >Gmail</a></li>
                        <li><a href="">W3 School</a></li>
                        
                    </ul>
                </li>
                
                            
                
            </ul> 
        </div>
        
    	<div class="clear"></div>
    </div>

    <div id="footer"><div align="center"> 
    	</div><p>&copy; Online Examination 2013. Design by <a href="http://www.spyka.net">@nkur Singh Chauhan</a></p>
    </div>
</div>
</body>
</html>
