package cardsproject
import org.springframework.web.multipart.MultipartFile

class CardController {
    def dataBaseService

    def index() {
        println("qweq")
        if ((session.currentCard.sign == null)||
            (session.currentCard.text == null)){
            println("qweq")
            session['currentCard'].putAt('sign','')
            println("qweq")
            session['currentCard'].putAt('text','')
        }
    }

    def save() {
        println ("1")
        def context = servletContext.getRealPath("/")
        println ("1")
        def path = 'images/temp/'
        println ("1")
        MultipartFile img = request.getFile('logo')
        println ("1")
        if (img.empty) {
           //place for log
            println ("2")
            if(session.user_id != null) {
                println("userid!=null")
                def user_id = session.user_id
                println(user_id)
                def company = dataBaseService.fetchUserCompany(user_id)
                if (company != null) {
                    println("fetch+")
                    session['_logo'] = company.logo
                } else {
                    session['_logo'] = ''
                }
            } else {
                session['_logo'] = ''
            }
        } else {
            println ("3")
            def name = img.getOriginalFilename()
            img.transferTo(new File(context + path + name))
            session['_logo'] = path + name
            println(name)
        }
        println ("4")
        session.currentCard.sign = params.card_sign
        session.currentCard.text = params.card_text
        redirect(controller:'preview', action: 'index')
    }
}