package br.com.imaxgames.carteira

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_TEACHER','ROLE_ADMIN'])
class ChamadaController {
 def springSecurityService
    def index(Long id){
        def students = Student.findAllByStudentsGroup(StudentsGroup.get(id))
        springSecurityService.setProperty('teste',students)
        model:[students,students]
    }

    def bindStudent() {

    }

    def unbindStudent(){

    }

    def sendCall(){

    }
}
