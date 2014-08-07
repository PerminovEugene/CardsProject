package cardsproject

class EnvelopeController {

    def index() {
        if ( session ['companyReceiver'] == null) {
            session['companyReceiver'] = [
                    name    : '1',
                    address : [
                            city    : '2',
                            street  : '3',
                            house   : '4',
                            housing : '5',
                            office  : '6',
                            postcode: '7'
                    ],
                    receiver: [
                            name: '8',
                            post: '9'
                    ]

            ]
        }
        if ( session ['companySender'] == null) {
            session['companySender'] = [
                    name   : '10',
                    address: [
                            city    : '11',
                            street  : '12',
                            house   : '13',
                            housing : '14',
                            office  : '15',
                            postcode: '16'
                    ],
                    sender : [
                            name: '17',
                            post: '18'
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
