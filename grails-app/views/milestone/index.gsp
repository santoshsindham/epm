
<%@ page import="com.epm.db.objects.Milestone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'milestone.label', default: 'Milestone')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container">
		<a href="#list-milestone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="list-milestone" class="content scaffold-list" role="main">
			<div class="row">
				<div class="col-md-8">
					<h3><span class="label label-default"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Milestones List</span></h3>
				</div>
				<div class="col-md-1 col-md-offset-1">
					<g:link class="btn btn-success" action="create"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>  Create a New Milestone</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="table-responsive">
			<table class="table table-condensed table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="milestone_Name" title="${message(code: 'milestone.milestone_Name.label', default: 'Milestone Name')}" />
					
						<th>Project</th>
					
						<g:sortableColumn property="milestone_Month" title="${message(code: 'milestone.milestone_Month.label', default: 'Milestone Month')}" />
					
						<g:sortableColumn property="planned_Start_Date" title="${message(code: 'milestone.planned_Start_Date.label', default: 'Planned Start Date')}" />
					
						<g:sortableColumn property="planned_End_Date" title="${message(code: 'milestone.planned_End_Date.label', default: 'Planned End Date')}" />
					
						<g:sortableColumn property="actual_Start_Date" title="${message(code: 'milestone.actual_Start_Date.label', default: 'Actual Start Date')}" />
					
						<g:sortableColumn property="actual_End_Date" title="${message(code: 'milestone.actual_End_Date.label', default: 'Actual End Date')}" />
					
						<g:sortableColumn property="planned_Effort" title="${message(code: 'milestone.planned_Effort.label', default: 'Planned Effort')}" />
					
						<g:sortableColumn property="actual_Effort" title="${message(code: 'milestone.actual_Effort.label', default: 'Actual Effort')}" />
					
						<g:sortableColumn property="comments" title="${message(code: 'milestone.comments.label', default: 'Comments')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${milestoneInstanceList}" status="i" var="milestoneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${milestoneInstance.id}">${fieldValue(bean: milestoneInstance, field: "milestone_Name")}</g:link></td>
											 
						<td>${fieldValue(bean: milestoneInstance, field: "project")}</td>
						 
						<td>${fieldValue(bean: milestoneInstance, field: "milestone_Month")}</td>
					
						<td><g:formatDate format="dd-MMM-yy" date="${milestoneInstance.planned_Start_Date}" /></td>
					
						<td><g:formatDate format="dd-MMM-yy" date="${milestoneInstance.planned_End_Date}" /></td>
					
						<td><g:formatDate format="dd-MMM-yy" date="${milestoneInstance.actual_Start_Date}" /></td>
					
						<td><g:formatDate format="dd-MMM-yy" date="${milestoneInstance.actual_End_Date}" /></td>
						
						<td>${fieldValue(bean: milestoneInstance, field: "planned_Effort")}</td>
						
						<td>${fieldValue(bean: milestoneInstance, field: "actual_Effort")}</td>
						
						<td>${fieldValue(bean: milestoneInstance, field: "comments")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${milestoneInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
	</body>
</html>
