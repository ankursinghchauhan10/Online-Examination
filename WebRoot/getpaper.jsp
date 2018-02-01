<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'getpaper.jsp' starting page</title>
	<link rel="stylesheet" href="styles.css" type="text/css" />
</head>

<body>
<%HttpSession ses=request.getSession(); 
	String name=ses.getAttribute("name").toString();
	
%>
<div id="container">
	<div id="header">
    	<h1><a href="/">OnLine Examination</a></h1>
        
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
        	<h2><center>Hello <u><font color=skyblue><%= name%></font></u></center></h2>
<table>
						<tr><th align=center>Subject</th><th align=center>Paper code</th><th align=center>Total Question</th><th align=center>Status</th><th align=center>Result</th></tr>
						
						<%
						
						try{
							int i=0;
							
							String I=""+i;
							ses.setAttribute("I",I);
							String roll=ses.getAttribute("roll").toString();
							Connection con=GlobalConnection.getcon();
							Statement st=con.createStatement();
							String sql="select * from getpaper where roll='"+roll+"'";// and not(saccount.totalque=0)
							
							ResultSet rs=st.executeQuery(sql); 
							
							while(rs.next())
							{
								i++;
								String date=rs.getString(5);
								//JOptionPane.showMessageDialog(null,date);
								//ses.setAttribute("papercode",rs.getString(3));//Global var of paper code 
								ses.setAttribute("course",rs.getString(2));//Global var of course
								ses.setAttribute("totalque",rs.getString(4)/*rs.getString(21)*/);//11
								if(date.equals(""))
								{
									%>
										<tr><h4><b><td align=center><h4><b><%=rs.getString(2) %></b></h4></td><td align=center><h4><b><%=rs.getString(3) %></b></h4></td><td align=center><h4><b><%=rs.getString(4) %></b></h4></td><td align=center><form method=get ><input type="Submit" name="start" value="Start" style="border: inset blue "/><input type="hidden" name=starthidden value="Start<%=+i%>"></form></td><h4><b><td align=center>---</td></h4></b></tr>
									
									<%
								}
								else
								{
									%>
									<tr><td align=center><h4><b><%=rs.getString(2) %></b></h4></td><td align=center><h4><b><%=rs.getString(3) %></b></h4></td><td align=center><h4><b><%=rs.getString(4) %></b></h4></td><td align=center><h4><b><%=rs.getString(5) %></b></h4></td><td align=center><form method=get ><input type="Submit" name="show" value="Show" style="border: inset blue "/><input type="hidden" name=showhidden value="Show<%=+i %>"></form></td></tr>
									
									<%
								
								}	
							}
							
							/*if(i!=5)
							{
									
									<tr><td colspan=3 align=center> Not Yet Registered</td></tr>
									
									<%
								
							}*/
						}catch(Exception ee){
							
							JOptionPane.showMessageDialog(null,ee.getMessage()+"    getpaper");
						
						}
						
						String start=request.getParameter("starthidden");
						if(start!=null)
						{
							ses.setAttribute("start",start);
							response.sendRedirect("buttonclicked.jsp");
						}
						
						String show=request.getParameter("showhidden");
						if(show!=null)
						{
							ses.setAttribute("show",show);
							response.sendRedirect("result.jsp");
						}
						 %>
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
