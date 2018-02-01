<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'result.jsp' starting page</title>
  <link rel="stylesheet" href="styles.css" type="text/css" />
</head>

<body>
<%int countTrue=0,countFalse=0,totalMarks=0,tTrue=0,tFalse=0; %>
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
        	<h2><center><u>Your Result</u></center></h2>
        	<form method=get action='getpaper.jsp'>
        		<table border=1 color="blue">
        		<tr><th align=center>S No.</th><th align=center>Question</th><th align=center>Answer</th><th align=center>Status</th></tr>
        			<%int count=0;
		
		HttpSession ses=request.getSession();
		String show=ses.getAttribute("show").toString();
		String name=ses.getAttribute("name").toString();
		String roll=ses.getAttribute("roll").toString();
		//JOptionPane.showMessageDialog(null,start);
			try
			{
				Connection con=GlobalConnection.getcon();
				Statement st=con.createStatement();
				String sql="select * from getpaper where roll='"+roll+"'";
				//String sql="select * from studentanswer where name='"+name+"'and totalque='"+totalque+"'";
				ResultSet rs=st.executeQuery(sql);
				while(rs.next())
				{
					count++;
					if(show.equals("Show"+count))
					{
						try
						{
							Connection c=GlobalConnection.getcon();
							Statement s=c.createStatement();
							String sq="select * from studentanswer where name='"+name+"'and totalque='"+rs.getString(4)+"' and papercode='"+rs.getString(3)+"'";
							ResultSet r=s.executeQuery(sq);
							while(r.next())
							{
								if(r.getString(4).equals("False"))
								{
								%>
								<tr><td><h4><b><%=r.getString(1) %></b></h4></td><td><h4><b><%=r.getString(2) %></b></h4></td><td><h4><b><%=r.getString(3) %></b></h4></td><td><h4><b><font color=red style="text-decoration: blink"><%=r.getString(4) %></font></b></h4></td></tr>
								<%countFalse-=1;tFalse++;
								}
								else
								{
									%>
								<tr><td><h4><b><%=r.getString(1) %></b></h4></td><td><h4><b><%=r.getString(2) %></b></h4></td><td><h4><b><%=r.getString(3) %></b></h4></td><td><h4><b><font color=#1be611><%=r.getString(4) %></font></b></h4></td></tr>
								<%countTrue+=3;tTrue++;
								}
							}
						}catch(Exception ee){
							JOptionPane.showMessageDialog(null,ee.getMessage()+"  result inside");
						}
						//response.sendRedirect("extractpaper.jsp");
					}
				}
			}catch(Exception ee){
				JOptionPane.showMessageDialog(null,ee.getMessage()+"  result");
			}
		 %>
		 </table>
			</form>
			
			<br><br>
			 
		 <table border=1>
		 		<tr><th><h4><b> </b></h4></th><th><h4><b><font color="white">Marks </font></b></h4></th><th><h4><b><font color="white">Question Count</font></b></h4></th></tr>
				<tr><td><h4><b>Correct Questions</b></h4></td><td><h4><b><%=countTrue %></b></h4></td><td><h4><b> <%=tTrue %></b></h4></td></tr>
				<tr><td><h4><b>Incorrect Questions</b></h4></td><td><h4><b><%=countFalse %></b></h4></td> <td><h4><b><%=tFalse %> </b></h4></td></tr>
				<tr><td><h4><b>Total</b></h4></td><td><h4><b><%=countTrue+countFalse %></b></h4></td> <td><h4><b><%=tTrue+tFalse %> </b></h4></td></tr>								
        		
		 </table>
        
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
  
  </head>
  
  <body>
  		
  </body>
</html>
