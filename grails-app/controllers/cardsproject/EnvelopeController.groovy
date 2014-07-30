package cardsproject

class EnvelopeController {

    def index() {
        if (session['new_envelope'] == null) {
            session['new_envelope'] = false
            session['sender_name'] = 'test'
            session['sender_company'] = 'test'
//            session['sender_postcode'] = 'test'
//            session['sender_city'] = 'test'
//            session['sender_street'] = 'test'
//            session['sender_house'] = 'test'
//            session['sender_housing'] = 'test'
//            session['sender_office'] = 'test'
//
//            session['receiver_name'] = 'test'
//            session['receiver_company'] = 'test'
//            session['receiver_postcode'] = 'test'
//            session['receiver_city'] = 'test'
//            session['receiver_street'] = 'test'
//            session['receiver_house'] = 'test'
//            session['receiver_housing'] = 'test'
//            session['receiver_office'] = 'test'
        }
        [en_date:session]
    }

    def save() {

        session['new_envelope'] = false
        session['sender_name'] = params.sender_name
        session['sender_company'] = params.sender_company
//        session['sender_postcode'] = params.sender.postcode
//        session['sender_city'] = params.sender.city
//        session['sender_street'] = params.sender.street
//        session['sender_house'] = params.sender.house
//        session['sender_housing'] = params.sender.housing
//        session['sender_office'] = params.sender.office
//
//        session['receiver_name'] = params.receiver.name
//        session['receiver_company'] = params.receiver.company
//        session['receiver_postcode'] = params.receiver.postcode
//        session['receiver_city'] = params.receiver.city
//        session['receiver_street'] = params.receiver.street
//        session['receiver_house'] = params.receiver.house
//        session['receiver_housing'] = params.receiver.housing
//        session['receiver_office'] = params.receiver.office
        redirect (action:"index")
    }
}
