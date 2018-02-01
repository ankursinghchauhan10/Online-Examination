<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'paperload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="styles.css" type="text/css" />
</head>

<body>


		<%
        HttpSession ses=request.getSession();

        String pcode=ses.getAttribute("papercode").toString();
 		String sub=ses.getAttribute("subject").toString();
 		String val=ses.getAttribute("val").toString();
 		int k=Integer.parseInt(val);
         %>

<div id="container">
	<div id="header">
    	<h1><a href="/">Online Examination</a></h1>
        
    </div>
    
    <div id="navigation">
    	<ul>
        	<li class="selected"><a href="">Home</a></li>
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
        <form method=get action="paperloaddb.jsp">
       <table  width="200px">
       <tr>
<td colspan=2 align='center'><h2><b><u>Set Paper</u></b></h2></td>
</tr>
       
<tr>
<td><h4><b>Paper Code</b></h4></td>
<td><h4><b><%=pcode %></b></h4></td></tr>
<tr>
<td><h4><b>Subject</b></h4></td>
<td><h4><b><%=sub %></b></h4></td></tr>
<tr><td><h4><b>Question No.</b></h4></td><td><h4><b><%=k+1%></b></h4></td></tr>
<tr>
<td><h4><b>Question</b></h4></td>
<td><input type="text" name="que" size=50 style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Ob1</b></h4></td>
<td><input type="text" name="ob1"  size=30 style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Ob2</b></h4></td>
<td><input type="text" name="ob2" size=30 style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Ob3</b></h4></td>
<td><input type="text" name="ob3" size=30 style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Ob4</b></h4></td>
<td><input type="text" name="ob4" size=30 style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Answer</b></h4></td>
<td><input type="text" name="answer" size=30 style="border: inset blue "/></td></tr>
<tr>
<td ><input type="Submit" value="Submit" name="submit" style="border: inset blue "/></td>
<td><input type="Reset" value="Reset" style="border: inset blue "/></td></tr>
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
