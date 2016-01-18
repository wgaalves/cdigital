package br.com.imaxgames.carteira

class StudentsGroup {

    static hasMany = [students:Student]

    Grade grade
    String description
    Teacher teacher

    static constraints = {
    }
}
