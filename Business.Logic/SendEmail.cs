using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;

namespace Business.Logic
{
   public class SendEmail
    {

  public string SendMail(string toAddress, string subject, string body)
   {
     string result = "Message Sent Successfully..!!";
     string senderID = "";// use sender’s email id here..
     const string senderPassword = ""; // sender password here…
     try
     {
       SmtpClient smtp = new SmtpClient
       {
         Host = "smtp.gmail.com", // smtp server address here…
         Port = 587,
         EnableSsl = true,
         DeliveryMethod = SmtpDeliveryMethod.Network,
         Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
         Timeout = 30000,
       };
       MailMessage message = new MailMessage(senderID, toAddress, subject, body);
       smtp.Send(message);
     }
     catch (Exception ex)
     {
       result = "Error sending email.!!!";
     }
     return result;
   }


    }
}
