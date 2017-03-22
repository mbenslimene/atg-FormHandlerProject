<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_1"
	prefix="dsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<dsp:page>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mycss.css">
</head>
<body>
<div class="container">
  
  <!-- upper section -->
  <div class="row">
	<div class="col-sm-3">
      <!-- left -->
      <h3></i> All Items</h3>
      <hr>
      
      <ul class="nav nav-stacked">
        <li><a href="http://www.bootply.com/85861" target="ext"> Driver</a></li>
        <li><a href="http://www.bootply.com/85861" target="ext"> Accident</a></li>
        <li><a href="http://www.bootply.com/85861" target="ext"></i> Vehicule</a></li>
        <li><a href="http://www.bootply.com/85861" target="ext">Destination</a></li>
        <li><a href="http://www.bootply.com/85861" target="ext"> Police Fine</a></li>
      </ul>
      
      <hr>
      
  	</div><!-- /span-3 -->
    <div class="col-sm-9">
      	
      <!-- column 2 -->	
       <h3><i class="glyphicon glyphicon-dashboard"></i> Bootply Dashboard</h3>  
            
       <hr>
 <div class="row">
	<dsp:getvalueof var="id" param="id" vartype="java.lang.String">

	</dsp:getvalueof>
	<dsp:getvalueof var="userId" param="id" vartype="java.lang.String"></dsp:getvalueof>

	<dsp:importbean
		bean="/quickstart/RepositoryFormHanlder/DestinationFormHandler" />

	<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet" />
	<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true" />
	<dsp:droplet name="ItemLookupDroplet">
		<dsp:param name="id" value="${id }" />
		<dsp:param name="repository" bean="/quickstart/repository/NewRep" />
		<dsp:param name="itemDescriptor" value="driver" />

		<dsp:oparam name="output">
		
		

		<dsp:droplet name="/atg/dynamo/droplet/ForEach">
			<dsp:param name="array" param="element.vehicules" />
			
			<dsp:oparam name="outputStart">
			<dsp:importbean bean="/quickstart/RepositoryFormHanlder/VehiculeFormHandler"/>
				<ul class="list-group">
										<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Vehicule Items </i>   
									 				<dsp:a href="AddVehicule.jsp">
													 <dsp:param name="id" value="${id }" />
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
										<li class="list-group-item ">
								
								 <div class="spacing-row"></div>
								
								<div class="table-responsive">
			  					<table id="mytable" class="table table-bordred table-striped table-hover">
			  					<thead>
									<tr>
									<th>Vehicle Registration Number </th>
										<th>Brand vehicle</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
			
			
			
				
			</dsp:oparam>
			<dsp:oparam name="output">
						<tr>
						 	<td><dsp:valueof param="element.mat" /></td>
						 	<td><dsp:valueof param="element.mark" /></td>
							<td>
							
								<dsp:a href="editVehicule.jsp"> 
									<dsp:param name="id" param="element.repositoryId" />
									<dsp:param name="id_driver" value="${id }" />
									<p data-placement="top" data-toggle="tooltip" title="Edit">
									<button style="font-size: 18px" class="btn btn-primary btn-xs" data-title="Edit" > 
									<span  class="glyphicon glyphicon-edit"></span></button></p>
								</dsp:a>
								</td>
								<td>
									<dsp:form action="<%=request.getRequestURI()%>" method="post">
										<dsp:input type="hidden" bean="VehiculeFormHandler.repositoryId" paramvalue="element.repositoryId" />
										<dsp:input bean="VehiculeFormHandler.delete" type="submit" value="Delete" class="btn btn-danger btn-xs"></dsp:input>
										<dsp:input bean="VehiculeFormHandler.deleteSuccessURL" type="hidden" value="detailDriver.jsp?id=${userId }" />
									</dsp:form>
							
							</td>
							</tr>
			
			
			

			</dsp:oparam>
			<dsp:oparam name="outputEnd">
				</tbody>
 				 </table>
 				 
 				 </li>
 				 </ul> 
				</div>

			</dsp:oparam>
			<dsp:oparam name="empty">
 						<div class="col-md-12">
							<ul class="list-group">
							
							<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Vehicule Items </i>   
									 				<dsp:a href="AddVehicule.jsp">
													 <dsp:param name="id" value="${id }" />
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
										<li class="list-group-item ">
							
								
						
						 <div class="spacing-row"></div>
						
						<div class="table-responsive">
	  					<table id="mytable" class="table table-bordred table-striped table-hover">
	  					
						<tbody>
						</tbody>
		 				 </table>
		 				 </div>
		 				 </li>
		 				 </ul> 
							</div>	
			</dsp:oparam>

		
		



</dsp:droplet>

</dsp:oparam>
	</dsp:droplet>

</div>

</div>
</body>
	</html>
</dsp:page>