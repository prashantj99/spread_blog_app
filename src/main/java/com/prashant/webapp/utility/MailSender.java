package com.prashant.webapp.utility;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.*;
import javax.servlet.ServletContext;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MailSender {

    public static boolean send(String to, String subject, String content, ServletContext context) {
        // Get the email configuration properties from the ServletContext
        Properties emailProperties = new Properties();
        try {
            InputStream input = context.getResourceAsStream("/WEB-INF/app.properties");
            emailProperties.load(input);
        } catch (IOException e) {
            System.err.println("Failed to load email properties file.");
            e.printStackTrace();
            return false;
        }

        // Get email properties from the properties file
        final String useremail = emailProperties.getProperty("useremail");
        final String password = emailProperties.getProperty("password");
        
        // Set up email server properties
        Properties props = new Properties();
        props.put("mail.smtp.host", emailProperties.getProperty("mail.smtp.host"));
        props.put("mail.smtp.port", emailProperties.getProperty("mail.smtp.port"));
        props.put("mail.smtp.auth", emailProperties.getProperty("mail.smtp.auth"));
        props.put("mail.smtp.starttls.enable", emailProperties.getProperty("mail.smtp.starttls.enable"));

        // Create a session for sending email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(useremail, password);
            }
        });

        try {
            // Create an email message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(useremail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(content);

            // Send the email
            Transport.send(message);

            System.out.println("Email sent successfully");
            return true;
        } catch (MessagingException e) {
            System.err.println("Error in sending email");
            e.printStackTrace();
        }
        return false;
    }
}
