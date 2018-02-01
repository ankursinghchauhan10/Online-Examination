<%@ page language="java" import="java.util.*,db.GlobalConnection,java.sql.*,javax.swing.JOptionPane" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'paperloaddb.jsp' starting page</title>

  </head>
  
  <body>
 <!--  <jsp:useBean id="obj" class="db.question" scope="session"></jsp:useBean>
  			<jsp:setProperty name="obj" property="*"/>
       -->  
  
  <%
  
  String pcode=null,sub=null,que,ob1,ob2,ob3,ob4,ans,totalque,val;
  int max,q;
  
  HttpSession ses=request.getSession();
  
  totalque=ses.getAttribute("totalque").toString();
  max=Integer.parseInt(totalque);
  
  val=ses.getAttribute("val").toString();
  q=Integer.parseInt(val);
  q++;
  val=""+q;
  
  
  pcode=ses.getAttribute("papercode").toString();
  
  sub=ses.getAttribute("subject").toString();
 
  que=request.getParameter("que");
  
  ob1=request.getParameter("ob1");
  
  ob2=request.getParameter("ob2");
  
  ob3=request.getParameter("ob3");
  
  ob4=request.getParameter("ob4");
  
  ans=request.getParameter("answer");
  
  
  try
  {
  	Connection con=GlobalConnection.getcon();
 
  	Statement st=con.createStatement();

 	String sql="insert into paperload values('"+q+"','"+sub+"','"+pcode+"','"+que+"','"+ob1+"','"+ob2+"','"+ob3+"','"+ob4+"','"+ans+"','"+totalque+"')";

  	int i=st.executeUpdate(sql);

  	if(i>0)
  	{
  		if(q!=max)
  		{
  			
  			ses.setAttribute("val",val);
  			response.sendRedirect("paperload.jsp");
  		}
  		else
  		{
  			response.sendRedirect("http://ankur:8080/OnlineExamination/adminhome.jsp");
  		}
  	}
  }catch(Exception ee){
  }
  
   %>
  </body>
</html>
