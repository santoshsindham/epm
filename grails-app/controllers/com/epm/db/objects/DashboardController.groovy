package com.epm.db.objects



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DashboardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Dashboard.list(params), model:[dashboardInstanceCount: Dashboard.count()]
    }

    def show(Dashboard dashboardInstance) {
        respond dashboardInstance
    }

    def create() {
        respond new Dashboard(params)
    }

    @Transactional
    def save(Dashboard dashboardInstance) {
        if (dashboardInstance == null) {
            notFound()
            return
        }

        if (dashboardInstance.hasErrors()) {
            respond dashboardInstance.errors, view:'create'
            return
        }

        dashboardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), dashboardInstance.id])
                redirect dashboardInstance
            }
            '*' { respond dashboardInstance, [status: CREATED] }
        }
    }

    def edit(Dashboard dashboardInstance) {
        respond dashboardInstance
    }

    @Transactional
    def update(Dashboard dashboardInstance) {
        if (dashboardInstance == null) {
            notFound()
            return
        }

        if (dashboardInstance.hasErrors()) {
            respond dashboardInstance.errors, view:'edit'
            return
        }

        dashboardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Dashboard.label', default: 'Dashboard'), dashboardInstance.id])
                redirect dashboardInstance
            }
            '*'{ respond dashboardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Dashboard dashboardInstance) {

        if (dashboardInstance == null) {
            notFound()
            return
        }

        dashboardInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Dashboard.label', default: 'Dashboard'), dashboardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dashboard.label', default: 'Dashboard'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
