package cardsproject

class Picture {
    String path
    String name

    static constraints = {
        name(blank: true, unique: true)
        path(url:true, unique: true)
    }
}
