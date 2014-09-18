package cardsproject

class RequesterController {
    def dataBaseService
    def index() {
//        render (view: "index")
    }
    def OrderIsIssued() {
//        println("sadsad")
//        render (views:'OrderIsIssued.gsp')
    }

    def indexFromPicturesList() {
        session ['requester'] = [state: 'picturesList']
        redirect(action: 'index')
    }
    def indexFromEnvelope() {
        session ['requester'] = [state: 'envelope']
        redirect(action: 'index')
    }
    def indexFromCard() {
        session ['requester'] = [state: 'card']
        redirect(action: 'index')
    }
    def indexFromPreview() {
        session ['requester'] = [state: 'preview']
        redirect(action: 'index')
    }
    def save() {
        def name = params.request_name
        def phone = params.request_phone
        println (phone)
        def email = params.request_email
        println (email)
        def state = session.requester.state
        println (state)
        dataBaseService.createRequest(name, phone, email, state)
        println ("55")
        redirect(action: "OrderIsIssued")
    }

    def toPreviousPage() {
        if (session ['requester']."state" == 'picturesList') {
            redirect(controller: 'PicturesList', action: 'index')
        } else if (session ["requester"]."state" == 'envelope') {
            redirect(controller: 'envelope', action: 'index')
        } else if (session ["requester"]."state" == 'card') {
            redirect(controller: 'card', action: 'index')
        } else if (session ["requester"]."state" == 'preview') {
            redirect(controller: 'preview', action: 'index')
        }
    }
}
