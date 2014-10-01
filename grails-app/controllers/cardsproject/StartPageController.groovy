package cardsproject
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;

class StartPageController {

    def index() {
        if (session ['counter'] == ['1']) {
            session ['start_memory_form'] = [""]
        }
        if (session ['counter'] == ['2']) {
            session ['counter'] = ['1']
        }
        render(view: 'index.gsp')
    }
    def thxForRequest() {}

    def requester(){}

    def toCardPage() {
        redirect (action: 'index')
    }
}
