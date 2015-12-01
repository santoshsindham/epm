package com.epm.db.objects



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Transactional(readOnly = true)
class MilestoneController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Milestone.list(params), model:[milestoneInstanceCount: Milestone.count()]
    }

    def show(Milestone milestoneInstance) {
        respond milestoneInstance
    }

    def create() {
        respond new Milestone(params)
    }

    @Transactional
    def save(Milestone milestoneInstance) {
        if (milestoneInstance == null) {
            notFound()
            return
        }

        if (milestoneInstance.hasErrors()) {
            respond milestoneInstance.errors, view:'create'
            return
        }

        milestoneInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'milestone.label', default: 'Milestone'), milestoneInstance.id])
                redirect milestoneInstance
            }
            '*' { respond milestoneInstance, [status: CREATED] }
        }
    }

    def edit(Milestone milestoneInstance) {
        respond milestoneInstance
    }

    @Transactional
    def update(Milestone milestoneInstance) {
		
		def f = new SimpleDateFormat("MM/dd/yyyy")
		
		if (milestoneInstance.planned_Start_Date == null && (params['planned_Start_Date_value'] != null && params['planned_Start_Date_value'].size() != 0)){
			milestoneInstance.planned_Start_Date = f.parse(params['planned_Start_Date_value'])
			milestoneInstance.errors = null
		}		
		
		if (milestoneInstance.planned_End_Date == null && (params['planned_End_Date_value'] != null && params['planned_End_Date_value'].size() != 0)){
			milestoneInstance.planned_End_Date = f.parse(params['planned_End_Date_value'])
			milestoneInstance.errors = null
		}
		
		if (milestoneInstance.actual_Start_Date == null && (params['actual_Start_Date_value'] != null && params['actual_Start_Date_value'].size() != 0)){
			milestoneInstance.actual_Start_Date = f.parse(params['actual_Start_Date_value'])
			milestoneInstance.errors = null
		}
		
		if (milestoneInstance.actual_End_Date == null && (params['actual_End_Date_value'] != null && params['actual_End_Date_value'].size() != 0)){
			milestoneInstance.actual_End_Date = f.parse(params['actual_End_Date_value'])
			milestoneInstance.errors = null
		}
		
        if (milestoneInstance == null) {
            notFound()
            return
        }

        if (milestoneInstance.hasErrors()) {
            respond milestoneInstance.errors, view:'edit'
            return
        }

        milestoneInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Milestone.label', default: 'Milestone'), milestoneInstance.id])
                redirect milestoneInstance
            }
            '*'{ respond milestoneInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Milestone milestoneInstance) {

        if (milestoneInstance == null) {
            notFound()
            return
        }

        milestoneInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Milestone.label', default: 'Milestone'), milestoneInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'milestone.label', default: 'Milestone'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
