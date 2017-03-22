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


		<div class="col-sm-9">
		<div class="row">
		<div class="col-sm-3">  </div>
		<div class="col-sm-9">
		<!-- column 2 -->	
       <h3> Add vehicule</h3>  
            
       <hr>
    

<dsp:importbean bean="/quickstart/RepositoryFormHanlder/VehiculeFormHandler"/>
	<dsp:getvalueof var="idDriver" param="id" vartype="java.lang.String"/>

	<dsp:form  method="post"  >
	
		<div class="form-group">
            <label class="col-lg-3 control-label">Registration Number :</label>
            <div class="col-lg-8">
               <dsp:input class="form-control"  type="text" bean="VehiculeFormHandler.value.mat"/>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Brand :</label>
            <div class="col-lg-8">
               <dsp:input class="form-control"  type="text"  bean="VehiculeFormHandler.value.mark" />
            </div>
          </div>
          
		
		
        <dsp:input bean="VehiculeFormHandler.value.drivers.repositoryIds" type="hidden" paramvalue="id" />
		
	
				
		
		
		 <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
            <div class=" row spacing-row"></div>
              <dsp:input bean="VehiculeFormHandler.create" type="submit" class="btn btn-primary" value="Add " />
              <a class="btn btn-default"href="detailDriver.jsp?id=${idDriver}">
				  Cancel
				</a>
               <dsp:input bean="VehiculeFormHandler.createSuccessURL" type="hidden" value="detailDriver.jsp?id=${idDriver}"/>
            </div>
		
        
	</dsp:form>


</body>
</html>
</dsp:page>