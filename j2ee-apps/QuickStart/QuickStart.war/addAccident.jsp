<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<dsp:page>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mycss.css">
<title>Insert title here</title>
</head>
<body>

	
		<div class="col-sm-9">
		<div class="row">
		<div class="col-sm-3">  </div>
		<div class="col-sm-9">
		<!-- column 2 -->	
       <h3> Add Accident</h3>  
            
       <hr>
    


<dsp:importbean bean="/quickstart/RepositoryFormHanlder/AccidentFormHandler"/>
	<dsp:getvalueof var="idDriver" param="id" vartype="java.lang.String">

	</dsp:getvalueof>
      <dsp:form action="<%=request.getRequestURI()%>" method="post">
      
    
    
    
    <div class="form-group">
            <label class="col-lg-3 control-label">Date :</label>
            <div class="col-lg-8">
               <dsp:input class="form-control"  type="text" bean="AccidentFormHandler.value.dateAccident"/>
            </div>
          </div>
          
            <div class="form-group">
            <label class="col-lg-3 control-label">Description :</label>
            <div class="col-lg-8">
               <dsp:input class="form-control"  type="text" bean="AccidentFormHandler.value.description"/>
            </div>
          </div>
         
          
           <dsp:input type="hidden" bean="AccidentFormHandler.value.driver.repositoryId" paramvalue="id" />
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
            <div class=" row spacing-row"></div>
              <dsp:input bean="AccidentFormHandler.create" type="submit" class="btn btn-primary" value="Add " />
      
      
      <a class="btn btn-default"href="detailDriver.jsp?id=${idDriver}">
				  Cancel
				</a>
                <dsp:input  bean="AccidentFormHandler.createSuccessURL" type="hidden" value="detailDriver.jsp?id=${idDriver }"/>
            </div>
          
        </dsp:form >
   </div></div></div>

</body>
</html>
</dsp:page>