package com.detailsdriver;

import java.io.IOException;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.servlet.ServletException;

import atg.repository.servlet.RepositoryFormHandler;
import atg.service.email.ContentPart;
import atg.service.email.EmailEvent;
import atg.service.email.EmailException;
import atg.service.email.MimeMessageUtils;
import atg.service.email.SMTPEmailSender;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;

public class CustFormHandlerVehicule extends RepositoryFormHandler {
    private SMTPEmailSender sender ;
    private String email;
    private String name;
    
    
    
    @Override
	protected void preDeleteItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.preDeleteItem(pRequest, pResponse);
		logInfo("preDeleteItem Vheicule");
		this.email=(String) super.getValueProperty("driver.email");
		this.name=(String) super.getValueProperty("driver.name");

		
		
	}
	

	@Override
	protected void postDeleteItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.postDeleteItem(pRequest, pResponse); 
		logInfo("postDeleteItem Vheicule");
		sendEmail("Vheicule est supprimer" , email,name);		
	}
    
    
    
    
    
    public SMTPEmailSender getSender() {
    	return sender;
    }
    public void setSender(SMTPEmailSender sender) {
    	this.sender = sender;
    }


    private void sendEmail(String message,String sendTo,String name){
   	 try {
            final Message msg = MimeMessageUtils.createMessage(getSender().getDefaultFrom(), "Registration");
            MimeMessageUtils.setRecipient(msg, Message.RecipientType.TO, sendTo);
            ContentPart[] content = {
                    new ContentPart("Hi"+name, "text/plain"),
                    new ContentPart(message, "text/html")
            };
            MimeMessageUtils.setContent(msg, content);

            final EmailEvent em = new EmailEvent(msg);
            getSender().sendEmailEvent(em);

            logDebug("Registraion email has been sent successfully !");

        } catch (MessagingException | EmailException e) {
        	logDebug("Error when sending registraion email !", e);
        }
    }
    
    
   	
}
