
<%@ page import="com.epm.db.objects.Dashboard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dashboard.label', default: 'Dashboard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container">
		<a href="#list-dashboard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>\
		
		<div id="list-dashboard" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="table-responsive">
			<table class="table table-condensed table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="dashboard_month" title="${message(code: 'dashboard.dashboard_month.label', default: 'Dashboard Month')}" />
					
						<g:sortableColumn property="planned_Duration" title="${message(code: 'dashboard.planned_Duration.label', default: 'Planned Duration')}" />
					
						<g:sortableColumn property="actual_Duration" title="${message(code: 'dashboard.actual_Duration.label', default: 'Actual Duration')}" />
					
						<g:sortableColumn property="schedule_Variance" title="${message(code: 'dashboard.schedule_Variance.label', default: 'Schedule Variance')}" />
					
						<g:sortableColumn property="effort_Variance" title="${message(code: 'dashboard.effort_Variance.label', default: 'Effort Variance')}" />
					
						<g:sortableColumn property="defect_Identification_Efficiency" title="${message(code: 'dashboard.defect_Identification_Efficiency.label', default: 'Defect Identification Efficiency')}" />
					
						<g:sortableColumn property="defect_Rejection_Ratio" title="${message(code: 'dashboard.defect_Rejection_Ratio.label', default: 'Defect Rejection Ratio')}" />
					
						<g:sortableColumn property="test_Coverage" title="${message(code: 'dashboard.test_Coverage.label', default: 'Test Coverage')}" />
					
						<g:sortableColumn property="test_Design_Productivity" title="${message(code: 'dashboard.test_Design_Productivity.label', default: 'Test Design Productivity')}" />
					
						<g:sortableColumn property="test_Execution_Productivity" title="${message(code: 'dashboard.test_Execution_Productivity.label', default: 'Test Execution Productivity')}" />
					
						<g:sortableColumn property="percentage_Of_Automation" title="${message(code: 'dashboard.percentage_Of_Automation.label', default: 'Percentage of Automation')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dashboardInstanceList}" status="i" var="dashboardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: dashboardInstance, field: "dashboard_month")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "planned_Duration")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "actual_Duration")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "schedule_Variance")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "effort_Variance")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "defect_Identification_Efficiency")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "defect_Rejection_Ratio")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "test_Coverage")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "test_Design_Productivity")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "test_Execution_Productivity")}</td>
					
						<td>${fieldValue(bean: dashboardInstance, field: "percentage_Of_Automation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${dashboardInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
