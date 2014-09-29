package cardsproject

class StartPageController {

    def index() {}
    def thxForRequest() {}

    def toCardPage() {
        redirect (controller: 'picturesList', action: 'index')
    }
}
