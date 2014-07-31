package cardsproject

class CardController {
    def index() {
        if (session['card_data'] == null) {
            session.setAttribute('card_data',params)
            session['card_data'].card_id = 0001
        }

//        int id = session['card_id']
//        def lastCard = Card.findById(id)
//        def cards = Card.list()
        [card:session['card_data']]
//        session.invalidate()
    }
    def form() {}
    def save() {
//        def card = new Card(params)
//        card.save()
//        def lastId = card.id

        session['card_data'] = params
//        redirect (action:"index")
        redirect(controller:'preview', action: 'index')
    }
}