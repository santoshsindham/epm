package com.epm.db.objects



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MetricsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Metrics.list(params), model:[metricsInstanceCount: Metrics.count()]
    }

    def show(Metrics metricsInstance) {
        respond metricsInstance
    }

    def create() {
        respond new Metrics(params)
    }

    @Transactional
    def save(Metrics metricsInstance) {
        if (metricsInstance == null) {
            notFound()
            return
        }

        if (metricsInstance.hasErrors()) {
            respond metricsInstance.errors, view:'create'
            return
        }

        metricsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'metrics.label', default: 'Metrics'), metricsInstance.id])
                redirect metricsInstance
            }
            '*' { respond metricsInstance, [status: CREATED] }
        }
    }

    def edit(Metrics metricsInstance) {
        respond metricsInstance
    }

    @Transactional
    def update(Metrics metricsInstance) {
        if (metricsInstance == null) {
            notFound()
            return
        }

        if (metricsInstance.hasErrors()) {
            respond metricsInstance.errors, view:'edit'
            return
        }

        metricsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Metrics.label', default: 'Metrics'), metricsInstance.id])
                redirect metricsInstance
            }
            '*'{ respond metricsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Metrics metricsInstance) {

        if (metricsInstance == null) {
            notFound()
            return
        }

        metricsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Metrics.label', default: 'Metrics'), metricsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'metrics.label', default: 'Metrics'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
