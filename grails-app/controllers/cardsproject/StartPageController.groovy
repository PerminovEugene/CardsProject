package cardsproject
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;

class StartPageController {

    def index() {}
    def thxForRequest() {}

    def toCardPage() {
        redirect (controller: 'picturesList', action: 'index')
    }
}
