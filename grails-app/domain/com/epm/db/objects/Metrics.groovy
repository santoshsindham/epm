package com.epm.db.objects

class Metrics {
	
	String metric_month
	Integer defects_found //Total No of valid defects found by test team
	Integer defects_logged //Total No of valid defects logged in project life cycle
	Integer defects_rejected //Total no of defects rejected by customer
	Integer requirements_mapped //Total number of testable requirements mapped to test cases or Scripts
	Integer requirements_baselined //Total number of baselined testable requirements
	Integer test_cases //Number of Test Cases(Scripts) Created
	Integer design_person_days //Effort in Person Days
	Integer test_cases_executed //Number of Test Cases(Scripts) Executed
	Integer execution_person_days//Effort in Person Days 
	Integer automated_test_cases //# automated test cases 
	String comments	
	
	static belongsTo = [project: Project]

    static constraints = {
		
		metric_month (blank: false, inList: ['January','February','March','April','May','Jun','July','August','September','October','November','December'])
		defects_found (blank: true, nullable: true)
		defects_logged (blank: true, nullable: true)
		defects_rejected (blank: true, nullable: true)
		requirements_mapped (blank: true, nullable: true)
		requirements_baselined (blank: true, nullable: true)
		test_cases (blank: true, nullable: true)
		design_person_days (blank: true, nullable: true)
		test_cases_executed (blank: true, nullable: true)
		execution_person_days (blank: true, nullable: true)
		automated_test_cases (blank: true, nullable: true)
		comments (blank: true, nullable: true)		
    }
	String toString() {
		"${project?.project_Name}"+"_metric_"+"${metric_month}"
	}
}
