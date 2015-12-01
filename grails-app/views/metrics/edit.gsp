<%@ page import="com.epm.db.objects.Metrics" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'metrics.label', default: 'Metrics')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#edit-metrics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="edit-metrics" class="content scaffold-edit" role="main">
			<div class="row">
				<div class="col-md-7">
					<h3><p class="bg-primary">Edit Metric Details</p></h3>
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
			<g:hasErrors bean="${metricsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${metricsInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:metricsInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${metricsInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="row">
					<div class="col-lg-4 col-lg-offset-2">
					<g:submitButton action="update" name="create" class="btn btn-success btn-lg btn-block" value="Update Metric" />
					</div>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
