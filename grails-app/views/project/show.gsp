
<%@ page import="com.epm.db.objects.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.project_Name}">
				<li class="fieldcontain">
					<span id="project_Name-label" class="property-label"><g:message code="project.project_Name.label" default="Project Name" /></span>
					
						<span class="property-value" aria-labelledby="project_Name-label"><g:fieldValue bean="${projectInstance}" field="project_Name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.project_Type}">
				<li class="fieldcontain">
					<span id="project_Type-label" class="property-label"><g:message code="project.project_Type.label" default="Project Type" /></span>
					
						<span class="property-value" aria-labelledby="project_Type-label"><g:fieldValue bean="${projectInstance}" field="project_Type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.manager_Name}">
				<li class="fieldcontain">
					<span id="manager_Name-label" class="property-label"><g:message code="project.manager_Name.label" default="Manager Name" /></span>
					
						<span class="property-value" aria-labelledby="manager_Name-label"><g:fieldValue bean="${projectInstance}" field="manager_Name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.sla_Amount}">
				<li class="fieldcontain">
					<span id="sla_Amount-label" class="property-label"><g:message code="project.sla_Amount.label" default="Sla Amount" /></span>
					
						<span class="property-value" aria-labelledby="sla_Amount-label"><g:fieldValue bean="${projectInstance}" field="sla_Amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.coc_Name}">
				<li class="fieldcontain">
					<span id="coc_Name-label" class="property-label"><g:message code="project.coc_Name.label" default="Coc Name" /></span>
					
						<span class="property-value" aria-labelledby="coc_Name-label"><g:fieldValue bean="${projectInstance}" field="coc_Name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.start_Date}">
				<li class="fieldcontain">
					<span id="start_Date-label" class="property-label"><g:message code="project.start_Date.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="start_Date-label"><g:formatDate date="${projectInstance?.start_Date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.end_Date}">
				<li class="fieldcontain">
					<span id="end_Date-label" class="property-label"><g:message code="project.end_Date.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="end_Date-label"><g:formatDate date="${projectInstance?.end_Date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.sla_Status}">
				<li class="fieldcontain">
					<span id="sla_Status-label" class="property-label"><g:message code="project.sla_Status.label" default="Sla Status" /></span>
					
						<span class="property-value" aria-labelledby="sla_Status-label"><g:fieldValue bean="${projectInstance}" field="sla_Status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:projectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${projectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
