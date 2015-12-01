package com.epm.db.objects

class Milestone {
	
	String milestone_Name
	String milestone_Month
	Date planned_Start_Date
	Date planned_End_Date
	Date actual_Start_Date
	Date actual_End_Date
	Integer planned_Effort
	Integer actual_Effort
	String comments
	
	static belongsTo = [project: Project]
	

    static constraints = {
		milestone_Name (blank: false)
		milestone_Month (blank: false, inList: ['January','February','March','April','May','Jun','July','August','September','October','November','December'])
		planned_Start_Date (blank: true, nullable: true)
		planned_End_Date (blank: true, nullable: true)
		actual_Start_Date (blank: true, nullable: true)
		actual_End_Date (blank: true, nullable: true)
		planned_Effort (blank: true, nullable: true)
		actual_Effort (blank: true, nullable: true)
		comments (blank: true, nullable: true)
    }
	
	String toString() {
		"${milestone_Name}"
	}
}
