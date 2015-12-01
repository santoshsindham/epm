
<%@ page import="com.epm.db.objects.Metrics" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'metrics.label', default: 'Metrics')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container">
		<a href="#list-metrics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="list-metrics" class="content scaffold-list" role="main">
			<div class="row">
				<div class="col-md-8">
					<h3><span class="label label-default"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> Metrics List</span></h3>
				</div>
				<div class="col-md-1 col-md-offset-1">
					<g:link class="btn btn-success" action="create"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>  Create a New Metric</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="table-responsive">
			<table class="table table-condensed table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="metric_month" title="${message(code: 'metrics.metric_month.label', default: 'Month')}" />
					
						<th>Project</th>
					
						<g:sortableColumn property="defects_found" title="${message(code: 'metrics.defects_found.label', default: 'Defects found')}" />
					
						<g:sortableColumn property="defects_logged" title="${message(code: 'metrics.defects_logged.label', default: 'Defects logged')}" />
					
						<g:sortableColumn property="defects_rejected" title="${message(code: 'metrics.defects_rejected.label', default: 'Defects rejected')}" />
					
						<g:sortableColumn property="requirements_mapped" title="${message(code: 'metrics.requirements_mapped.label', default: 'Requirements mapped')}" />
					
						<g:sortableColumn property="requirements_baselined" title="${message(code: 'metrics.requirements_baselined.label', default: 'Requirements baselined')}" />
					
						<g:sortableColumn property="test_cases" title="${message(code: 'metrics.test_cases.label', default: 'Test cases')}" />
					
						<g:sortableColumn property="design_person_days" title="${message(code: 'metrics.design_person_days.label', default: 'Design person days')}" />
					
						<g:sortableColumn property="test_cases_executed" title="${message(code: 'metrics.test_cases_executed.label', default: 'Test cases executed')}" />
					
						<g:sortableColumn property="execution_person_days" title="${message(code: 'metrics.execution_person_days.label', default: 'Execution person days')}" />
					
						<g:sortableColumn property="automated_test_cases" title="${message(code: 'metrics.automated_test_cases.label', default: 'Automated test cases')}" />
					
						<g:sortableColumn property="comments" title="${message(code: 'metrics.comments.label', default: 'Comments')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${metricsInstanceList}" status="i" var="metricsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${metricsInstance.id}">${fieldValue(bean: metricsInstance, field: "metric_month")}</g:link></td>
											 
						<td>${fieldValue(bean: metricsInstance, field: "project")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "defects_found")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "defects_logged")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "defects_rejected")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "requirements_mapped")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "requirements_baselined")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "test_cases")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "design_person_days")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "test_cases_executed")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "execution_person_days")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "automated_test_cases")}</td>
					
						<td>${fieldValue(bean: metricsInstance, field: "comments")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${metricsInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
