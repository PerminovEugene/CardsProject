package cardsproject

class Picture {
    static hasMany = [card: Card]

    String path
    String name

    static constraints = {
        name(blank: true, unique: true)
        path(blank: true, unique: true)
    }
}
