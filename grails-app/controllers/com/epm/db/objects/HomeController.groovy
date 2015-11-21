package com.epm.db.objects



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HomeController {

    def show() {
    }
}
