package br.com.imaxgames.carteira

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.context.request.RequestContextHolder

@Secured(['ROLE_TEACHER','ROLE_ADMIN'])
class ChamadaController {
 def springSecurityService
    def index(Long id){
        def sessao = RequestContextHolder.currentRequestAttributes().getSession()
        log.debug(sessao.session_classroom.group)
        if ( sessao.session_classroom.group != null) {

            def students = Student.findAllByStudentsGroup(sessao.session_classroom.group)
            model:[students:students,studentsCount:students.size()]
        }else{
            def students = []
            model:[students:students,studentsCount:0]
        }
    }

    def bindStudent() {

    }

    def unbindStudent(){

    }

    def sendCall(){

    }
}
