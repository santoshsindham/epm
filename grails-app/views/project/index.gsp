
<%@ page import="com.epm.db.objects.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="project_Name" title="${message(code: 'project.project_Name.label', default: 'Project Name')}" />
					
						<g:sortableColumn property="project_Type" title="${message(code: 'project.project_Type.label', default: 'Project Type')}" />
					
						<g:sortableColumn property="manager_Name" title="${message(code: 'project.manager_Name.label', default: 'Manager Name')}" />
					
						<g:sortableColumn property="sla_Amount" title="${message(code: 'project.sla_Amount.label', default: 'Sla Amount')}" />
					
						<g:sortableColumn property="coc_Name" title="${message(code: 'project.coc_Name.label', default: 'Coc Name')}" />
					
						<g:sortableColumn property="start_Date" title="${message(code: 'project.start_Date.label', default: 'Start Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "project_Name")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "project_Type")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "manager_Name")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "sla_Amount")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "coc_Name")}</td>
					
						<td><g:formatDate date="${projectInstance.start_Date}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
