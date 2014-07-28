package cardsproject

class Company {
    static hasMany = [user: User]

    String name
    String logo
    //phone

    static constraints = {
        name(unique: true, blank: true)
        logo(url: true)
    }
}
