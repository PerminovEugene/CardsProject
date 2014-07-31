package cardsproject

class CardController {
    def index() {
        if (session['card_params'] == null) {
            session.setAttribute('card_params',params)
            session['card_params'].card_id = 0001
        }

//        int id = session['card_id']
//        def lastCard = Card.findById(id)
//        def cards = Card.list()
        [card:session['card_params']]
//        session.invalidate()
    }
    def form() {}
    def save() {
//        def card = new Card(params)
//        card.save()
//        def lastId = card.id

        session['card_params'] = params
        redirect (action:"index")
//        redirect(controller:'preview', action: 'index')
    }
}