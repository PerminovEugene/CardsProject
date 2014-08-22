package cardsproject

class AdminPanelController {
//    def success = false

    def login() {
        def login = 'CardsProject'
        def password = 'CardsProject'
        if ((params.login==login)&(params.password==password)){
            session.admin_success = true
            redirect(action: 'index')
        } else {
            session.admin_success = false
        }
    }
    def exit() {
        session.admin_success = false
        redirect(action: 'login')
    }
    def index() {
        if (session.admin_success == true) {
            def cards = Card.getAll()
            ["cards":cards]
        } else {
            redirect(action: 'login')
        }

    }
    def demo2() {
        def card = Card.get(params.pdfId)
        def picture = card.picture.path
        def logo = card.user.company.logo
        ["card" : card, "picture" : picture, "logo" : logo]
    }
    def update() {
        def db = new DataBaseService()
        def card
        params.cardId.each {
            it = it.toString()
            it = it.toInteger()
            card = Card.get(it)
            it--
            db.updateCardState(card,params.state[it])
        }
        redirect(action: "index")
    }
}
