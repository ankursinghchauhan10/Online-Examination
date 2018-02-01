<%@ page language="java" import="java.util.*,java.util.Properties,javax.mail.Message,javax.mail.MessagingException,javax.mail.PasswordAuthentication,javax.mail.Session,javax.mail.Transport,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentmail.jsp' starting page</title>
    
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
    HttpSession sess=request.getSession();
    
    
    String to=sess.getAttribute("email").toString();
    String sub="Login Password";
    String msg="Dear Student Your 5 Digit Unique Password is "+sess.getAttribute("pass").toString()+".";
    
    final String username = "ankur.tendlya@gmail.com";
		final String password = "9452017689";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtpcorp.com");//will be given by smtp2go.com
		props.put("mail.smtp.port", "2525");//will be given by smtp2go.com
 
		Session ses = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(ses);
			message.setFrom(new InternetAddress("ankur.tendlya@gmail.com"));//email id through 
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));
			message.setSubject(sub);
			message.setText(msg);
 
			Transport.send(message);
 			response.sendRedirect("http://ankur:8080/OnlineExamination/studentlogin.jsp?msg=Your Unique Password is Send On your mail");
	        //out.println("Done");
 
		} catch (MessagingException e) {
			out.print("Error in Mailing");
			//throw new RuntimeException(e);
		}
    
    
    
     %>
  </body>
</html>
