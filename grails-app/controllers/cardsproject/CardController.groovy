package cardsproject
import org.springframework.web.multipart.MultipartFile

class CardController {
    def index() {
        if ((session.currentCard.sign == null)||
            (session.currentCard.text == null)){
            session['currentCard'].putAt('sign','')
            session['currentCard'].putAt('text','')
        }
    }

    def save() {
        MultipartFile img
        def context = servletContext.getRealPath("/")
        def path = 'images/temp/'
        img = request.getFile('logo')
        if (img.empty) {
           //place for log
            if(session.user_id != null) {
                def user_id = session.user_id
                def db = new DataBaseService()
                def company = db.getUserCompany(user_id)
                session['_logo'] = company.logo
            } else {
                session['_logo'] = ''
            }
        }
        else {
            def name = img.getOriginalFilename()
            img.transferTo(new File(context + path + name))
            session['_logo'] = path + name
            println(name)
        }
        session.currentCard.sign = params.card_sign
        session.currentCard.text = params.card_text
        redirect(controller:'preview', action: 'index')
    }
}