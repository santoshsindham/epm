<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#create-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="create-project" class="content scaffold-create" role="main">			
			<div class="row">
				<div class="col-md-8">
					<h3><span class="label label-default">Please enter below details to create a New Project</span> <span class="glyphicon glyphicon-hand-down" aria-hidden="true"></span></h3>
				</div>
				<div class="col-md-1 col-md-offset-1">
					<g:link class="btn btn-success" action="index"><span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>  Back to Projects List</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${projectInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${projectInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<div class="container">
			<g:form url="[resource:projectInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="row">
					<div class="col-lg-4 col-lg-offset-2">
					<g:submitButton name="create" class="btn btn-success btn-lg btn-block" value="Create Project" />
					</div>
				</div>
			</g:form>
			</div>
		</div>
		</div>
	</body>
</html>
