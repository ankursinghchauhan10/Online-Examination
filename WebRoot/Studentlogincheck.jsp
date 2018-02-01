<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'Studentlogincheck.jsp' starting page</title>
      </head>
  
  <body>
		<%
		try{
			String pass,roll;
			HttpSession ses=request.getSession();
			pass=request.getParameter("pass");
			roll=request.getParameter("roll");
			ses.setAttribute("roll",roll);//for updating getpaper table in db
			Connection con=GlobalConnection.getcon();
			
			Statement st=con.createStatement();
			
			String sql="select * from saccount where pass='"+pass+"'and roll='"+roll+"'";
			
			ResultSet rs=st.executeQuery(sql);
			
			rs.next();
			
			if(rs.getRow()>0){
				ses.setAttribute("name",rs.getString(2));
				ses.setAttribute("sub",rs.getString(5));
				response.sendRedirect("updategetpaper.jsp");
			}else
				response.sendRedirect("studentlogin.jsp?msg=Your Roll No. or Password is Wrong...");
			
		}catch(Exception ee){}
		
		 %>
  </body>
</html>
