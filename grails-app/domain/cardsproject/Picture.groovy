package cardsproject

class Picture {
    static hasMany = [card: Card]
    static belongsTo = [catalog: Catalog]

    String path
    String name

    Picture (String path_, String name_) {
        path = path_
        name = name_
    }

    static constraints = {
        name(blank: true, unique: true)
        path(blank: true, unique: true)
    }
}
