package cardsproject

class CardController {
    def index() {
        def cards = Card.list()
        [cards:cards]
//        session.invalidate()
    }
    def form() {}
    def save() {
        def card = new Card(params)
        card.save()
//        session['message'] = 'done'
        redirect (action:"index")
    }
}