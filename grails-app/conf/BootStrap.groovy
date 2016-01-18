import br.com.imaxgames.carteira.Discipline
import br.com.imaxgames.carteira.Grade
import br.com.imaxgames.carteira.Grade_has_discipline
import br.com.imaxgames.carteira.Role
import br.com.imaxgames.carteira.Segment
import br.com.imaxgames.carteira.Teacher
import br.com.imaxgames.carteira.UserRole

class BootStrap {

    def init = { servletContext ->


        def teacher = new Teacher(name: "Juvelina" ,username: "prof@carteiradigital", password: "senha").save(flush: true)
        def teacherRole = Role.findByAuthority('ROLE_TEACHER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def userTeacherRole = new UserRole()
            userTeacherRole.user = teacher
            userTeacherRole.role = teacherRole
            userTeacherRole.save(flush: true)

        //Grades
        def segment1 = new Segment(description: 'Segmento de Demonstração').save(flush: true,failOnError: true)
        def grade1 = new Grade(segment: segment1,description: "1º ano Tarde").save(flush: true,failOnError: true)
        def grade2 = new Grade(segment: segment1,description: "2º ano Tarde").save(flush: true,failOnError: true)
        def grade3 = new Grade(segment: segment1,description: "3º ano Tarde").save(flush: true,failOnError: true)
        def gradeDemo = new Grade(segment: segment1,description: "Serie de Demonstração").save(flush: true,failOnError: true)

        //Students




        //Disciplines
        def arte = new Discipline(name: "Arte").save(flush: true,failOnError: true)
        def portugues = new Discipline(name: "Portugues").save(flush: true,failOnError: true)
        def matematica = new Discipline(name: "Matematica").save(flush: true,failOnError: true)
        def ingles = new Discipline(name: "Ingles").save(flush: true,failOnError: true)

        //Grade1 has Disciplines

        def gradeArte = new Grade_has_discipline(grade: grade1,discipline: arte).save(flush: true,failOnError: true)
        def gradePort = new Grade_has_discipline(grade: grade1,discipline: portugues).save(flush: true,failOnError: true)
        def gradeMat = new Grade_has_discipline(grade: grade1,discipline:matematica ).save(flush: true,failOnError: true)
        def gradeIngles = new Grade_has_discipline(grade: grade1,discipline: ingles).save(flush: true,failOnError: true)

        //Grade2 has Disciplines

        def grade2Arte = new Grade_has_discipline(grade: grade2,discipline: arte).save(flush: true,failOnError: true)
        def grade2Port = new Grade_has_discipline(grade: grade2,discipline: portugues).save(flush: true,failOnError: true)
        def grade2Mat = new Grade_has_discipline(grade: grade2,discipline:matematica ).save(flush: true,failOnError: true)
        def grade2Ingles = new Grade_has_discipline(grade: grade2,discipline: ingles).save(flush: true,failOnError: true)

        //Grade3 has Disciplines

        def grade3Arte = new Grade_has_discipline(grade: grade3,discipline: arte)
        def grade3Port = new Grade_has_discipline(grade: grade3,discipline: portugues)
        def grade3Mat = new Grade_has_discipline(grade: grade3,discipline:matematica )
        def grade3Ingles = new Grade_has_discipline(grade: grade3,discipline: ingles)

        //GradeDemo has Disciplines

        def gradeDemoArte = new Grade_has_discipline(grade: gradeDemo,discipline: arte)
        def gradeDemoPort = new Grade_has_discipline(grade: gradeDemo,discipline: portugues)
        def gradeDemoMat = new Grade_has_discipline(grade: gradeDemo,discipline:matematica )
        def gradeDemoIngles = new Grade_has_discipline(grade: gradeDemo,discipline: ingles)





    }
    def destroy = {
    }
}
