package cardsproject

class User {
    static belongsTo = [human: Human]
    static hasMany = [card: Card]

    String e_mail
    String password

    static constraints = {
        e_mail()
        password() // size: 5..15
    }
}
