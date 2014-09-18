package cardsproject

class EnvelopeController {
    def dataBaseService
    def index() {
        if (session['user_id'] != null) {
            println("userid!=0")
            def companySender = dataBaseService.fetchUserCompany(session.user_id)
            println("fetch++")
            if (companySender != null) {
                /*достаем данные из базы и пишем в сессию*/
                def address = companySender.address
                def sender = companySender.human
                session['companySender'] = [
                        name   : companySender.name,
                        address: [
                                city    : address.city,
                                street  : address.street,
                                house   : address.house,
                                housing : address.housing,
                                office  : address.office,
                                postcode: address.postCode
                        ],
                        sender : [
                                name: sender.name,
                                post: sender.post
                        ]
                ]
            }
        }
        if ( session ['companyReceiver'] == null) {
            session['companyReceiver'] = [
                    name    : '',
                    address : [
                            city    : '',
                            street  : '',
                            house   : '',
                            housing : '',
                            office  : '',
                            postcode: ''
                    ],
                    receiver: [
                            name: '',
                            post: ''
                    ]
            ]
        }
        if ( session ['companySender'] == null) {
            session['companySender'] = [
                    name   : '',
                    address: [
                            city    : '',
                            street  : '',
                            house   : '',
                            housing : '',
                            office  : '',
                            postcode: ''
                    ],
                    sender : [
                            name: '',
                            post: ''
                    ]
            ]
        }
    }

    def save() {
        session ['companyReceiver'] = [
                name: params.receiver_company,
                address : [
                        city : params.receiver_city,
                        street : params.receiver_street,
                        house : params.receiver_house,
                        housing : params.receiver_housing,
                        office : params.receiver_office,
                        postcode : params.receiver_postcode
                ],
                receiver:[
                        name: params.receiver_name,
                        post: params.receiver_post
                ]
        ]
        session ['companySender'] = [
                name: params.sender_company,
                address : [
                        city : params.sender_city,
                        street : params.sender_street,
                        house : params.sender_house,
                        housing : params.sender_housing,
                        office : params.sender_office,
                        postcode : params.sender_postcode
                ],
                sender : [
                        name: params.sender_name,
                        post: params.sender_post
                ]
        ]
        redirect(controller:'card', action: 'index')
    }
}
