package cardsproject

class Picture {
    static hasMany = [card: Card]

    String path
    String name

    Picture (String path_, String name_)
    {
        path = path_
        name = name_
    }
    static constraints = {
        name(blank: true, unique: true)
        path(url:true, unique: true)
    }
}
