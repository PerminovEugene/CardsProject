package cardsproject

class CardController {
    def index() {
        def cards = Card.list()
        [cards:cards]
    }
    def form() {}
    def save() {
        def card = new Card(params)
        card.save()
        redirect (action:"index")
    }
}