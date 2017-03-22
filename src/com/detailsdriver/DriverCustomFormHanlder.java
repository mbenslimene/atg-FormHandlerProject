package com.detailsdriver;

import java.io.IOException;

import javax.mail.Message;

import javax.mail.MessagingException;

import javax.servlet.ServletException;


import atg.repository.MutableRepositoryItem;
import atg.repository.servlet.RepositoryFormHandler;

import atg.service.email.ContentPart;

import atg.service.email.EmailEvent;

import atg.service.email.EmailException;

import atg.service.email.MimeMessageUtils;

import atg.service.email.SMTPEmailSender;

import atg.servlet.DynamoHttpServletRequest;

import atg.servlet.DynamoHttpServletResponse;

public class DriverCustomFormHanlder extends RepositoryFormHandler {
    private SMTPEmailSender sender ;

    private String propertyEmail;
    private String email;
    private String propertyFirstName;
    private String name;
    
    
    
    
  
    
    
    
    
/*
	@Override
	protected void preDeleteItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.preDeleteItem(pRequest, pResponse);
		logInfo((String) super.getValueProperty(propertyEmail));
		logInfo((String) super.getValueProperty(propertyFirstName));
		this.email=(String) super.getValueProperty(propertyEmail);
		this.name=(String) super.getValueProperty(propertyFirstName);
		
	}
	

	@Override
	protected void postDeleteItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.postDeleteItem(pRequest, pResponse);    
		sendEmail("accident est supprimer" , email,name);		
	}
	
	
	@Override
		protected void postCreateItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
				throws ServletException, IOException {
			// TODO Auto-generated method stub
		
		logInfo("psot addAccident");
		sendEmail("accident est ajouté" , email,name);
	}*/



	
	@Override
	protected void preUpdateItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		logInfo("preUpdateItem Licence");
		super.preUpdateItem(pRequest, pResponse);
		logInfo((String) super.getValueProperty(propertyEmail));
		logInfo((String) super.getValueProperty(propertyFirstName));
		this.email=(String) super.getValueProperty(propertyEmail);
		this.name=(String) super.getValueProperty(propertyFirstName);
		
	}


	@Override
	protected void postUpdateItem(DynamoHttpServletRequest pRequest, DynamoHttpServletResponse pResponse)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		logInfo("postUpdateItem Licence");
		super.postUpdateItem(pRequest, pResponse);
		sendEmail("biennn", "bssmahdi@gmail.com","malek");	}


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
public SMTPEmailSender getSender() {
	return sender;
}
public void setSender(SMTPEmailSender sender) {
	this.sender = sender;
}


public String getPropertyEmail() {
	return propertyEmail;
}


public void setPropertyEmail(String propertyEmail) {
	this.propertyEmail = propertyEmail;
}


public String getPropertyFirstName() {
	return propertyFirstName;
}


public void setPropertyFirstName(String propertyFirstName) {
	this.propertyFirstName = propertyFirstName;
}















	
	
	
	
	
	

}
