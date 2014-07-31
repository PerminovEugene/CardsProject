package cardsproject

class EnvelopeController {

    def index() {
        if (session['envelope_params'] == null) {
            session.setAttribute('envelope_params',params)
        }
        [en_date:session['envelope_params']]
    }

    def save() {
        session['envelope_params'] = params
//        redirect (action:"index")
        redirect(controller:'card', action: 'index')
    }
}
