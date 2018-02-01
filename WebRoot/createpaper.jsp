<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'createpaper.jsp' starting page</title>
    
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
        
        <form method="get" >
        				<table width="200px">
        				
        				<tr><td colspan="2" align="center"><h2><u><b>Detail</b></u></h2></td></tr>
<tr>
<td><h4><b>Paper Subject</b></h4></td>
<td><input type=text name="subject" style="border: inset blue ">
<!-- <option>-----Select-----</option>
<option value="C Language">C Language</option>
<option value="C++">C++</option>
<option value="Java">Java</option>--></td></tr>
<tr>
<td><h4><b>Paper Code</b></h4></td>
<td><input type="text" name="papercode" style="border: inset blue ">&nbsp;</td></tr>
<tr>
<td><h4><b>Number Of Question</b></h4></td>
<td><select name="totalque" style="border: inset blue " >
<option>-----Select-----</option>
<option value="5">5</option>
<option value="10">10</option>
<option value="15">15</option>
</select>
</td></tr>
<tr>
<td><input  type="submit" value="Submit" name=submit style="border: inset blue "/></td>
<td></td></tr>
</table>
</form>

		<%
			String submit=request.getParameter("submit");
			
			if(submit!=null)
			{
					int val=0;
					String I=""+val;
					HttpSession ses=request.getSession();
				 String pcode=request.getParameter("papercode");
			     String sub=request.getParameter("subject");
			     String que=request.getParameter("totalque");//total no. of question
			    
			      ses.setAttribute("papercode",pcode);
        		  ses.setAttribute("subject",sub);
                  ses.setAttribute("totalque",que);
                  ses.setAttribute("val",I);
                  
          		 response.sendRedirect("paperload.jsp");
			}
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
