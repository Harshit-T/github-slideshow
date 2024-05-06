package com.job.email;

import java.util.Properties;
import javax.mail.*;  
import javax.mail.internet.*;  

public class sendMail {
	
	public void sendEmail(String to,String subject,String content)  
	   {  
	  
	      String host="smtp.gmail.com";//change accordingly  
	     // String to="pranavkulkarni1110@gmail.com";//change accordingly  
	      final String user = "harshittanwar86@gmail.com";

		  final String password = "witv zcip dwgk etiq";//Erp@2022
	  
	      Properties props = System.getProperties();  
	      props.setProperty("mail.smtp.host",host ); 
	      props.put("mail.transport.protocol", "smtp");

			props.put("mail.smtp.auth", "true");

			props.put("mail.smtp.ssl.enable", "true");

			props.put("mail.user", user);

			props.put("mail.password", password);

			props.put("mail.port", "465");
	       
	  
	      Session session = Session.getDefaultInstance(props,  
	    new javax.mail.Authenticator() {  
	     protected PasswordAuthentication getPasswordAuthentication() {  
	      return new PasswordAuthentication(user,password);  
	     }  
	      });  
	        
	      try{  
	         MimeMessage message = new MimeMessage(session);  
	         message.setFrom(new InternetAddress(user));  
	         message.addRecipient(Message.RecipientType.TO,  
	                                  new InternetAddress(to));  
	  
	        message.setSubject(subject);  
	        message.setContent(content,"text/html" );  
	    
	       Transport.send(message);  
	         System.out.println("message sent....");  
	      }catch (MessagingException ex)
	      {
	    	  ex.printStackTrace();
	    	  }  
	   }  

}
