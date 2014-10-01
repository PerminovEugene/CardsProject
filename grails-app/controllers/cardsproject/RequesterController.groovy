package cardsproject

class RequesterController {
    def dataBaseService
    def index() {}
    def thxForRequest() {}
    def OrderIsIssued() {}

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
        try {
            def name = params.request_name
            def phone = params.request_phone
            def email = params.request_email
            def state = session.requester.state
            dataBaseService.createRequest(name, phone, email, state)
            redirect(action: "OrderIsIssued")
        } catch (Exception e) {
            log.error "Error in requesterController.save: ${e.message}", e
        }
    }
    def saveFromStart() {
        try {
            session ['requester'] = [state: 'startPage']
            def name = params.request_name
            def phone = params.request_phone
            def email = params.request_email
            def state = session.requester.state
            def whatSendRadio = params.whatSendRadio
            def personalSendRadio = params.personalSendRadio
            def methodOfDeliveryRadio = params.methodOfDeliveryRadio
            dataBaseService.createRequest(name, phone, email, state,
                    whatSendRadio, personalSendRadio, methodOfDeliveryRadio)
            session ['start_memory_form'] = ['form-1']
            session ['counter'] = ['2']
            redirect(controller: "startPage", action: "index")
        } catch (Exception e) {
            log.error "Error in requesterController.save: ${e.message}, name ${name}," +
                    "phone ${phone}, email ${email}, whatSendRadio ${whatSendRadio}, personalSendRadio ${personalSendRadio}," +
                    "methodOfDeliveryRadio ${methodOfDeliveryRadio},", e
        }
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
        } else if (session ["requester"]."state" == 'preview') {
            redirect(controller: 'startPage', action: 'index')
        } else {
            log.error("Error in requesterController.toPreviusPage. request == " + session ["requester"]."state")
        }
    }
}
