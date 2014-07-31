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
//        println request.getFile('logo').inputStream.text
        def img = request.getFile('logo')
//        if (img.empty) {
//            flash.message = 'file cannot be empty'
//            return
//        }
//        img.transferTo(new File('/CardsProject/assets/images/temp/1.jpg'))
//        response.sendError(200, 'Done')

        println img
        session['card_data'] = params
//        redirect (action:"index")
        redirect(controller:'preview', action: 'index')
    }
}