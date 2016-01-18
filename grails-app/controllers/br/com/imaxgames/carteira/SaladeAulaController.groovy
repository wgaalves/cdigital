package br.com.imaxgames.carteira

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class SaladeAulaController {

    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def index() {
        def segmentList = Segment.findAll()

        model: [segmentList:segmentList]
    }

    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def createClassroom(){

        def classroom = new Classroom()
        session.setAttribute('session_classroom',classroom)

    }



    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def returnAllGradesBySegment(Long id){
        def gradelist = Grade.findAllBySegment(Segment.get(id))
        def jsonGrades = []

        gradelist.each {
            jsonGrades += ['id':it.id, 'grade':it.description]
        }

        render jsonGrades as JSON
    }

    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def returnAllGroupsByGrade(Long id){
        def studentGroupList = StudentsGroup.findAllByGrade(Grade.get(id))
        def jsonStudentGroup = []

        studentGroupList.each {
            jsonStudentGroup+= ['id':it.id, 'group':it.description]
        }

        render jsonStudentGroup as JSON
    }

    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def returnDiscipline(Long id){
        def disciplineList = Grade_has_discipline.findAllByGrade(Grade.get(id))
        def jsonDisciplines = []

        disciplineList.each {
            jsonDisciplines += ['id':it.discipline.id, 'grade':it.discipline.name]
        }

        render jsonDisciplines as JSON
    }
}
