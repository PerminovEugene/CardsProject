package cardsproject

class TesterController {

    def index() {
        session.invalidate();
        redirect(controller: 'picturesList', action: 'index' )
    }
}
