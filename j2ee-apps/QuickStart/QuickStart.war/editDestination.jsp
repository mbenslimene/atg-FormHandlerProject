<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<dsp:page>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mycss.css">
</head>
<body>
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/DestinationFormHandler"/>
  	    <dsp:getvalueof var="driverId" param="id" vartype="java.lang.String"></dsp:getvalueof>
  	   
  
		<dsp:setvalue bean="DestinationFormHandler.repositoryId" paramvalue="destinationId"/>
	
	
					      <%-- <dsp:form action="<%=request.getRequestURI()%>" method="post">
					         Destination  : <dsp:input type="text" bean="DestinationFormHandler.value.destinationCity"/><br>
					        
					             <dsp:input type="hidden"  bean="DestinationFormHandler.repositoryId" paramvalue="destinationId" />
					           <dsp:input bean="DestinationFormHandler.update" type="submit" value="update" ></dsp:input>
					
					            <dsp:input bean="DestinationFormHandler.cancel" type="reset" value="Cancel"/>
					            <dsp:input bean="DestinationFormHandler.delete" type="submit" value="delete"></dsp:input>
					<dsp:input
					bean="DestinationFormHandler.updateSuccessURL" type="hidden" value="detailDriver.jsp?id=${driverId }"/>
					<dsp:input
					bean="DestinationFormHandler.deleteSuccessURL" type="hidden" value="detailDriver.jsp?id=${driverId }"/>
					    </dsp:form> --%>
					    
					    
					     <div class="row">
	
	<div class="col-sm-9">
	<div class="row">
	<div class="col-sm-3"></div>
	<div class="col-sm-9">
      	
      <!-- column 2 -->	
       <h3> Edit Destination</h3>  
            
       <hr>
       </div>
	</div>
        <dsp:form  class="form-horizontal" role="form"  method="post">
       
          <div class="form-group">
            <label class="col-lg-3 control-label">Destination :</label>
            <div class="col-lg-8">
            <dsp:input class="form-control"  type="text" bean="DestinationFormHandler.value.destinationCity"/>
               <dsp:input type="hidden"  bean="DestinationFormHandler.repositoryId" paramvalue="destinationId" />
               
            </div>
          </div>
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
             <dsp:input bean="DestinationFormHandler.update" type="submit" class="btn btn-primary" value="Update" />
              
              
             <a class="btn btn-default"href="detailDriver.jsp?id=${driverId}">
				  Cancel
				</a>
                <dsp:input
					bean="DestinationFormHandler.updateSuccessURL" type="hidden" value="detailDriver.jsp?id=${driverId }"/>
            </div>
          </div>
        </dsp:form >
   </div>
					    
					    
					    

</body>
</html>
</dsp:page>