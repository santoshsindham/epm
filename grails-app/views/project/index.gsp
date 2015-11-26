
<%@ page import="com.epm.db.objects.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container">
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-project" class="content scaffold-list" role="main">
			<div class="row">
				<div class="col-md-8">
					<h3><span class="label label-default"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Projects List</span></h3>
				</div>
				<div class="col-md-1 col-md-offset-1">
					<g:link class="btn btn-success" action="create"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>  Create a New Project</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="table-responsive">
			<table class="table table-condensed table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="project_Name" title="${message(code: 'project.project_Name.label', default: 'Project Name')}" />
					
						<g:sortableColumn property="project_Type" title="${message(code: 'project.project_Type.label', default: 'Project Type')}" />
					
						<g:sortableColumn property="sla_Status" title="${message(code: 'project.sla_Status.label', default: 'SLA Status')}" />
					
						<g:sortableColumn property="manager_Name" title="${message(code: 'project.manager_Name.label', default: 'Manager Name')}" />
					
						<g:sortableColumn property="sla_Amount" title="${message(code: 'project.sla_Amount.label', default: 'Sla Amount')}" />
					
						<g:sortableColumn property="coc_Name" title="${message(code: 'project.coc_Name.label', default: 'Coc Name')}" />
					
						<g:sortableColumn property="start_Date" title="${message(code: 'project.start_Date.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="end_Date" title="${message(code: 'project.end_Date.label', default: 'End Date')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "project_Name")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "project_Type")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "sla_Status")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "manager_Name")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "sla_Amount")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "coc_Name")}</td>
					
						<td><g:formatDate format="dd-MMM-yy" date="${projectInstance.start_Date}" /></td>
					
						<td><g:formatDate format="dd-MMM-yy" date="${projectInstance.end_Date}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${projectInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
