package cardsproject

class Company {
    //static hasMany = [user: User]

    String name
    String logo

    static belongsTo = [address: Address, human: Human]
    //there human its a owner of company

    static constraints = {
        name(unique: true, blank: true)
        logo(nullable: true)
    }
}
