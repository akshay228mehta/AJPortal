
import java.util.Date;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class sendfile {
String from = "avani1727@gmail.com";
        String to = null;
        String d_host = "smtp.gmail.com";
        String d_port = "465";
        String subject = "Important Message";
        String bodyText = null;
        String filename = null;
	/**
	 * JavaProgrammingForums.com
	 */

    public static void main(String[] args) {
        
    }
public sendfile(String m1_to,String m1_text,String fl)
{

    to = m1_to;
    bodyText = m1_text;
    filename = fl;
}
    public void sendEmail() {
        

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "465");
        Session session = Session.getDefaultInstance(properties, null);

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setSentDate(new Date());

            //
            // Set the email message text.
            //
            MimeBodyPart messagePart = new MimeBodyPart();
            messagePart.setText(bodyText);

            //
            // Set the email attachment file
            //
            MimeBodyPart attachmentPart = new MimeBodyPart();
            FileDataSource fileDataSource = new FileDataSource(filename) {
                @Override
                public String getContentType() {
                    return "application/octet-stream";
                }
            };
            attachmentPart.setDataHandler(new DataHandler(fileDataSource));
            attachmentPart.setFileName(filename);

            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(messagePart);
            multipart.addBodyPart(attachmentPart);

            message.setContent(multipart);

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}