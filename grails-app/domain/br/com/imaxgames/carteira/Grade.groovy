package br.com.imaxgames.carteira

class Grade {

    static  hasMany = [groups:StudentsGroup]
    Segment segment
    String description


    static constraints = {

    }
}
