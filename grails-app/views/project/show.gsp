
<%@ page import="com.epm.db.objects.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-project" class="content scaffold-show" role="main">			
			<div class="row">
				<div class="col-md-7">
					<h3><span class="label label-default">Project Details are as below</span></h3>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="index"><span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>  Projects List</g:link>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="create"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>  Create a New Project</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
			<div class="col-md-5">
			<ol class="list-group">
			
				<li class="list-group-item list-group-item-info">
					<span id="project_Name-label" class="property-label"><g:message code="project.project_Name.label" default="Project Name" /></span>
					
						<span class="badge" aria-labelledby="project_Name-label"><g:fieldValue bean="${projectInstance}" field="project_Name"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="project_Type-label" class="property-label"><g:message code="project.project_Type.label" default="Project Type" /></span>
					
						<span class="badge" aria-labelledby="project_Type-label"><g:fieldValue bean="${projectInstance}" field="project_Type"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="manager_Name-label" class="property-label"><g:message code="project.manager_Name.label" default="Manager Name" /></span>
					
						<span class="badge" aria-labelledby="manager_Name-label"><g:fieldValue bean="${projectInstance}" field="manager_Name"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="sla_Amount-label" class="property-label"><g:message code="project.sla_Amount.label" default="Sla Amount" /></span>
					
						<span class="badge" aria-labelledby="sla_Amount-label"><g:fieldValue bean="${projectInstance}" field="sla_Amount"/></span>
					
				</li>
				
				<li class="list-group-item list-group-item-info">
					<span id="coc_Name-label" class="property-label"><g:message code="project.coc_Name.label" default="Coc Name" /></span>
					
						<span class="badge" aria-labelledby="coc_Name-label"><g:fieldValue bean="${projectInstance}" field="coc_Name"/></span>
					
				</li>
				
				<li class="list-group-item list-group-item-info">
					<span id="start_Date-label" class="property-label"><g:message code="project.start_Date.label" default="Start Date" /></span>
					
						<span class="badge" aria-labelledby="start_Date-label"><g:formatDate format="dd-MMM-yy" date="${projectInstance?.start_Date}" /></span>
					
				</li>
				
				<li class="list-group-item list-group-item-info">
					<span id="end_Date-label" class="property-label"><g:message code="project.end_Date.label" default="End Date" /></span>
					
						<span class="badge" aria-labelledby="end_Date-label"><g:formatDate format="dd-MMM-yy" date="${projectInstance?.end_Date}" /></span>
					
				</li>
				
				<li class="list-group-item list-group-item-info">
					<span id="sla_Status-label" class="property-label"><g:message code="project.sla_Status.label" default="Sla Status" /></span>
					
						<span class="badge" aria-labelledby="sla_Status-label"><g:fieldValue bean="${projectInstance}" field="sla_Status"/></span>
					
				</li>
			
			</ol>
			</div>
			</div>
			<g:form url="[resource:projectInstance, action:'delete']" method="DELETE">
				<div class="row">
					<div class="col-lg-4 col-lg-offset-1">
						<div class="btn-group" role="group" aria-label="...">
							<g:link class="btn btn-success btn-lg btn-block" action="edit" resource="${projectInstance}">Edit Project</g:link>
						</div>
						<div class="btn-group" role="group" aria-label="...">
							<g:actionSubmit class="btn btn-danger btn-lg btn-block" action="delete" value="Delete Project" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</div>
					</div>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
