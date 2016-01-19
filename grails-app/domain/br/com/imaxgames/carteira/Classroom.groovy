package br.com.imaxgames.carteira

class Classroom {

    Segment segment
    Grade grade
    StudentsGroup group
    Discipline discipline
    StudentCall studentcall
    Date dateCreated

    static constraints = {
        studentcall nullable: true,blank: true

    }
}
