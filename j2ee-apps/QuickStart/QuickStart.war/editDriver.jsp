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
</head>
<body>

<dsp:importbean bean="/quickstart/RepositoryFormHanlder/DriverFormHandler"/>
	    <dsp:getvalueof var="driverId" param="id" vartype="java.lang.String"></dsp:getvalueof>
	    		<dsp:setvalue bean="DriverFormHandler.repositoryId" paramvalue="id" />
	    ${driverId}
	
      <dsp:form action="<%=request.getRequestURI()%>" method="post">
         nom : <dsp:input type="text" bean="DriverFormHandler.value.firstName"/><br>
         prenom : <dsp:input type="text" bean="DriverFormHandler.value.lastName"/><br>
        
             <dsp:input type="text" bean="DriverFormHandler.repositoryId" paramvalue="id"  name="id"/>
           <dsp:input bean="DriverFormHandler.update" type="submit" value="update" ></dsp:input>
            
            <dsp:input bean="DriverFormHandler.delete" type="submit" value="delete"></dsp:input>
               <dsp:input bean="DriverFormHandler.updateSuccessURL" type="hidden" value="detailDriver.jsp?id=${driverId}"/>
               <dsp:input bean="DriverFormHandler.deleteSuccessURL" type="hidden" value="affichage.jsp"/>

    </dsp:form>


</body>
</html>
</dsp:page>