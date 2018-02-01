<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sendmail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
        	<h2>Compose Mail</h2>
        	<br/>
        	<br/>
        	<center><%
              String msg=request.getParameter("msg");
              if(msg!=null)
              {
              	out.print("<font color=red><br><u>"+msg+"</u></font>");
              }
               %> </center>
        	<form method="get" action="mail.jsp">
        		<table>
        			<tr><td><h4><b>To :</b></h4></td><td><h4><b><input type="text" name="to" size="40"></b></h4></td></tr>
        			<tr><td><h4><b>Subject :</b></h4></td><td><h4><b><input type="text" name="subject" size="50"></b></h4></td></tr>
        			<tr><td><h4><b>Message :</b></h4></td><td><h4><b><textarea rows="20" name="msg" cols="40"></textarea></b></h4></td></tr>
        			<tr><td><input type="Submit" name="send" value="Send" style="border: inset blue "/></td><td><input type="reset" name="reset" value="Reset" style="border: inset blue "/></td></tr>
        		</table>
        	</form>
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
