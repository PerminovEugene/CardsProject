package cardsproject
import org.springframework.web.multipart.MultipartFile

class CardController {
    def index() {
        if ((session['currentCard']['sign'] == null)||
            (session['currentCard']['text'] == null)){
            session['currentCard'].putAt('sign','')
            session['currentCard'].putAt('text','')
        }
//        int id = session['card_id']
//        def lastCard = Card.findById(id)
//        def cards = Card.list()
        [card:session['card_data']]
//        session.invalidate()
    }

    def save() {
//        def card = new Card(params)
//        card.save()
//        def lastId = card.id
//        println request.getFile('logo').inputStream.text
        MultipartFile img
        def context = servletContext.getRealPath("/")
        def path = '/images/temp/'
        img = request.getFile('logo')
        def name  = 'sample.jpeg'
        if (img.empty) {
           //place for log
        }
        else {
            name = img.getOriginalFilename()
            img.transferTo(new File(context + path + name))
        }
        session['_logo'] = '..' + path + name
//        session['card_data'] = params
        session['currentCard'].putAt('sign',params.card_sign)
        session['currentCard'].putAt('text',params.card_text)
        redirect(controller:'preview', action: 'index')
    }
}