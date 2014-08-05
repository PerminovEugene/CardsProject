package cardsproject

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
    def save_mail_pas()
    {
        session['envelope_data'] = params
        redirect(action: toStart())
    }

}
