package com.app.rooms;
import java.io.IOException;
import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.mysql.cj.Session;


import com.mysql.cj.Session;

@WebServlet("/SendEmailServlet")
public class SendEmailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String toEmail = request.getParameter("gmail");
        String fullName = request.getParameter("fullName");

        String fromEmail = "yourgmail@gmail.com"; // your Gmail
        String password = "yourapppassword";      // use App Password (not your main password)
        
        String subject = "Hotel Reservation Confirmation";
        String messageText = "Dear " + fullName + ",\n\nYour reservation has been successfully confirmed.\n\nThank you!";

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(fromEmail, password);
                    }
                });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject(subject);
            message.setText(messageText);

            Transport.send(message);
            response.sendRedirect("bookingSuccess.jsp");

        } catch (MessagingException e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
