package br.com.imaxgames.carteira

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class SaladeAulaController {

    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def index() {
        log.debug(params)

        model:[teste:'teste']
    }

    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def returnAllSegment(){
        log.debug("returnAllSegment")
        def segmentList = Segment.findAll()
        def jsonSegments = []
        log.debug(segmentList)
        segmentList.each {
            jsonSegments += ['id':it.id, 'segment':it.description]
        }

        render jsonSegments as JSON
    }

    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def createClassroom(){

        def classroom = new Classroom(params).save(failOnError: true,flush: true)
        session.setAttribute('session_classroom',classroom)
        session.setAttribute('studentsGroup',params.group)
        redirect(controller: 'saladeAula',action: 'index')

    }



    @Secured(['ROLE_TEACHER','ROLE_ADMIN'])
    def returnAllGradesBySegment(Long id){
        def gradelist = Grade.findAllBySegment(Segment.get(params.id))
        def jsonGrades = []

        gradelist.each {
            jsonGrades += ['id':it.id, 'grade':it.description]
        }
        log.debug(jsonGrades)
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
            jsonDisciplines += ['id':it.discipline.id, 'discipline':it.discipline.name]
        }

        render jsonDisciplines as JSON
    }
}
