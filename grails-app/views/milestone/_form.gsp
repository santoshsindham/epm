<%@ page import="com.epm.db.objects.Milestone" %>



<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'milestone_Name', 'error')} required">
	<label for="milestone_Name">
		<g:message code="milestone.milestone_Name.label" default="Milestone Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="milestone_Name" required="" value="${milestoneInstance?.milestone_Name}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="milestone.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.epm.db.objects.Project.list()}" optionKey="id" required="" value="${milestoneInstance?.project?.id}" class="many-to-one"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'milestone_Month', 'error')} required">
	<label for="milestone_Month">
		<g:message code="milestone.milestone_Month.label" default="Milestone Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="milestone_Month" from="${milestoneInstance.constraints.milestone_Month.inList}" required="" value="${milestoneInstance?.milestone_Month}" valueMessagePrefix="milestone.milestone_Month"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'planned_Start_Date', 'error')} ">
	<label for="planned_Start_Date">
		<g:message code="milestone.planned_Start_Date.label" default="Planned Start Date" />
		
	</label>
	<calendar:datePicker name="planned_Start_Date" precision="day" value="${milestoneInstance?.planned_Start_Date}" />

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'planned_End_Date', 'error')} ">
	<label for="planned_End_Date">
		<g:message code="milestone.planned_End_Date.label" default="Planned End Date" />
		
	</label>
	<calendar:datePicker name="planned_End_Date" precision="day" value="${milestoneInstance?.planned_End_Date}" />

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'actual_Start_Date', 'error')} ">
	<label for="actual_Start_Date">
		<g:message code="milestone.actual_Start_Date.label" default="Actual Start Date" />
		
	</label>
	<calendar:datePicker name="actual_Start_Date" precision="day" value="${milestoneInstance?.actual_Start_Date}" />
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'actual_End_Date', 'error')} ">
	<label for="actual_End_Date">
		<g:message code="milestone.actual_End_Date.label" default="Actual End Date" />
		
	</label>
	<calendar:datePicker name="actual_End_Date" precision="day" value="${milestoneInstance?.actual_End_Date}" />
</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'planned_Effort', 'error')} ">
	<label for="planned_Effort">
		<g:message code="milestone.planned_Effort.label" default="Planned Effort" />
		
	</label>
	<g:field name="planned_Effort" type="number" value="${milestoneInstance.planned_Effort}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'actual_Effort', 'error')} ">
	<label for="actual_Effort">
		<g:message code="milestone.actual_Effort.label" default="Actual Effort" />
		
	</label>
	<g:field name="actual_Effort" type="number" value="${milestoneInstance.actual_Effort}"/>

</div>
</div>

<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: milestoneInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="milestone.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${milestoneInstance?.comments}"/>

</div>
</div>

