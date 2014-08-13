package cardsproject

import grails.converters.JSON
import org.springframework.web.multipart.MultipartFile

class CabinetController {

    def user_id = 1//session.user_id
    def db = new DataBaseService()
    def index() {}
    def sendCards() {
        def cards = db.getCards(user_id)
        def pictures = cards.picture
        def companies = cards.company.name
        def addresses = cards.company.address
        def data = ["cards" : cards, "pictures" : pictures, "companies" : companies, "addresses" : addresses] as JSON
        render data
    }

    def sendUserInfo() {
        def company = db.getUserCompany(user_id)
        def address = company.address
        def human = company.human
        def data = ["company" : company, "human" : human, "address" : address] as JSON
        render data
    }

    def updateUserInfo() {
        MultipartFile img
        String message
        def company = db.getUserCompany(user_id)
        def logo = company.logo
        def address = company.address
        def human = company.human

        db.saveAddress(address, params)
        db.saveHuman(human, params)

        def context = servletContext.getRealPath("/")
        def path = '/images/temp/'
        img = request.getFile('logo')
        def name  = 'sample.jpeg'
        if (img.empty) {
            //place for log
            println('File' + name + 'is failed to upload' )
        }
        else {
            name = img.getOriginalFilename()
            img.transferTo(new File(context + path + name))
            logo = path + name
        }

        if (db.getCompany(params.name) != null) {
            message = "This company already exist"
        } else {
            db.saveCompany(company, params.name, logo)
            message = "Company updated"
        }
        render message
    }


}
