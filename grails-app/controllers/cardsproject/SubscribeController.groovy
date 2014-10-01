package cardsproject

class SubscribeController {
    def dataBaseService

    def index() {}

    def saveEmail() {
        try {
            def subscribeEmail = params.subscribeEmail
            dataBaseService.saveSubscribeEmail(subscribeEmail)
            session ['start_memory_form'] = ['form-2']
            session ['counter'] = ['2']
            redirect(controller: 'startPage', action: 'index')
        } catch (Exception e) {
            log.error("saveEmail in controller error")
            redirect(controller: 'startPage', action: 'index')
        }
    }
}
