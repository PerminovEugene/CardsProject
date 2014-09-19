package cardsproject

class StartPageController {

    def index() {
    }

    def toCardPage() {
        redirect (controller: 'picturesList', action: 'index')
    }
}
