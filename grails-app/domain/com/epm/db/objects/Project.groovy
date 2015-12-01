package com.epm.db.objectsimport java.util.Date;

class Project {
	String project_Name
	String project_Type
	Double sla_Amount	String manager_Name
	String coc_Name
	Date start_Date
	Date end_Date
	String sla_Status
		static hasMany =[milestones: Milestone, metrics: Metrics]
	
    static constraints = {
		project_Name (blank: false)
		project_Type (blank: true, nullable: true)		manager_Name (blank: true, nullable: true)
		sla_Amount (blank: true, nullable: true)
		coc_Name (blank: true, nullable: true)
		start_Date (blank: true, nullable: true)
		end_Date (blank: true, nullable: true)
		sla_Status (blank: true, nullable: true)
    }
	
	String toString() {
		"${project_Name}"
		}
}

