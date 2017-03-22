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
</head>
<body>
<div class="container">
  
  <!-- upper section -->
  <div class="row">
	<div class="col-sm-3">
      <!-- left -->
      

      
  	</div><!-- /span-3 -->
    <div class="col-sm-9">
      	
      <!-- column 2 -->	
       <h3> Driver Details</h3>  
            
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
		<div class="col-md-12">
		<ul class="list-group">
		 	<li class="list-group-item text-muted"><i class="glyphicon glyphicon-tags">   Profile </i></li>
           
            <li class="list-group-item "><span class="pull-left"><strong>First name: </strong></span>   <dsp:valueof
				param="element.firstName" /></li>
            <li class="list-group-item"><span class="pull-left"><strong>Last name:  </strong></span>   <dsp:valueof param="element.lastName" /></li>
            
          </ul> 
		
		
		
		
		</div>
		<div class="col-md-12">
		<ul class="list-group">
		 	<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Licence </i>   
		 	<dsp:a href="editLicence.jsp">  
						 <dsp:param name="id" param="element.repositoryId" />
		 	<button type="button" class="btn btn-primary  pull-right"  ><span  class="glyphicon glyphicon-edit"></span></button></li></dsp:a>
           
            <li class="list-group-item "><span class="pull-left"><strong>Driving Licence type: </strong></span><p >   <dsp:valueof param="element.type" /></p></li>
            <li class="list-group-item"><span class="pull-left"><strong>Driving Licence number:  </strong></span>   <dsp:valueof param="element.num" /></li>
            
          </ul> 
          
		<dsp:droplet name="/atg/dynamo/droplet/ForEach">
			<dsp:param name="array" param="element.vehicules" />
			
			<dsp:oparam name="outputStart">
			<dsp:importbean bean="/quickstart/RepositoryFormHanlder/VehiculeFormHandler"/>
				<ul class="list-group">
										<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Vehicules </i>   
									 				<dsp:a href="AddVehicule.jsp">
													 <dsp:param name="id" value="${id }" />
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
										<li class="list-group-item ">
								
								 <div class="spacing-row"></div>
								
								<div class="table-responsive">
			  					<table id="mytable" class="table table-bordred table-striped table-hover">
			  					<thead>
									<tr>
									<th>Registration Number </th>
										<th>Brand</th>
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
							
							<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Vehicule</i>   
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


					
		
		<dsp:droplet name="/atg/dynamo/droplet/ForEach">
			<dsp:param name="array" param="element.accidents" />
			<dsp:oparam name="outputStart">
				<dsp:importbean bean="/quickstart/RepositoryFormHanlder/AccidentFormHandler" />
				
						<div class="col-md-12">
									<ul class="list-group">
										<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Accident</i>   
									 				<dsp:a href="addAccident.jsp">
													 <dsp:param name="id" value="${id }" />
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
										<li class="list-group-item ">
								
								 <div class="spacing-row"></div>
								
								<div class="table-responsive">
			  					<table id="mytable" class="table table-bordred table-striped table-hover">
			  					<thead>
									<tr>
									<th>Date</th>
										<th>Description</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
				
				
				
				
			</dsp:oparam>
			
			<dsp:oparam name="output" >
			
							<tr>
						 	<td><dsp:valueof param="element.dateAccident" /></td>
						 	<td><dsp:valueof param="element.description" /></td>
							<td>
							
								<dsp:a href="editAccident.jsp"> 
									<dsp:param name="accidentId" param="element.repositoryId" />
									<dsp:param name="id" param="element.driver.repositoryId" />
									<p data-placement="top" data-toggle="tooltip" title="Edit">
									<button style="font-size: 18px" class="btn btn-primary btn-xs" data-title="Edit" > 
									<span  class="glyphicon glyphicon-edit"></span></button></p>
								</dsp:a>
								</td>
								<td>
									<dsp:form action="<%=request.getRequestURI()%>" method="post">
										<dsp:input type="hidden" bean="AccidentFormHandler.repositoryId" paramvalue="element.repositoryId" />
										<dsp:input bean="AccidentFormHandler.delete" type="submit" value="Delete" class="btn btn-danger btn-xs"></dsp:input>
										<dsp:input bean="AccidentFormHandler.deleteSuccessURL" type="hidden" value="detailDriver.jsp?id=${userId }" />
									</dsp:form>
							
							</td>
							</tr>
		
			</dsp:oparam>
			<dsp:oparam name="outputEnd" >
				
				</tbody>
 				 </table>
 				 
 				 </li>
 				 </ul> 
				</div>

			</dsp:oparam>
			<dsp:oparam name="empty">
   						 <div class="col-md-12">
							<ul class="list-group">
							
							<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Accident</i>   
									 				<dsp:a href="addAccident.jsp">
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
		
		
		
		


		
		


		<dsp:droplet name="/atg/dynamo/droplet/ForEach">
			<dsp:param name="array" param="element.policefines" />
			
			<dsp:oparam name="outputStart">
		
								<div class="col-md-12">
									<ul class="list-group">
										<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> PoliceFine </i>   
									 				<dsp:a href="addPoliceFine.jsp"> 
													 <dsp:param name="id" value="${id }" />
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
										<li class="list-group-item ">
								<dsp:importbean bean="/quickstart/RepositoryFormHanlder/PoliceFineFormHandler"/>
								 <div class="spacing-row"></div>
								
								<div class="table-responsive">
			  					<table id="mytable" class="table table-bordred table-striped table-hover">
			  					<thead>
									<tr>
										<th>Key</th>
										<th>Value</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
					</dsp:oparam>
			
			<dsp:oparam name="output">
						<tr>
						 	<td><dsp:valueof param="element.key" /></td>
						 	<td><dsp:valueof param="element.value" /></td>
						 	
							<td>
							<div class="row">
								<dsp:a href="editPoliceFine.jsp">  
									<dsp:param name="id" param="element.repositoryId" />
									<dsp:param name="id_driver" value="${id }" />
									<p data-placement="top" data-toggle="tooltip" title="Edit">
									<button style="font-size: 18px" class="btn btn-primary btn-xs" data-title="Edit" > 
									<span  class="glyphicon glyphicon-edit"></span></button></p>
								</dsp:a>
									
							
							</td>
							<td>
								<dsp:form action="<%=request.getRequestURI()%>" method="post">
									<dsp:input type="hidden" bean="PoliceFineFormHandler.repositoryId" paramvalue="element.repositoryId" />
									<dsp:input bean="PoliceFineFormHandler.delete" type="submit" value="Delete" class="btn btn-danger btn-xs"></dsp:input>
									<dsp:input bean="PoliceFineFormHandler.deleteSuccessURL" type="hidden" value="detailDriver.jsp?id=${userId }" />
								</dsp:form>
								</div>
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
								<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> PoliceFine</i>   
									 				<dsp:a href="addPoliceFine.jsp"> 
													 <dsp:param name="id" value="${id }" />
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
										<li class="list-group-item ">
						
						 <div class="spacing-row"></div>
						
						<div class="table-responsive">
	  					<table id="mytable" class="table table-bordred table-striped table-hover">
	  					
						<tbody>
						</tbody>
		 				 </table>
		 				 
		 				 </li>
		 				 </ul> 
								</div>
  					</dsp:oparam>
			
			
		</dsp:droplet>
		
		
				<dsp:droplet name="/atg/dynamo/droplet/ForEach">

			<dsp:param name="array" param="element.destinations" />
			
					<dsp:oparam name="outputStart">
		
								<div class="col-md-12">
									<ul class="list-group">
										<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Destination</i>   
									 				<dsp:a href="AddDestination.jsp">
													 <dsp:param name="id" value="${id }" />
									 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
										<li class="list-group-item ">
								
								 <div class="spacing-row"></div>
								
								<div class="table-responsive">
			  					<table id="mytable" class="table table-bordred table-striped table-hover">
			  					<thead>
									<tr>
										<th>Destination</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
					</dsp:oparam>
					
			<dsp:oparam name="output">
						<tr>
						 	<td><dsp:valueof param="element.destinationCity" /></td>
							<td>
							<div class="row">
								<dsp:a href="editDestination.jsp"> 
									<dsp:param name="id" param="element.driver.repositoryId" />
									<dsp:param name="destinationId" param="element.repositoryId" />
									<p data-placement="top" data-toggle="tooltip" title="Edit">
									<button style="font-size: 18px" class="btn btn-primary btn-xs" data-title="Edit" > 
									<span  class="glyphicon glyphicon-edit"></span></button></p>
								</dsp:a>
									
							
		
										<%-- 	<dsp:a href="editDestination.jsp"> Edit 
															 				 <dsp:param name="id" param="element.driver.repositoryId" />
							
												<dsp:param name="destinationId" param="element.repositoryId" />
							
											</dsp:a> --%>
							
							</td>
							<td>
								<dsp:form action="<%=request.getRequestURI()%>" method="post">
									<dsp:input type="hidden" bean="DestinationFormHandler.repositoryId" paramvalue="element.repositoryId" />
									<dsp:input bean="DestinationFormHandler.delete" type="submit" value="Delete" class="btn btn-danger btn-xs"></dsp:input>
									<dsp:input bean="DestinationFormHandler.deleteSuccessURL" type="hidden" value="detailDriver.jsp?id=${userId }" />
								</dsp:form>
								</div>
							</td>
				</tr>
							
							
							
							
								<%-- 					
								<dsp:form action="<%=request.getRequestURI()%>" method="post">
												                          <dsp:input type="text"  bean="DriverFormHandler.value.destinations.updateMode"  value="remove"/>
				
									<dsp:input type="hidden" bean="DriverFormHandler.repositoryId"
										paramvalue="element.repositoryId" />
				
									<dsp:input bean="DriverFormHandler.delete" type="submit"
										value="delete"></dsp:input>
									<dsp:input bean="DriverFormHandler.deleteSuccessURL" type="hidden"
										value="detailDriver.jsp?id=${userId }" />
								</dsp:form>
				
								<br> --%>


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
								<li style="padding-bottom: 20px" class="list-group-item text-muted "><i class="glyphicon glyphicon-tags"> Destination</i>   
							 				<dsp:a href="AddDestination.jsp">
											 <dsp:param name="id" value="${id }" />
							 	<button type="button" class="btn btn-info pull-right"  ><span  class="glyphicon glyphicon-plus-sign"></span></button></dsp:a></li>
								<li class="list-group-item ">
						
						 <div class="spacing-row"></div>
						
						<div class="table-responsive">
	  					<table id="mytable" class="table table-bordred table-striped table-hover">
	  					
						<tbody>
						</tbody>
		 				 </table>
		 				 
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