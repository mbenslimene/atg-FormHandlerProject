	<dsp:importbean bean="/atg/dynamo/droplet/ItemLookupDroplet" />
	<dsp:setvalue bean="ItemLookupDroplet.useParams" value="true" />
	<dsp:droplet name="ItemLookupDroplet">
		<dsp:param name="id" value="${id }" />
		<dsp:param name="repository" bean="/quickstart/repository/NewRep" />
		<dsp:param name="itemDescriptor" value="driver" />

		<dsp:oparam name="output">
		
		</dsp:oparam>

		<dsp:droplet name="/atg/dynamo/droplet/ForEach">

			<dsp:param name="array" param="element.destinations" />
			<dsp:oparam name="empty">
			hhhh
			</dsp:oparam>
					<dsp:oparam name="outputStart">
		
						
		
						<figure class="box"> <dsp:a href="AddDestination.jsp">
							<dsp:param name="id" value="${id }" />
								<button style="font-size: 18px" class="btn btn-default"><span class="glyphicon glyphicon-plus button-image" ></span> Add 
								</button>
						</dsp:a>
						 <div class="spacing-row"></div>
						
						<div class="table-responsive">
	  					<table id="mytable" class="table table-bordred table-striped table-hover">
	  					<thead>
							<tr>
								<th>Destination</th>
								<th>Edit</th>
			                    <th>Delete</th>
							</tr>
						</thead>
						<tbody>
					</dsp:oparam>
			<dsp:oparam name="output">
						<tr>
						 	<td><dsp:valueof param="element.destinationCity" /></td>
							<td>
								<dsp:a href="editDestination.jsp"> 
									<dsp:param name="id" param="element.driver.repositoryId" />
									<dsp:param name="destinationId" param="element.repositoryId" />
									<p data-placement="top" data-toggle="tooltip" title="Edit">
									<button style="font-size: 18px" class="btn btn-primary btn-xs" data-title="Edit" > 
									<span  class="glyphicon glyphicon-edit"></span></button></p>
								</dsp:a>
									
							</td>
		
										<%-- 	<dsp:a href="editDestination.jsp"> Edit 
															 				 <dsp:param name="id" param="element.driver.repositoryId" />
							
												<dsp:param name="destinationId" param="element.repositoryId" />
							
											</dsp:a> --%>
							
							
							<td>
								<dsp:form action="<%=request.getRequestURI()%>" method="post">
									<dsp:input type="hidden" bean="DestinationFormHandler.repositoryId" paramvalue="element.repositoryId" />
									<dsp:input bean="DestinationFormHandler.delete" type="submit" value="Delete" class="btn btn-danger btn-xs"></dsp:input>
									<dsp:input bean="DriverFormHandler.deleteSuccessURL" type="hidden" value="detailDriver.jsp?id=${userId }" />
								</dsp:form>
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

			</dsp:oparam>



</dsp:droplet>


	</dsp:droplet>