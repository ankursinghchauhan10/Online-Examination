<%@ page language="java" import="java.util.*,java.sql.*,db.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chkdetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  
  String fcontact,femail;
  		
  		fcontact=request.getParameter("fcontact");
  		femail=request.getParameter("femail");
  		
  		HttpSession ses=request.getSession();
  		
  		ses.setAttribute("femail",femail);
  
  try
  {
  		Connection con=GlobalConnection.getcon();
  		
  		Statement st=con.createStatement();
  		
  		String sql="select pass from saccount where contact='"+fcontact+"' and email='"+femail+"'";
  		
  		ResultSet rs=st.executeQuery(sql);
  		
  		rs.next();
  		if(rs.getRow()>0)
  		{
  			ses.setAttribute("fpass",rs.getString(1));//global variable of password
  			response.sendRedirect("recoverpass.jsp");
			
  		}
  		else
  		{
  				response.sendRedirect("http://ankur:8080/OnlineExamination/forgetpassword.jsp?msg=Your Contact No. or Email Id is Wrong...");
			
  		}
  }catch(Exception ee){}
  
   %>
  </body>
</html>
