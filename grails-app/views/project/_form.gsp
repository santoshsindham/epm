<%@ page import="com.epm.db.objects.Project" %>


<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'project_Name', 'error')} required">
	<label for="project_Name">
		<g:message code="project.project_Name.label" default="Project Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="project_Name" required="" value="${projectInstance?.project_Name}"/>

</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'project_Type', 'error')} ">
	<label for="project_Type">
		<g:message code="project.project_Type.label" default="Project Type" />
		
	</label>
	<g:textField name="project_Type" value="${projectInstance?.project_Type}"/>

</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'manager_Name', 'error')} ">
	<label for="manager_Name">
		<g:message code="project.manager_Name.label" default="Manager Name" />
		
	</label>
	<g:textField name="manager_Name" value="${projectInstance?.manager_Name}"/>

</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'sla_Amount', 'error')} ">
	<label for="sla_Amount">
		<g:message code="project.sla_Amount.label" default="Sla Amount" />
		
	</label>
	<g:field name="sla_Amount" value="${fieldValue(bean: projectInstance, field: 'sla_Amount')} "/>

</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'coc_Name', 'error')} ">
	<label for="coc_Name">
		<g:message code="project.coc_Name.label" default="Coc Name" />
		
	</label>
	<g:textField name="coc_Name" value="${projectInstance?.coc_Name}"/>

</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'start_Date', 'error')} ">
	<label for="start_Date">
		<g:message code="project.start_Date.label" default="Start Date" />
		
	</label>
	<calendar:datePicker name="start_Date" precision="day" value="${projectInstance?.start_Date}" />

</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'end_Date', 'error')} ">
	<label for="end_Date">
		<g:message code="project.end_Date.label" default="End Date" />
		
	</label>
	<calendar:datePicker name="end_Date" precision="day" value="${projectInstance?.end_Date}" />

</div>
</div>
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'sla_Status', 'error')} ">
	<label for="sla_Status">
		<g:message code="project.sla_Status.label" default="Sla Status" />
		
	</label>
	<g:textField name="sla_Status" value="${projectInstance?.sla_Status}"/>

</div>
</div>
