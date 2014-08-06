package cardsproject
import grails.converters.JSON

class Send_stepController {

    def index() {
        if (session['send_step_data'] == null) {
            session.setAttribute('envelope_data',params)
        }
        [en_date:session['envelope_data']]
    }
    def toStart() {
        redirect(controller: "picturesList", action: "index")
        session.invalidate()
    }

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", save_registration: "POST"]

    //здесь вставить функцию сервиса для сохранения в бд
    def save_registration() {

        Human human = new Human()
        human
        // validation there


        /*
        User user = new User()
        user.e_mail = params.Mail
        user.password = params.Pass
        user.save()*/

        // ТУТ

       // redirect(action: toStart())*/

        render(contentType: 'text/json') {[
                'Mail': params.Mail,
                'pass': params.Pass
        ]}
    }

}
