
<%@ page import="com.epm.db.objects.Milestone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'milestone.label', default: 'Milestone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#show-milestone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="show-milestone" class="content scaffold-show" role="main">	
			<div class="row">
				<div class="col-md-7">
					<h3><span class="label label-default">Milestone Details are as below</span></h3>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="index"><span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>  Milestones List</g:link>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="create"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>  Create a New Milestone</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
			<div class="col-md-5">
			<ol class="list-group">
			
				
				<li class="list-group-item list-group-item-info">
					<span id="milestone_Name-label" class="property-label"><g:message code="milestone.milestone_Name.label" default="Milestone Name" /></span>
					
						<span class="badge" aria-labelledby="milestone_Name-label"><g:fieldValue bean="${milestoneInstance}" field="milestone_Name"/></span>
					
				</li>
				
				<li class="list-group-item list-group-item-info">
					<span id="milestone_Month-label" class="property-label"><g:message code="milestone.milestone_Month.label" default="Milestone Month" /></span>
					
						<span class="badge" aria-labelledby="milestone_Month-label"><g:fieldValue bean="${milestoneInstance}" field="milestone_Month"/></span>
					
				</li>
			
				
				<li class="list-group-item list-group-item-info">
					<span id="planned_Start_Date-label" class="property-label"><g:message code="milestone.planned_Start_Date.label" default="Planned Start Date" /></span>
					
						<span class="badge" aria-labelledby="planned_Start_Date-label"><g:formatDate format="dd-MMM-yy" date="${milestoneInstance?.planned_Start_Date}" /></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="planned_End_Date-label" class="property-label"><g:message code="milestone.planned_End_Date.label" default="Planned End Date" /></span>
					
						<span class="badge" aria-labelledby="planned_End_Date-label"><g:formatDate format="dd-MMM-yy" date="${milestoneInstance?.planned_End_Date}" /></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="actual_Start_Date-label" class="property-label"><g:message code="milestone.actual_Start_Date.label" default="Actual Start Date" /></span>
					
						<span class="badge" aria-labelledby="actual_Start_Date-label"><g:formatDate format="dd-MMM-yy" date="${milestoneInstance?.actual_Start_Date}" /></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="actual_End_Date-label" class="property-label"><g:message code="milestone.actual_End_Date.label" default="Actual End Date" /></span>
					
						<span class="badge" aria-labelledby="actual_End_Date-label"><g:formatDate format="dd-MMM-yy" date="${milestoneInstance?.actual_End_Date}" /></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="planned_Effort-label" class="property-label"><g:message code="milestone.planned_Effort.label" default="Planned Effort" /></span>
					
						<span class="badge" aria-labelledby="planned_Effort-label"><g:fieldValue bean="${milestoneInstance}" field="planned_Effort"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="actual_Effort-label" class="property-label"><g:message code="milestone.actual_Effort.label" default="Actual Effort" /></span>
					
						<span class="badge" aria-labelledby="actual_Effort-label"><g:fieldValue bean="${milestoneInstance}" field="actual_Effort"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="comments-label" class="property-label"><g:message code="milestone.comments.label" default="Comments" /></span>
					
						<span class="badge" aria-labelledby="comments-label"><g:fieldValue bean="${milestoneInstance}" field="comments"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="project-label" class="property-label"><g:message code="milestone.project.label" default="Project" /></span>
					
						<span class="badge" aria-labelledby="project-label"><g:link controller="project" action="show" id="${milestoneInstance?.project?.id}">${milestoneInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
			
			</ol>
			</div>
			</div>
			<g:form url="[resource:milestoneInstance, action:'delete']" method="DELETE">
				<div class="row">
					<div class="col-lg-4 col-lg-offset-1">
						<div class="btn-group" role="group" aria-label="...">
							<g:link class="btn btn-success btn-lg btn-block" action="edit" resource="${milestoneInstance}">Edit Milestone</g:link>
						</div>
						<div class="btn-group" role="group" aria-label="...">
							<g:actionSubmit class="btn btn-danger btn-lg btn-block" action="delete" value="Delete Milestone" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</div>
					</div>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
