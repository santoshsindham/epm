
<%@ page import="com.epm.db.objects.Dashboard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dashboard.label', default: 'Dashboard')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dashboard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dashboard" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dashboard">
			
				<g:if test="${dashboardInstance?.planned_Duration}">
				<li class="fieldcontain">
					<span id="planned_Duration-label" class="property-label"><g:message code="dashboard.planned_Duration.label" default="Planned Duration" /></span>
					
						<span class="property-value" aria-labelledby="planned_Duration-label"><g:fieldValue bean="${dashboardInstance}" field="planned_Duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.actual_Duration}">
				<li class="fieldcontain">
					<span id="actual_Duration-label" class="property-label"><g:message code="dashboard.actual_Duration.label" default="Actual Duration" /></span>
					
						<span class="property-value" aria-labelledby="actual_Duration-label"><g:fieldValue bean="${dashboardInstance}" field="actual_Duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.schedule_Variance}">
				<li class="fieldcontain">
					<span id="schedule_Variance-label" class="property-label"><g:message code="dashboard.schedule_Variance.label" default="Schedule Variance" /></span>
					
						<span class="property-value" aria-labelledby="schedule_Variance-label"><g:fieldValue bean="${dashboardInstance}" field="schedule_Variance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.effort_Variance}">
				<li class="fieldcontain">
					<span id="effort_Variance-label" class="property-label"><g:message code="dashboard.effort_Variance.label" default="Effort Variance" /></span>
					
						<span class="property-value" aria-labelledby="effort_Variance-label"><g:fieldValue bean="${dashboardInstance}" field="effort_Variance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.defect_Identification_Efficiency}">
				<li class="fieldcontain">
					<span id="defect_Identification_Efficiency-label" class="property-label"><g:message code="dashboard.defect_Identification_Efficiency.label" default="Defect Identification Efficiency" /></span>
					
						<span class="property-value" aria-labelledby="defect_Identification_Efficiency-label"><g:fieldValue bean="${dashboardInstance}" field="defect_Identification_Efficiency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.defect_Rejection_Ratio}">
				<li class="fieldcontain">
					<span id="defect_Rejection_Ratio-label" class="property-label"><g:message code="dashboard.defect_Rejection_Ratio.label" default="Defect Rejection Ratio" /></span>
					
						<span class="property-value" aria-labelledby="defect_Rejection_Ratio-label"><g:fieldValue bean="${dashboardInstance}" field="defect_Rejection_Ratio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.test_Coverage}">
				<li class="fieldcontain">
					<span id="test_Coverage-label" class="property-label"><g:message code="dashboard.test_Coverage.label" default="Test Coverage" /></span>
					
						<span class="property-value" aria-labelledby="test_Coverage-label"><g:fieldValue bean="${dashboardInstance}" field="test_Coverage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.test_Design_Productivity}">
				<li class="fieldcontain">
					<span id="test_Design_Productivity-label" class="property-label"><g:message code="dashboard.test_Design_Productivity.label" default="Test Design Productivity" /></span>
					
						<span class="property-value" aria-labelledby="test_Design_Productivity-label"><g:fieldValue bean="${dashboardInstance}" field="test_Design_Productivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.test_Execution_Productivity}">
				<li class="fieldcontain">
					<span id="test_Execution_Productivity-label" class="property-label"><g:message code="dashboard.test_Execution_Productivity.label" default="Test Execution Productivity" /></span>
					
						<span class="property-value" aria-labelledby="test_Execution_Productivity-label"><g:fieldValue bean="${dashboardInstance}" field="test_Execution_Productivity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.percentage_Of_Automation}">
				<li class="fieldcontain">
					<span id="percentage_Of_Automation-label" class="property-label"><g:message code="dashboard.percentage_Of_Automation.label" default="Percentage Of Automation" /></span>
					
						<span class="property-value" aria-labelledby="percentage_Of_Automation-label"><g:fieldValue bean="${dashboardInstance}" field="percentage_Of_Automation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dashboardInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="dashboard.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${dashboardInstance?.project?.id}">${dashboardInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dashboardInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dashboardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
