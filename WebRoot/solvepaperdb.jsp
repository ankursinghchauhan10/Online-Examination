<%@ page language="java" import="java.util.*,java.sql.*,db.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'solvepaperdb.jsp' starting page</title>
    
  </head>
  
  <body>
  	<%
  		HttpSession ses=request.getSession();
  		int i;
  		String I=ses.getAttribute("I").toString();
  		//JOptionPane.showMessageDialog(null,"I : "+I+  "on solvepaperdb");
	
  		String name=ses.getAttribute("name").toString();
		String papercode=ses.getAttribute("papercode").toString();
		String sub=ses.getAttribute("course").toString();
		String totalque=ses.getAttribute("totalque").toString();
		//JOptionPane.showMessageDialog(null,"totalque  : "+totalque);
		
		String que=ses.getAttribute("que").toString();
		String ans=ses.getAttribute("ans").toString();
		String sans=request.getParameter("ans");
		String status;
		
		if(ans.equals(sans))
		{
			status="True";
		}
		else{
			status="False";
		}
		
  		i=Integer.parseInt(I);
  		i++;
  		//JOptionPane.showMessageDialog(null,"I : "+i+  "on solvepaperdb");
	
  		try
  		{
  			Connection con=GlobalConnection.getcon();
  			//JOptionPane.showMessageDialog(null,"1");
  			Statement st=con.createStatement();
  			//JOptionPane.showMessageDialog(null,"2");
  			String sql="insert into studentanswer values('"+i+"','"+que+"','"+sans+"','"+status+"','"+sub+"','"+name+"','"+totalque+"','"+papercode+"')";
  			//JOptionPane.showMessageDialog(null,"i: "+i+"  on solvepaperdb");
  			int k=st.executeUpdate(sql);
  			//JOptionPane.showMessageDialog(null,"4");
  			if(k>0)
  			{
  				if((""+i).equals(totalque))
  				{
  					//JOptionPane.showMessageDialog(null,""+i);
  					//Again connection to student account for updating it
  					try
  					{
  						String roll=ses.getAttribute("roll").toString();
  						Date date=new Date();
		 				String d=date.toString();
		 
  						Connection c=GlobalConnection.getcon();
  						
  						Statement s=c.createStatement();
  						
  						String sq="update getpaper set date='"+d+"'  where roll='"+roll+"' and totalque='"+totalque+"' and code='"+papercode+"'";
  						
  						int l=s.executeUpdate(sq);
  						
  						if(l>0)
  						{
  							response.sendRedirect("getpaper.jsp");
  						}
  					}catch(Exception ee)
  					{
  						JOptionPane.showMessageDialog(null,ee.getMessage()+" solvepaperdb");
  					} 
					
  				}
  				
  				else{
  				I=""+i;
  				ses.setAttribute("I",I);
  				//JOptionPane.showMessageDialog(null,"I2 : "+I+  "on solvepaperdb");
				}
  				response.sendRedirect("extractpaper.jsp");
  				
  			}
  		}catch(Exception ee){
  			//JOptionPane.showMessageDialog(null,ee.getMessage()+"    Solvepaper db");
  		}
  		
  		
  	 %>
  </body>
</html>
