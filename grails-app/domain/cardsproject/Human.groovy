package cardsproject

class Human {
    String name
    String post
    static hasMany = [user: User, card: Card, company: Company]

    static constraints = {
        name(blank:true)
        post()
    }
}
