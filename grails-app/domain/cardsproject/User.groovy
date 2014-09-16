package cardsproject

class User {
    static belongsTo = [company: Company]
    static hasMany = [card: Card]

    String e_mail
    String password

    static constraints = {
        e_mail(unique: true)
        password() // size: 5..15
        company(nullable: true)
    }
}
