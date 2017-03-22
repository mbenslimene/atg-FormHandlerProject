<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<dsp:page>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Drivers</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>



	<dsp:droplet name="/atg/dynamo/droplet/SQLQueryRange">
		<dsp:param name="dataSource"
			bean="/atg/dynamo/service/jdbc/JTDataSource" />
		<dsp:param name="transactionManager"
			bean="/atg/dynamo/transaction/TransactionManager" />
		<dsp:param name="querySQL" value="select count(*) from DriverE1" />
		<dsp:param name="start" value="1" />
		<dsp:param name="howMany" value="100000" />
		<dsp:oparam name="outputStart">
		</dsp:oparam>
		<dsp:oparam name="output">

			<dsp:getvalueof var="nbreTotalElement" param="element.column[0]"
				vartype="java.lang.Integer">
			</dsp:getvalueof>

			<c:set var="restElementPerItemDisplayed" scope="page"
				value="${(nbreTotalElement - startIndexQuery )/ 20}" />

		</dsp:oparam>
		<dsp:oparam name="outputEnd">
		</dsp:oparam>
	</dsp:droplet>


	<c:choose>
		<c:when test="${not empty param.startIndex}">
			<c:set var="startIndexQuery" value="${param.startIndex}" />
		</c:when>
		<c:when test="${param.startIndex ==0}">
			<c:set var="startIndexQuery" value="1" />
		</c:when>
		<c:otherwise>
			<c:set var="startIndexQuery" value="1" />
		</c:otherwise>
	</c:choose>
<div class="container">

 <div class="col-md-12">
        <h4>Drivers</h4>
 <div class="table-responsive">
	 
	  <table id="mytable" class="table table-bordred table-striped table-hover">
		<dsp:importbean bean="/quickstart/RepositoryFormHanlder/DriverFormHandler" />

		<dsp:droplet name="/atg/dynamo/droplet/RQLQueryRange">
			<dsp:param name="queryRQL" value="all" />
			<dsp:param name="repository" value="/quickstart/repository/NewRep" />
			<dsp:param name="itemDescriptor" value="driver" />
			<dsp:param name="howMany" value="20" />
			<dsp:param name="start" value="${startIndexQuery}" />
			

			<dsp:oparam name="output">
				
      			<tr>
					<td><dsp:valueof param="element.firstName"></dsp:valueof></td>
					<td><dsp:valueof param="element.lastName" /></td>
					<td><dsp:valueof param="element.email" /></td>
					<td>
					<dsp:a href="detailDriver.jsp">  
						<dsp:param name="id" param="element.repositoryId" /> <p data-placement="top" data-toggle="tooltip" title="Edit"><button style="font-size: 18px" class="btn btn-primary btn-xs" data-title="Edit" > <span  class="glyphicon glyphicon-edit"></span></button></p></dsp:a>
						
						
					 </td>
					
						<td>
					<p data-placement="top" data-toggle="tooltip" title="Delete">
					<dsp:form action="<%=request.getRequestURI()%>" method="post">
							<dsp:input type="hidden" bean="DriverFormHandler.repositoryId"
								paramvalue="element.repositoryId" />
							<dsp:input bean="DriverFormHandler.delete" type="submit"
								value="Delete" class="btn btn-danger btn-xs"></dsp:input>
							<dsp:input bean="DriverFormHandler.deleteSuccessURL"
								type="hidden" value="affichage.jsp" />
					</dsp:form></td>
				</tr>
			</dsp:oparam>
			
			<dsp:oparam name="outputStart">
				<dsp:importbean bean="/quickstart/FormHandler/DriverFormHandler" />
				<dsp:droplet name="/atg/dynamo/droplet/Switch">
				<dsp:param name="value" param="hasPrev" />
				<dsp:oparam name="true">
						<c:set var="showPrevious" value="true" scope="page" />
				</dsp:oparam>
				</dsp:droplet>
				<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					 <th>Action</th>
                       
				</tr>
				</thead>
				<tbody>
			</dsp:oparam>
			<dsp:oparam name="outputEnd">
				</tbody>
 				 </table>
				
</div>


<div class="row pull-right">

			<dsp:droplet name="/atg/dynamo/droplet/Switch">
				<dsp:param name="value" param="hasNext" />
				<dsp:oparam name="true">
					<c:set var="showNext" value="true" scope="page" />

				</dsp:oparam>
			</dsp:droplet>
			
			
			
			<h1>
		<c:out value="${nextStartPage}" />
	</h1>
	<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
		<c:if test="${showPrevious}">
			<li class="page-item"><dsp:a class="page-link"
					href="affichage.jsp">Previous
    		  <dsp:param name="startIndex" param="prevStart" />
					<c:if test="${not empty param.nbreElement}">
						<dsp:param name="nbreElement" param="20" />
					</c:if>
				</dsp:a></li>
		</c:if>

		<c:forEach begin="1" end="${restElementPerItemDisplayed }"
			varStatus="loop">
			<!--  <li class="page-item"><a class="page-link" href="#">${loop.index}</a></li>-->
			<li class="page-item"><dsp:a class="page-link"
					href="affichage.jsp">${loop.index}		
								<c:choose>
						<c:when test="${loop.index == 1}">
							<dsp:param name="nbreElement" value="20" />
							<dsp:param name="startIndex" value="1" />
						</c:when>
						<c:otherwise>
							<dsp:param name="nbreElement" value="20" />
							<dsp:param name="startIndex"
								value="${(loop.index-1) * 20 }" />
						</c:otherwise>
					</c:choose>
				</dsp:a></li>
		</c:forEach>

		<c:if test="${showNext}">
			<li class="page-item"><dsp:a class="page-link"
					href="affichage.jsp">Next
    		  <dsp:param name="startIndex" param="nextStart" />
					<c:if test="${not empty param.nbreElement}">
						<dsp:param name="nbreElement" value="20" />
					</c:if>
				</dsp:a></li>

		</c:if>
		<li class="page-item"></li>





	</ul>

	</nav>
	
</div>
	
	
			</dsp:oparam>

	</dsp:droplet>



	

</div>


</body>
	</html>
</dsp:page>