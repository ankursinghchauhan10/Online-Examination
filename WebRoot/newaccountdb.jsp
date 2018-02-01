<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'newaccountdb.jsp' starting page</title>
    
  </head>
  
  <body>
  <jsp:useBean id="ob" class="db.student" scope="session"></jsp:useBean>
  
  <jsp:setProperty name="ob" property="*"/>
    <%
    String pass=GlobalConnection.getpass();
    HttpSession ses=request.getSession();
   	ses.setAttribute("pass",pass);
    ses.setAttribute("email",ob.getEmail());
    //ses.setAttribute("name",ob.getName());
    
    try{
    
    
    Connection con=GlobalConnection.getcon();
    
    String sql="insert into saccount values('"+ob.getRoll()+"','"+ob.getName()+"','"+ob.getFname()+"','"+ob.getGender()+"','"+ob.getCourse()+"','"+ob.getContact()+"','"+ob.getAdd()+"','"+ob.getEmail()+"','"+pass+"')";
    
    Statement st=con.createStatement();
    
    int i=st.executeUpdate(sql);
    
    if(i>0)
    {
    %><jsp:forward page="studentmail.jsp"></jsp:forward><%
    }
    
    }catch(Exception ee){
  		JOptionPane.showMessageDialog(null,ee.getMessage());  
    }
    
     %>
  </body>
</html>
