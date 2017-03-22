package com.genitems;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;

import atg.repository.Repository;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;
import atg.servlet.DynamoServlet;

public class CustDropletGeneratorBD extends DynamoServlet {

	
	private GeneratorDBItems generatorDBItems;
	
	
	public GeneratorDBItems getGeneratorDBItems() {
		return generatorDBItems;
	}

	public void setGeneratorDBItems(GeneratorDBItems generatorDBItems) {
		this.generatorDBItems = generatorDBItems;
	}

	
	public CustDropletGeneratorBD() {

	}
/*
 * (non-Javadoc)
 * @see atg.servlet.DynamoServlet#service(atg.servlet.DynamoHttpServletRequest, atg.servlet.DynamoHttpServletResponse)
 */
	public void service(DynamoHttpServletRequest request, DynamoHttpServletResponse response)
			throws ServletException, IOException {

         if(generatorDBItems.generateRandomItems()){
        	 ServletOutputStream out = response.getOutputStream (); out.println
    		  ("<h1>successfully added</h1>");
        	 vlogDebug("succces from Droplet ");
         }else {
        	 ServletOutputStream out = response.getOutputStream (); out.println
    		  ("<h1>Erreur</h1>");
         };
		
	}

}