<%@ page language="java" import="java.util.*,java.util.Properties,javax.mail.Message,javax.mail.MessagingException,javax.mail.PasswordAuthentication,javax.mail.Session,javax.mail.Transport,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'mail.jsp' starting page</title>
      </head>
  
  <body>
    <%
    String to=request.getParameter("to");
    String sub=request.getParameter("subject");
    String msg=request.getParameter("msg");
    
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
 			response.sendRedirect("http://ankur:8080/OnlineExamination/sendmail.jsp?msg=Your message has been send");
	        
	        
 
		} catch (MessagingException e) {
			out.print("Error in Mailing");
		}
    
    
    
     %>
  </body>
</html>
