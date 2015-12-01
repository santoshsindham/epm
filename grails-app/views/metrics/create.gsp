<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'metrics.label', default: 'Metrics')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#create-metrics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="create-metrics" class="content scaffold-create" role="main">		
			<div class="row">
				<div class="col-md-8">
					<h3><span class="label label-default">Please enter below details to create a New Metric</span> <span class="glyphicon glyphicon-hand-down" aria-hidden="true"></span></h3>
				</div>
				<div class="col-md-1 col-md-offset-1">
					<g:link class="btn btn-success" action="index"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>  Back to Metrics List</g:link>
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
			<g:form url="[resource:metricsInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="row">
					<div class="col-lg-5 col-lg-offset-3">
					<g:submitButton name="create" class="btn btn-success btn-lg btn-block" value="Create Metric" />
					</div>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
