package cardsproject

class SubscribeController {
    def dataBaseService

    def index() {}

    def saveEmail() {
        try {
            def subscribeEmail = params.subscribeEmail
            dataBaseService.saveSubscribeEmail(subscribeEmail)
            redirect(controller: 'startPage', action: 'index')
        } catch (Exception E) {
            redirect(controller: 'startPage', action: 'index')
        }
    }
}
