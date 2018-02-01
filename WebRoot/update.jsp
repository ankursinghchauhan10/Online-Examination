<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.State"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'update.jsp' starting page</title>

  </head>
  
  <body>
  	<%
  		HttpSession ses=request.getSession();
  		String roll=ses.getAttribute("roll").toString();
  		String sub=ses.getAttribute("sub").toString();
  		try{
  		int check=0,flag=0;
  		//		response.sendRedirect("getpaper.jsp");
  		Connection con=GlobalConnection.getcon();
  		Statement st=con.createStatement();
  		String sql="select distinct p.totalque,p.code,p.sub from paperload p,getpaper g where p.code not in( select code from getpaper where roll='"+roll+"') and p.sub=g.sub and roll='"+roll+"'";
  			ResultSet rs=st.executeQuery(sql);
  			while(rs.next())
  			{
  				check++;
  				//JOptionPane.showMessageDialog(null,""+check);
  			}
  			//JOptionPane.showMessageDialog(null,""+check);
  			if(check==0)
  			{
  				Connection c5=GlobalConnection.getcon();
  				
  				Statement s5=c5.createStatement();
  				
  				String sql5="select * from getpaper where roll='"+roll+"'";
  				
  				ResultSet rs5=s5.executeQuery(sql5);
  				
  				while(rs5.next())
  				{
  					flag++;
  				}
  				
  				if(flag==0)
  				{
  						Connection c3=GlobalConnection.getcon();
	  					
	  					Statement ss=c3.createStatement();
	  					
	  					String sq="select distinct totalque,code from paperload where sub='"+sub+"'";
	  					//give all values of totalque column
	  					ResultSet q=ss.executeQuery(sq);
	  					
	  					while(q.next())
	  					{
	  					//JOptionPane.showMessageDialog(null,"totalque  "+q.getString(1)+"   code   "+q.getString(2));
	  					try
	  						{
	  							Connection c4=GlobalConnection.getcon();
	  							
	  							Statement ss4=c4.createStatement();
			  					
			  					String sq4="insert into getpaper values('"+roll+"','"+sub+"','"+q.getString(2)+"','"+q.getString(1)+"','')";
			  					//insert into getpaper if a roll no is not entered yet
			  					ss4.executeUpdate(sq4);
			  					
			  					//ss4.executeUpdate(sq4);
			  				
			  				}catch(Exception ee){
	  							JOptionPane.showMessageDialog(null,"0011"+ee.getMessage());
	  						}
	  					}
	  			//	JOptionPane.showMessageDialog(null,"goooooooo");
	  				response.sendRedirect("getpaper.jsp");
	  			
  				}else
  				{
  					response.sendRedirect("getpaper.jsp");
  				}
  			}
  			else
  			{
  				try{
  					
  					Connection c1=GlobalConnection.getcon();
  					
  					Statement s1=c1.createStatement();
		  			
		  			String sql1="select distinct p.totalque,p.code,p.sub from paperload p,getpaper g where p.code not in( select code from getpaper where roll='"+roll+"') and p.sub=g.sub and roll='"+roll+"'";
		  			//give totalque column which are not in getpaper table 
		  			ResultSet rs1=s1.executeQuery(sql1);
		  			
		  			while(rs1.next())
		  			{
		  				try
		  				{
		  							Connection c2=GlobalConnection.getcon();
  			
						  			Statement s2=c2.createStatement();
						  			
						  			String sql2="insert into getpaper values('"+roll+"','"+rs1.getString(3)+"','"+rs1.getString(2)+"','"+rs1.getString(1)+"','');";
						  			//inset data into getpaper
						  			int p=s2.executeUpdate(sql2);
						  			
						  			
		  				}catch(Exception ee)
		  				{
		  					JOptionPane.showMessageDialog(null,ee.getMessage()+" on update getpaper3");
		  				}			
		  			}
		  			
						  				response.sendRedirect("getpaper.jsp");
			
  					
  				}catch(Exception ee)
  				{
  					JOptionPane.showMessageDialog(null,ee.getMessage());
  				}
  			}
  		}catch(Exception ee){
  			JOptionPane.showMessageDialog(null,ee.getMessage()+" on update getpaper1");
  		}
  	 %>
  </body>
</html>