
<%@ page import="com.epm.db.objects.Metrics" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'metrics.label', default: 'Metrics')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#show-metrics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="show-metrics" class="content scaffold-show" role="main">
			<div class="row">
				<div class="col-md-7">
					<h3><span class="label label-default">Metric Details are as below</span></h3>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="index"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>  Metrics List</g:link>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="create"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>  Create a New Metric</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
			<div class="col-md-5">
			<ol class="list-group">
			
				<li class="list-group-item list-group-item-info">
					<span id="metric_month-label" class="property-label"><g:message code="metrics.metric_month.label" default="Month" /></span>
					
						<span class="badge" aria-labelledby="metric_month-label"><g:fieldValue bean="${metricsInstance}" field="metric_month"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="defects_found-label" class="property-label"><g:message code="metrics.defects_found.label" default="Defects found" /></span>
					
						<span class="badge" aria-labelledby="defects_found-label"><g:fieldValue bean="${metricsInstance}" field="defects_found"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="defects_logged-label" class="property-label"><g:message code="metrics.defects_logged.label" default="Defects logged" /></span>
					
						<span class="badge" aria-labelledby="defects_logged-label"><g:fieldValue bean="${metricsInstance}" field="defects_logged"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="defects_rejected-label" class="property-label"><g:message code="metrics.defects_rejected.label" default="Defects rejected" /></span>
					
						<span class="badge" aria-labelledby="defects_rejected-label"><g:fieldValue bean="${metricsInstance}" field="defects_rejected"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="requirements_mapped-label" class="property-label"><g:message code="metrics.requirements_mapped.label" default="Requirements mapped" /></span>
					
						<span class="badge" aria-labelledby="requirements_mapped-label"><g:fieldValue bean="${metricsInstance}" field="requirements_mapped"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="requirements_baselined-label" class="property-label"><g:message code="metrics.requirements_baselined.label" default="Requirements baselined" /></span>
					
						<span class="badge" aria-labelledby="requirements_baselined-label"><g:fieldValue bean="${metricsInstance}" field="requirements_baselined"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="test_cases-label" class="property-label"><g:message code="metrics.test_cases.label" default="Test cases" /></span>
					
						<span class="badge" aria-labelledby="test_cases-label"><g:fieldValue bean="${metricsInstance}" field="test_cases"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="design_person_days-label" class="property-label"><g:message code="metrics.design_person_days.label" default="Design person days" /></span>
					
						<span class="badge" aria-labelledby="design_person_days-label"><g:fieldValue bean="${metricsInstance}" field="design_person_days"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="test_cases_executed-label" class="property-label"><g:message code="metrics.test_cases_executed.label" default="Test cases executed" /></span>
					
						<span class="badge" aria-labelledby="test_cases_executed-label"><g:fieldValue bean="${metricsInstance}" field="test_cases_executed"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="execution_person_days-label" class="property-label"><g:message code="metrics.execution_person_days.label" default="Execution person days" /></span>
					
						<span class="badge" aria-labelledby="execution_person_days-label"><g:fieldValue bean="${metricsInstance}" field="execution_person_days"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="automated_test_cases-label" class="property-label"><g:message code="metrics.automated_test_cases.label" default="Automated test cases" /></span>
					
						<span class="badge" aria-labelledby="automated_test_cases-label"><g:fieldValue bean="${metricsInstance}" field="automated_test_cases"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="comments-label" class="property-label"><g:message code="metrics.comments.label" default="Comments" /></span>
					
						<span class="badge" aria-labelledby="comments-label"><g:fieldValue bean="${metricsInstance}" field="comments"/></span>
					
				</li>
			
				<li class="list-group-item list-group-item-info">
					<span id="project-label" class="property-label"><g:message code="metrics.project.label" default="Project" /></span>
					
						<span class="badge" aria-labelledby="project-label"><g:link controller="project" action="show" id="${metricsInstance?.project?.id}">${metricsInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
			
			</ol>
			</div>
			</div>
			<g:form url="[resource:metricsInstance, action:'delete']" method="DELETE">
				<div class="row">
					<div class="col-lg-4 col-lg-offset-1">
						<div class="btn-group" role="group" aria-label="...">
							<g:link class="btn btn-success btn-lg btn-block" action="edit" resource="${metricsInstance}">Edit Metric</g:link>
						</div>
						<div class="btn-group" role="group" aria-label="...">
							<g:actionSubmit class="btn btn-danger btn-lg btn-block" action="delete" value="Delete Metric" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</div>
					</div>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
