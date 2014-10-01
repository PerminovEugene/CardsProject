package cardsproject
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.commons.CommonsMultipartFile
import javax.xml.bind.ValidationException

import javax.xml.bind.ValidationException

class CardController {
    def dataBaseService
    def linkerService

    def index() {
        if ((session.currentCard.sign == null) ||
                (session.currentCard.text == null)) {
            session['currentCard'].putAt('sign', '')
            session['currentCard'].putAt('text', '')
        }
    }
    /**
     *  For save information from form in card-Step to db. If img not correctly redirectet back to index.
     *  // <<<<<<<<<<<<<<<<<<<<<<<<<-----------------------------------------------UPGRADE ME
     * @return to next step if all ok, else to index
     */
    def save() {
        try {
            def context = servletContext.getRealPath("/")
            MultipartFile img = request.getFile('logo')
            def user_id = session.user_id
            def _logo = session['_logo']
            session['_logo'] = linkerService.handlingImage(context, img, user_id)
            session.currentCard.sign = params.card_sign
            session.currentCard.text = params.card_text
            redirect(controller: 'preview', action: 'index')
        } catch (ValidationException e) {
            redirect action: index() // need upgreaded there. Message for user about error
        }
    }
}