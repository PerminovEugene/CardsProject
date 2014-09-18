package cardsproject

import grails.converters.JSON
import org.springframework.web.multipart.MultipartFile

class CabinetController {
//    def db = new DataBaseService()
    def dataBaseService

    def index() {}

    def sendCards() {
        def user_id = session.user_id
        def cards = dataBaseService.fetchCards(user_id)
        def data = []
        cards.each() {
            def card = [
                "picture" : it.picture.path,
                "address" : it.company.address,
                "company" : it.company.name,
                "receiver" : it.company.human.name,
                "post" : it.company.human.post,
                "created" : it.created.toGMTString(),
                "state" : it.state
            ]
            data.add(card)
        }
        data = ["cards" : data]
        render data as JSON
    }

    def sendUserInfo() {
        def user_id = session.user_id
        def company = dataBaseService.fetchUserCompany(user_id)
        def address = company.address
        def human = company.human
        def data = ["company" : company, "human" : human, "address" : address] as JSON
        render data
    }

    def updateUserInfo() {
        def user_id = session.user_id
        MultipartFile img
        String message
        def company = dataBaseService.fetchUserCompany(user_id)
        def logo = company.logo
        def address = company.address
        def human = company.human

        def newAddress = [
                'city' : params.city,
                'street' : params.street,
                'house' : params.house,
                'housing' : params.housing,
                'office' : params.office,
                'postcode' : params.postcode
        ]

        def newHuman = [
                'name' : params.name,
                'post' : params.post
        ]

        dataBaseService.saveAddress(address, newAddress)
        dataBaseService.saveHuman(human, newHuman)

        def context = servletContext.getRealPath("/")
        def path = 'images/temp/'
        img = request.getFile('logo')
        def name  = 'sample.jpeg'
        if (img.empty) {
            //place for log
            println('File ' + name + ' is failed to upload' )
        }
        else {
            name = img.getOriginalFilename()
            img.transferTo(new File(context + path + name))
            logo = path + name
        }

        if (dataBaseService.fetchCompany(params.company) != null) {
            dataBaseService.saveCompany(company, logo)
            message = 'This company name already exist'
        } else {
            dataBaseService.saveCompany(company, params.company, logo)
            message = 'Company updated'
        }
        redirect(action: 'index')
    }


}
