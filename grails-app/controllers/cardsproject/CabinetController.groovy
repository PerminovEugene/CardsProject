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
        try {
            def user_id = session.user_id
            def company = dataBaseService.fetchUserCompany(user_id)
            if (company != null) {
                def address = company.address
                def human = company.human
                def data = ["company": company, "human": human, "address": address] as JSON
                render data
            } else {

                def data = ["company": "Укажите компанию", "human": "Человек", "address": "Аддрес"] as JSON
                render data
            }
        } catch (Exception e) {
            log.error "Error in sendUserInfo ${e.message}", e
        }

    }

    def updateUserInfo() {
        def user_id = session.user_id
        String message
        def company = dataBaseService.fetchUserCompany(user_id)
        def newAddress = [
                'city'    : params.city,
                'street'  : params.street,
                'house'   : params.house,
                'housing' : params.housing,
                'office'  : params.office,
                'postcode': params.postcode
        ]
        def newHuman = [
                'name': params.name,
                'post': params.post
        ]
        if (company != null) {
            try {
                def logo = company.logo
                def address = company.address
                def human = company.human
                dataBaseService.saveAddress(address, newAddress)
                dataBaseService.saveHuman(human, newHuman)
            } catch (Exception e) {
                log.error "Error in updateUserInfo in save info part ${e.message}", e
            }
        } else {
            try {
                def human = dataBaseService.createHuman(newHuman)
                def companyAddress = dataBaseService.createAddress(newAddress)
                company = dataBaseService.createCompany(params.company, companyAddress, human)
                dataBaseService.addCompanyToUser(user_id, company)
            } catch (Exception e) {
            log.error "Error in updateUserInfo in create info part ${e.message}", e
            }
        }
        try {
            def context = servletContext.getRealPath("/")
            def path = 'images/temp/'
            MultipartFile img = request.getFile('logo')
            def name = 'sample.jpeg'
            if (img.empty) {

            } else {
                name = img.getOriginalFilename()
                img.transferTo(new File(context + path + name))
                def logoNew = path + name
                dataBaseService.saveCompany(company, logoNew)
            }
        } catch (Exception e) {
            log.error "Error in updateUserInfo in save logo part ${e.message}", e
        }
      /*  if (dataBaseService.fetchCompany(params.company) != null) {
            dataBaseService.saveCompany(company, logo)
            message = 'This company name already exist'
        } else {
            dataBaseService.saveCompany(company, params.company, logo)
            message = 'Company updated'
        }*/
        redirect(action: 'index')
    }


}
