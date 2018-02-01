<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>
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
    
    <title>My JSP 'solvepaper.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="styles.css" type="text/css" />
</head>

<body>

<%
	int i;
	HttpSession ses=request.getSession(); 
	String name=ses.getAttribute("name").toString();//name
	String papercode=ses.getAttribute("papercode").toString();//paper code
	String course=ses.getAttribute("course").toString();//Subject
	String I=ses.getAttribute("I").toString();
	//JOptionPane.showMessageDialog(null,"I : "+I+  "on solvepaper");
	
	String que=ses.getAttribute("que").toString();//Question
	String ans=ses.getAttribute("ans").toString();//Answer
	String A=ses.getAttribute("A").toString();//op1
	String B=ses.getAttribute("B").toString();//op2
	String C=ses.getAttribute("C").toString();//op3
	String D=ses.getAttribute("D").toString();//op4
	//String I=ses.getAttribute("I").toString();
	
	i=Integer.parseInt(I);
	
%>
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
        	<h2><center>Hello <%=name%></center></h2>
        	
  						<form method=get action="solvepaperdb.jsp">
				
						<table width="200px">
<tr>
<td ><h4><b>Subject</b></h4></td>
<td ><h4><b><%=course %></b></h4></td></tr>
<tr>
<td ><h4><b>Subject Code</b></h4></td>
<td ><h4><b><%=papercode %></b></h4></td></tr>
<tr>
<td colspan=2><h4><b>Ques : <%=i+1 %>  <%=  que %> </b></h4></td>
</tr>
<tr>
<td><h4><b><input type="radio" name="ans" value="<%=  A %>"/> <%=  A %></b></h4></td>
<td><h4><b><input type="radio" name="ans" value="<%=  B %>"/> <%=  B %></b></h4></td></tr>
<tr>
<td><h4><b><input type="radio" name="ans" value="<%=  C %>"/> <%=  C %></b></h4></td>
<td><h4><b><input type="radio" name="ans" value="<%=  D %>"/> <%=  D %></b></h4></td></tr>
<tr>
<td><input type="Submit" name="submit" value="Submit" style="border: inset blue "/></td>
<td></td></tr>
</table>
</form>
		
	
        	
	
<%/*
	i++;
	I=""+i;
	ses.setAttribute("I",I);*/
 %>
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
