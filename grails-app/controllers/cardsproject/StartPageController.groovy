package cardsproject
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;

class StartPageController {
//    def logger = org.apache.log4j.Logger
    def index() {
        log.info "Configuration data source"
        log.error "Started application"
//        error serviceAppender: "service error"


//        log.debug "The value of"
    }

    def toCardPage() {
        redirect (controller: 'picturesList', action: 'index')
    }
}
