package cardsproject

class Catalog {
    static hasMany = [picture: Picture]
    String name
    static constraints = {
        name(blank: true, size: 3..25, unique: true)
    }
}
