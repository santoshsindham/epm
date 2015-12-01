<%@ page import="com.epm.db.objects.Milestone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'milestone.label', default: 'Milestone')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class='container'>
		<a href="#edit-milestone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="edit-milestone" class="content scaffold-edit" role="main">
			<div class="row">
				<div class="col-md-7">
					<h3><p class="bg-primary">Edit Milestone Details</p></h3>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="index"><span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>  Milestones List</g:link>
				</div>
				<div class="btn-group" role="group" aria-label="...">
					<g:link class="btn btn-success" action="create"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>  Create a New Milestone</g:link>
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
			<g:form url="[resource:milestoneInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${milestoneInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="row">
					<div class="col-lg-4 col-lg-offset-2">
					<g:submitButton action="update" name="create" class="btn btn-success btn-lg btn-block" value="Update Milestone" />
					</div>
				</div>
			</g:form>
		</div>
		</div>
	</body>
</html>
