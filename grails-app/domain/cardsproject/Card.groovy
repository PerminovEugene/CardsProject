package cardsproject

class Card {
    Picture picture
    User user
    String text

    static constraints = {
        text(blacnk: true)
    }
}
