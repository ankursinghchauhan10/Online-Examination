<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentlogin.jsp' starting page</title>
    
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
        	<h2><b><center>Instruction</center></b></h2>
        	<ol type='1'>
        	<li>All questions of the Online Exam are of objective type (multiple choice questions)
        	
        	<li>You Have Limited Time to solve All the Questions.
        	
        	<li>Calculators and logarithmic tables are not allowed in the test centers. Candidates are not allowed to bring any other personal belongings such as mobiles/cameras/laptops/ notebooks/text books etc.</p>

			<li>Each candidate who registers for the Online Exam will be instructed to download the <b>Admit Card</b>. A candidate entry into the test centre is subject to the verification of the admit card. In addition to the admit card, each candidate is required to bring the following for verification:</p>
		
		   <li> A valid photo identity card (such as passport/driving license/adhar/voter card/identity card issued by the candidate college etc), and,
		    <li>Original 10th (or equivalent) marks sheet.
		    <li>Candidates who have availed fee exemption under the category SC/ST/Dependents of Defence Personnel Killed in Action (DODPKIA)/Physically Challenged are required to bring valid proof of category for verification at the test centre.
</ol>
			        
			        </div>
        
        <div class="sidebar sidebar-right">
            <ul>	
                <li>
                    <h1><u>Log-In</u></h1>
                    <ul>
                    
                    <form method=get action="http://ankur:8080/OnlineExamination/Studentlogincheck.jsp">
                    	<table  width="200px">
<tr>
<td><h4><b>Roll No.</b></h4></td>
<td><input type="text" name="roll" size=8.5 style="border: inset blue "/></td></tr>
<tr>
<td><h4><b>Password</b></h4></td>
<td><input type="password" name="pass" size=8.5 style="border: inset blue "/></td></tr>
<tr>
<td><input type="Submit" name="sub" value="Login" style="border: inset blue "/></td>
<td></td></tr>
</table>
</form>
                        <li><a href="http://ankur:8080/OnlineExamination/newaccount.jsp" >New Account</a></li>
                        <li><a href="http://ankur:8080/OnlineExamination/forgetpassword.jsp">Forget Password</a></li>
              <%
              String msg=request.getParameter("msg");
              if(msg!=null)
              {
              	out.print("<font color=red><br><u>"+msg+"</u></font>");
              }
               %>          
                    </ul>
                </li>
                
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
