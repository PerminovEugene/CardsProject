package cardsproject

class User {
    static hasMany = [card: Card]

    String first_name
    String second_name
    Company company
    String e_mail
    String login
    String password
    static constraints = {
        second_name(blank: true)
        first_name(blank: true)
        company(blank: true)
        e_mail(email: true, unique: true)
        login (size: 5..15, unique: true)
        password(size: 5..15)
    }
}
