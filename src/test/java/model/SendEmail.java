
package model;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;


public class SendEmail {

    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    
    public boolean sendNewPass(String email, String newPassword) {
        boolean test = false;

        String toEmail = email;
        String fromEmail = "leeka2201@gmail.com";
        String password = "dewymtrcoxxyjxlv";

        try {

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
            props.put("mail.smtp.port", "587"); //TLS Port
            props.put("mail.smtp.auth", "true"); //enable authentication
            props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
            Session session = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            Message mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            mess.setSubject("User Email Verification");
            mess.setText("Hello, new password is: " + newPassword);
            Transport.send(mess);
            test = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return test;
    }
//    public static void main(String[] args) {
//        SendEmail se = new SendEmail();
//        se.sendNewPass("anhlekieu2201@gmail.com", "123456789");
//    }
    
}
