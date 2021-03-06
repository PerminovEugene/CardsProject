package cardsproject

class Card {
    static belongsTo = [picture: Picture, user: User, company: Company]
    // user its a sender. Human its addressee

    String text
    String sign
    String state
    Date created

    static constraints = {
        text(blacnk: true)
        state(blank: true)
        created(date : true)
    }
}
