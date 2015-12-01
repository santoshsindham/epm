<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'milestone.label', default: 'Milestone')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#create-milestone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="create-milestone" class="content scaffold-create" role="main">		
			<div class="row">
				<div class="col-md-8">
					<h3><span class="label label-default">Please enter below details to create a New Milestone</span> <span class="glyphicon glyphicon-hand-down" aria-hidden="true"></span></h3>
				</div>
				<div class="col-md-1 col-md-offset-1">
					<g:link class="btn btn-success" action="index"><span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>  Back to Milestones List</g:link>
				</div>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${milestoneInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${milestoneInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:milestoneInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="row">
					<div class="col-lg-4 col-lg-offset-2">
					<g:submitButton name="create" class="btn btn-success btn-lg btn-block" value="Create Milestone" />
					</div>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
