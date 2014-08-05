package cardsproject

class EnvelopeController {

    def index() {
        if (session['envelope_data'] == null) {
            session.setAttribute('envelope_data',params)
        }
        [en_date:session['envelope_data']]
    }

    def save() {
        session['envelope_data'] = params
        redirect(controller:'card', action: 'index')

    }
}
