package connect;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;

import com.sun.mail.smtp.SMTPMessage;
//Main m = new Main(em,);
public class Main {
    public static String m_to;
    public static String m_text;
    public static String m_resume;
    public Main(String mto,String mtext,String mresume)
    {

m_to = mto;
m_text=mtext;
m_resume=mresume;
System.out.println("mail toooooooooooooooooooo"+m_to);
System.out.println("kya krna hai"+m_text);
System.out.println("resumeeeee"+m_resume);
    }

  public static void main(String[] args) throws MessagingException, IOException {
   // Session session = buildGoogleSession();
    //Message simpleMessage = buildSimpleMessage(session);
    //sendMessageToAddress(simpleMessage, "aartigugalia94@gmail.com");
    //Message messageWithAttachment = buildMessageWithAttachment(session);
    //sendMessageToAddress(messageWithAttachment, m_to);
    //Message withImage = buildMessageWithEmbeddedImage(session);
   //addressAndSendMessage(withImage, "aartigugalia94@gmail.com");
  }

  //
  //
  // configuration methods
  //
  //

  /**
   * Build a Session object for an SMTP server that requires neither TSL or
   * authentication
   *
   * @return a Session for sending email
   */
  public static Session buildSimpleSession() {
    Properties mailProps = new Properties();
    mailProps.put("mail.transport.protocol", "smtp");
    mailProps.put("mail.host", "localhost");
    mailProps.put("mail.from", "avani1727@gmail.com");
    return Session.getDefaultInstance(mailProps);
  }

  /**
   * Build a Session object for an SMTP server that requires both TSL and
   * authentication. This uses Gmail as an example of such a server
   *
   * @return a Session for sending email
   */
  public static Session buildGoogleSession() {
    Properties mailProps = new Properties();
    mailProps.put("mail.transport.protocol", "smtp");
    mailProps.put("mail.host", "smtp.gmail.com");
    mailProps.put("mail.from", "avani1727@gmail.com");
    mailProps.put("mail.smtp.starttls.enable", "true");
    mailProps.put("mail.smtp.port", "587");
    mailProps.put("mail.smtp.auth", "true");
    // final, because we're using it in the closure below
    final PasswordAuthentication usernamePassword = new PasswordAuthentication(
        "avani1727@gmail.com", "anjiritz");
    Authenticator auth = new Authenticator() {
            @Override
      protected PasswordAuthentication getPasswordAuthentication() {
        return usernamePassword;
      }
    };
    Session session = Session.getInstance(mailProps, auth);
    session.setDebug(true);
    return session;

  }


  //
  //
  // Message building methods
  //
  //

  /**
   * Build a simple text message - no attachments.
   *
   * @param session
   * @return a multipart MIME message with only one part, a simple text message.
   * @throws MessagingException
   */
  public static Message buildSimpleMessage(Session session)
      throws MessagingException {
    SMTPMessage m = new SMTPMessage(session);
    MimeMultipart content = new MimeMultipart();
    MimeBodyPart mainPart = new MimeBodyPart();
    mainPart.setText("Hello there! This is simple demo message");
   content.addBodyPart(mainPart);
    m.setContent(content);
    m.setSubject("Demo message");
    return m;
  }


  /**
   * Build a text message with an image as an attachment.
   *
   * @param session
   * @return a multipart MIME message where the first part is a text
   * message and the second part is an image
   * @throws MessagingException
   * @throws IOException
   */
  public Message buildMessageWithAttachment(Session session)
      throws MessagingException, IOException {
    SMTPMessage m = new SMTPMessage(session);
    MimeMultipart content = new MimeMultipart();

    // The main (text) part
    MimeBodyPart mainPart = new MimeBodyPart();
    mainPart.setText(m_text);
    content.addBodyPart(mainPart);

    // The image
    MimeBodyPart imagePart = new MimeBodyPart();
    //System.out.print("resources/"+m_resume+"");
   // imagePart.attachFile("C:/Users/Surbhi/Documents/NetBeansProjects/jobportalbansthali/resources"+m_resume+"");
    content.addBodyPart(imagePart);

    m.setContent(content);
    m.setSubject("Demo message with a teapot!");
    return m;
  }

  /**
   * Build an HTML message with an image embedded in the message.
   *
   * @param session
   * @return a multipart MIME message where the main part is an HTML message and the
   * second part is an image that will be displayed within the HTML.
   * @throws MessagingException
   * @throws IOException
   */
  public static Message buildMessageWithEmbeddedImage(Session session)
      throws MessagingException, IOException {
    SMTPMessage m = new SMTPMessage(session);
    MimeMultipart content = new MimeMultipart("related");

    // ContentID is used by both parts
    String cid = attach.getContentId();

    // HTML part
   /* MimeBodyPart textPart = new MimeBodyPart();
    textPart.setText("<html><head>"
      + "<title>This is not usually displayed</title>"
      + "</head>\n"
//      + "<body><div><b>Hi there!</b></div>"
//      + "<div>Sending HTML in email is so <i>cool!</i> </div>\n"
//      + "<div>And here's an image: <img src=\"cid:"
//      + cid
//      + "\" /></div>\n" + "<div>I hope you like it!</div></body></html>",
//      "US-ASCII", "html");
//    content.addBodyPart(textPart);
//*/
//    // Image part
    MimeBodyPart imagePart = new MimeBodyPart();
    //imagePart.attachFile("C:/Users/Administrator/Documents/NetBeansProjects/jobportal/resources/"+m_resume+"");
    imagePart.setContentID("<" + cid + ">");
    imagePart.setDisposition(MimeBodyPart.INLINE);
    content.addBodyPart(imagePart);

    m.setContent(content);
    m.setSubject("Demo HTML message");
    return m;
  }
//
//
//  //
//  //
//  // Message sending methods
//  //
//  //
//
//  /**
//   * Send the message with Transport.send(Message)
//   *
//   * @param message
//   * @param recipient
//   * @throws MessagingException
//   */
  public static void addressAndSendMessage(Message message, String recipient)
      throws AddressException, MessagingException {
    message.setRecipient(RecipientType.TO, new InternetAddress(recipient));
    Transport.send(message);
  }

  /**
   * Send the message with Transport.send(Message, Address[])
   *
   * @param message
   * @param recipient
   * @throws MessagingException
   */
  public void sendMessageToAddress(Message message, String recipient)
      throws MessagingException {
    InternetAddress[] recipients = { new InternetAddress(recipient) };
    Transport.send(message, recipients);
  }
public void sms2() throws MessagingException, IOException
{
    //Message messageWithAttachment;

    try{
   Session session = buildGoogleSession();
//    Message simpleMessage = buildSimpleMessage(session);
//    sendMessageToAddress(simpleMessage, "aartigugalia94@gmail.com");
    Message messageWithAttachment = buildMessageWithAttachment(session);
    sendMessageToAddress(messageWithAttachment, m_to);

}

catch(Exception e){
e.printStackTrace();
}
    //return messageWithAttachment;
}
}