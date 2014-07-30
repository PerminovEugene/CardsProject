package cardsproject

class CardController {
    def index() {
        if (session['card_id'] == null) {
            session['card_id'] = 0001
            session['card_text'] = 'test'
            session['card_sign'] = 'test'
        }
//        int id = session['card_id']
//        def lastCard = Card.findById(id)
//        def cards = Card.list()
        [card:session]
//        session.invalidate()
    }
    def form() {}
    def save() {
//        def card = new Card(params)
//        card.save()
//        def lastId = card.id
        session['card_id'] = 0001
        session['card_text'] = params.text
        session['card_sign'] = params.sign
//        session['message'] = 'done'
        redirect (action:"index")
    }
}