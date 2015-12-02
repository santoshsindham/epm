package com.epm.db.objects

class Dashboard {
	String dashboard_month
	Integer planned_Duration
	Integer actual_Duration
	Integer schedule_Variance
	Integer effort_Variance
	Integer defect_Identification_Efficiency
	Integer defect_Rejection_Ratio
	Integer test_Coverage
	Integer test_Design_Productivity
	Integer test_Execution_Productivity
	Integer percentage_Of_Automation
	
	static belongsTo = [project: Project]
	
    static constraints = {
		dashboard_month (blank: true, nullable: true)
		planned_Duration (blank: true, nullable: true)
		actual_Duration (blank: true, nullable: true)
		schedule_Variance (blank: true, nullable: true)
		effort_Variance (blank: true, nullable: true)
		defect_Identification_Efficiency (blank: true, nullable: true)
		defect_Rejection_Ratio (blank: true, nullable: true)
		test_Coverage (blank: true, nullable: true)
		test_Design_Productivity (blank: true, nullable: true)
		test_Execution_Productivity (blank: true, nullable: true)
		percentage_Of_Automation (blank: true, nullable: true)
		
    }
}
