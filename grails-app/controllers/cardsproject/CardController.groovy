package cardsproject
import org.springframework.web.multipart.MultipartFile

class CardController {
    def dataBaseService

    def index() {
        if ((session.currentCard.sign == null)||
            (session.currentCard.text == null)){
            session['currentCard'].putAt('sign','')
            session['currentCard'].putAt('text','')
        }
    }

    def save() {
        def context = servletContext.getRealPath("/")
        def path = 'images/temp/'
        MultipartFile img = request.getFile('logo')
        if (img.empty) {
           //place for log
            if(session.user_id != null) {
                def user_id = session.user_id
                def company = dataBaseService.fetchUserCompany(user_id)
                if (company != null) {
                    session['_logo'] = company.logo
                } else {
                    session['_logo'] = ''
                }
            } else {
                session['_logo'] = ''
            }
        } else {
            def name = img.getOriginalFilename()
            img.transferTo(new File(context + path + name))
            session['_logo'] = path + name
        }
        session.currentCard.sign = params.card_sign
        session.currentCard.text = params.card_text
        redirect(controller:'preview', action: 'index')
    }
}