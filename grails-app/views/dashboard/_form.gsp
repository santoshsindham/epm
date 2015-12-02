<%@ page import="com.epm.db.objects.Dashboard" %>



<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'planned_Duration', 'error')} ">
	<label for="planned_Duration">
		<g:message code="dashboard.planned_Duration.label" default="Planned Duration" />
		
	</label>
	<g:field name="planned_Duration" type="number" value="${dashboardInstance.planned_Duration}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'actual_Duration', 'error')} ">
	<label for="actual_Duration">
		<g:message code="dashboard.actual_Duration.label" default="Actual Duration" />
		
	</label>
	<g:field name="actual_Duration" type="number" value="${dashboardInstance.actual_Duration}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'schedule_Variance', 'error')} ">
	<label for="schedule_Variance">
		<g:message code="dashboard.schedule_Variance.label" default="Schedule Variance" />
		
	</label>
	<g:field name="schedule_Variance" type="number" value="${dashboardInstance.schedule_Variance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'effort_Variance', 'error')} ">
	<label for="effort_Variance">
		<g:message code="dashboard.effort_Variance.label" default="Effort Variance" />
		
	</label>
	<g:field name="effort_Variance" type="number" value="${dashboardInstance.effort_Variance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'defect_Identification_Efficiency', 'error')} ">
	<label for="defect_Identification_Efficiency">
		<g:message code="dashboard.defect_Identification_Efficiency.label" default="Defect Identification Efficiency" />
		
	</label>
	<g:field name="defect_Identification_Efficiency" type="number" value="${dashboardInstance.defect_Identification_Efficiency}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'defect_Rejection_Ratio', 'error')} ">
	<label for="defect_Rejection_Ratio">
		<g:message code="dashboard.defect_Rejection_Ratio.label" default="Defect Rejection Ratio" />
		
	</label>
	<g:field name="defect_Rejection_Ratio" type="number" value="${dashboardInstance.defect_Rejection_Ratio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'test_Coverage', 'error')} ">
	<label for="test_Coverage">
		<g:message code="dashboard.test_Coverage.label" default="Test Coverage" />
		
	</label>
	<g:field name="test_Coverage" type="number" value="${dashboardInstance.test_Coverage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'test_Design_Productivity', 'error')} ">
	<label for="test_Design_Productivity">
		<g:message code="dashboard.test_Design_Productivity.label" default="Test Design Productivity" />
		
	</label>
	<g:field name="test_Design_Productivity" type="number" value="${dashboardInstance.test_Design_Productivity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'test_Execution_Productivity', 'error')} ">
	<label for="test_Execution_Productivity">
		<g:message code="dashboard.test_Execution_Productivity.label" default="Test Execution Productivity" />
		
	</label>
	<g:field name="test_Execution_Productivity" type="number" value="${dashboardInstance.test_Execution_Productivity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'percentage_Of_Automation', 'error')} ">
	<label for="percentage_Of_Automation">
		<g:message code="dashboard.percentage_Of_Automation.label" default="Percentage Of Automation" />
		
	</label>
	<g:field name="percentage_Of_Automation" type="number" value="${dashboardInstance.percentage_Of_Automation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dashboardInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="dashboard.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.epm.db.objects.Project.list()}" optionKey="id" required="" value="${dashboardInstance?.project?.id}" class="many-to-one"/>

</div>

