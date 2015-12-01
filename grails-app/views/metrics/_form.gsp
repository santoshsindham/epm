<%@ page import="com.epm.db.objects.Metrics" %>




<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'project', 'error')} required">
	<label for="project" style="width: 40%">
		<g:message code="metrics.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.epm.db.objects.Project.list()}" optionKey="id" required="" value="${metricsInstance?.project?.id}" class="many-to-one"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'metric_month', 'error')} required">
	<label for="metric_month" style="width: 40%">
		<g:message code="metrics.metric_month.label" default="Metricmonth" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="metric_month" from="${metricsInstance.constraints.metric_month.inList}" required="" value="${metricsInstance?.metric_month}" valueMessagePrefix="metrics.metric_month"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'defects_found', 'error')} ">
	<label for="defects_found" style="width: 40%">
		<g:message code="metrics.defects_found.label" default="Total No of valid defects found by test team" />
		
	</label>
	<g:field name="defects_found" type="number" value="${metricsInstance.defects_found}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'defects_logged', 'error')} ">
	<label for="defects_logged" style="width: 40%">
		<g:message code="metrics.defects_logged.label" default="Total No of valid defects logged in project life cycle" />
		
	</label>
	<g:field name="defects_logged" type="number" value="${metricsInstance.defects_logged}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'defects_rejected', 'error')} ">
	<label for="defects_rejected" style="width: 40%">
		<g:message code="metrics.defects_rejected.label" default="Total no of defects rejected by customer" />
		
	</label>
	<g:field name="defects_rejected" type="number" value="${metricsInstance.defects_rejected}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'requirements_mapped', 'error')} ">
	<label for="requirements_mapped" style="width: 40%">
		<g:message code="metrics.requirements_mapped.label" default="Total no of testable requirements mapped to test cases or Scripts" />
		
	</label>
	<g:field name="requirements_mapped" type="number" value="${metricsInstance.requirements_mapped}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'requirements_baselined', 'error')} ">
	<label for="requirements_baselined" style="width: 40%">
		<g:message code="metrics.requirements_baselined.label" default="Total no of baselined testable requirements" />
		
	</label>
	<g:field name="requirements_baselined" type="number" value="${metricsInstance.requirements_baselined}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'test_cases', 'error')} ">
	<label for="test_cases" style="width: 40%">
		<g:message code="metrics.test_cases.label" default="No of Test Cases(Scripts) Created" />
		
	</label>
	<g:field name="test_cases" type="number" value="${metricsInstance.test_cases}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'design_person_days', 'error')} ">
	<label for="design_person_days" style="width: 40%">
		<g:message code="metrics.design_person_days.label" default="Design Effort in Person Days" />
		
	</label>
	<g:field name="design_person_days" type="number" value="${metricsInstance.design_person_days}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'test_cases_executed', 'error')} ">
	<label for="test_cases_executed" style="width: 40%">
		<g:message code="metrics.test_cases_executed.label" default="No of Test Cases(Scripts) Executed" />
		
	</label>
	<g:field name="test_cases_executed" type="number" value="${metricsInstance.test_cases_executed}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'execution_person_days', 'error')} ">
	<label for="execution_person_days" style="width: 40%">
		<g:message code="metrics.execution_person_days.label" default="Execution effort in Person Days " />
		
	</label>
	<g:field name="execution_person_days" type="number" value="${metricsInstance.execution_person_days}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'automated_test_cases', 'error')} ">
	<label for="automated_test_cases" style="width: 40%">
		<g:message code="metrics.automated_test_cases.label" default="No of automated test cases " />
		
	</label>
	<g:field name="automated_test_cases" type="number" value="${metricsInstance.automated_test_cases}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: metricsInstance, field: 'comments', 'error')} ">
	<label for="comments" style="width: 40%">
		<g:message code="metrics.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${metricsInstance?.comments}"/>

</div>
</div>

