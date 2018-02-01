<%@ page language="java" import="java.util.*,java.sql.*,db.*,javax.swing.JOptionPane" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'extractpaper.jsp' starting page</title>
  </head>
  
  <body>
  <%
	int i;
	HttpSession ses=request.getSession(); 
	String name=ses.getAttribute("name").toString();
	//String papercode=ses.getAttribute("papercode").toString();
	String sub=ses.getAttribute("sub").toString();
	String code=ses.getAttribute("papercode").toString();
	String totalque=ses.getAttribute("totalque").toString();
	//JOptionPane.showMessageDialog(null,totalque);
	String I=ses.getAttribute("I").toString();
	i=Integer.parseInt(I);

  		
  		try
	{
	
		Connection con=GlobalConnection.getcon();
		
		Statement st=con.createStatement();
		
		String sql="select * from paperload where sn='"+(i+1)+"' and sub='"+sub+"' and totalque='"+totalque+"' and code='"+code+"'";
		//JOptionPane.showMessageDialog(null,"I : "+(i+1)+  "on extractpaper");
	
		ResultSet rs=st.executeQuery(sql);
		rs.next();
		
		ses.setAttribute("que",rs.getString(4));//Global variable of Question
		ses.setAttribute("ans",rs.getString(9));//Global Variable of Answer
		ses.setAttribute("A",rs.getString(5));
		ses.setAttribute("B",rs.getString(6));
		ses.setAttribute("C",rs.getString(7));
		ses.setAttribute("D",rs.getString(8));
			response.sendRedirect("solvepaper.jsp");
		
	}catch(Exception ee){
	
		JOptionPane.showMessageDialog(null,ee.getMessage()+"    extractpaper");
	}
  		
  		
  		
  		 %>
  </body>
</html>
