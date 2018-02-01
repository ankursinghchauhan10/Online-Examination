<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'buttonclicked.jsp' starting page</title>
  </head>
  
  <body>
		<%int count=0;
		
		HttpSession ses=request.getSession();
		String start=ses.getAttribute("start").toString();
		String roll=ses.getAttribute("roll").toString();
		//JOptionPane.showMessageDialog(null,start);
			try
			{
				Connection con=GlobalConnection.getcon();
				Statement st=con.createStatement();
				String sql="select * from getpaper where roll='"+roll+"'";
				ResultSet rs=st.executeQuery(sql);
				while(rs.next())
				{
					count++;
					if(start.equals("Start"+count))
					{
						ses.setAttribute("sub",rs.getString(2));
						//JOptionPane.showMessageDialog(null,rs.getString(2));
						ses.setAttribute("totalque",rs.getString(4));
						//JOptionPane.showMessageDialog(null,rs.getString(4));
						ses.setAttribute("papercode",rs.getString(3));
						//JOptionPane.showMessageDialog(null,rs.getString(3));
						response.sendRedirect("extractpaper.jsp");
					}
				}
			}catch(Exception ee){
				JOptionPane.showMessageDialog(null,ee.getMessage()+" on button clicked");
			}
		 %>
  </body>
</html>
