<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'forgetpassword.jsp' starting page</title>
    
	<link rel="stylesheet" href="styles.css" type="text/css" />
</head>

<body>
<div id="container">
	<div id="header">
    	<h1><a href="/">Online Examination</a></h1>
        
    </div>
    
    <div id="navigation">
    	<ul>
        	<li class="selected"><a href="index.html">Home</a></li>
            <li><a href="examples.html">Examples</a></li>
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
        	<h2>Forget Password<br></h2>
			<p>
			This Faciliy is Provided for the case if student Forget the password.
			<p>To get Password Again Follow Instructions:
			<p>
			<ol>
				<li>Enter  Your Contact No. And Email-id .</li>
				<li>Press Submit.</li>
				<li>Your Password Will be sent on Your Mail.</li> 
			</ol>
			        </div>
        
        <div class="sidebar sidebar-right">
            <ul>	
                <li>
                    <h1><u>Log-In</u></h1>
                    <ul>
                        <form name="form" action="chkdetail.jsp" method="get">
                        <table width="200px">
<tr>
<td><h4><b>Contact No.</b></h4></td>
<td><input type="text" name="fcontact" size=12 style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Email Id</b></h4></td>
<td><input type="text" name="femail" size=12 style="border: inset blue "/></td></tr>
<td><input type="Submit" name="submit" value="Submit" style="border: inset blue "/></td><td></td>
</tr>
</table>
                        </form>
                    </ul>
                </li>
                <%
              String msg=request.getParameter("msg");
              if(msg!=null)
              {
              	out.print("<font color=red><br><u>"+msg+"</u></font>");
              }
               %>
                            
            
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
