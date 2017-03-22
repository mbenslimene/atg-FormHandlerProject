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
<dsp:importbean bean="/quickstart/RepositoryFormHanlder/DriverFormHandler"/>

	<dsp:getvalueof var="idDriver" param="id" vartype="java.lang.String">

	</dsp:getvalueof>


    <div class="row">
	
	<div class="col-sm-9">
	<div class="row">
	<div class="col-sm-3"></div>
	<div class="col-sm-9">
      	
      <!-- column 2 -->	
       <h3> Add Destination</h3>  
            
       <hr>
       </div>
	</div>
        <dsp:form  class="form-horizontal" role="form" method="post">
       
          <div class="form-group">
            <label class="col-lg-3 control-label">Destination :</label>
            <div class="col-lg-8">
              <dsp:input class="form-control" type="text" bean="DestinationFormHandler.value.destinationCity"/>
              
               <dsp:input type="hidden"  bean="DestinationFormHandler.value.driver.repositoryIds" paramvalue="id"/>
            </div>
          </div>
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <dsp:input bean="DriverFormHandler.update" type="submit" class="btn btn-primary" value="Add" />
              
               <a class="btn btn-default"href="detailDriver.jsp?id=${idDriver}">
				  Cancel
				</a>
                <dsp:input bean="DestinationFormHandler.createSuccessURL" type="hidden" value="detailDriver.jsp?id=${idDriver }"/>
            </div>
          </div>
        </dsp:form >
   </div>
    
    
    
    	
     <%--  <dsp:form action="<%=request.getRequestURI()%>" method="post">
         city  : <dsp:input class="form-control" type="text" bean="DestinationFormHandler.value.destinationCity"/><br>
                      
                 <dsp:input type="text" bean="DriverFormHandler.value.destinations[0].destinationCity"/>
                <dsp:input type="hidden"  bean="DriverFormHandler.value.destinations.updateMode" value="append"/>
                <dsp:input type="hidden"  bean="DriverFormHandler.value.destinations.numNewValues" value="1"/>
                        
               <dsp:input bean="DriverFormHandler.update" type="submit" class="btn btn-primary" value="Save Changes"" />
                <dsp:input bean="DestinationFormHandler.cancel"  type="reset" class="btn btn-default" value="Cancel"/>
                <dsp:input bean="DestinationFormHandler.createSuccessURL" type="hidden" value="detailDriver.jsp?id=${idDriver }"/>

    </dsp:form> --%>

</body>
</html>
</dsp:page>