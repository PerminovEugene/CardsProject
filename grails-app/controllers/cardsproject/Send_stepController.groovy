package cardsproject
import grails.converters.JSON

class Send_stepController {

    def index() {/*
        //было бы круто добавить логи
        def logo = session['_logo']
        def companySender = session.companySender
        def companyReceiver = session.companyReceiver
        def sender = companySender.sender
        def receiver = companyReceiver.receiver
        def card = session.currentCard

        def userInfo = session.userInfo
        def Email = userInfo.e_mail
        def pass = userInfo.pass

        def db = new DataBaseService()

        def user_id = db.createUser(Email, pass)

        sender = db.saveHuman(sender.name, sender.post)
        receiver = db.saveHuman(receiver.name, receiver.post)
        def postcode = companySender.address.postcode

        def house = companySender.address.house
       // println(session.userInfo)
        def companySenderAddress = db.saveAddress(companySender.address.city, companySender.address.street, house.toInteger(),
                companySender.address.housing, companySender.address.office, postcode.toInteger())
        companySender = db.saveCompany(companySender.name, companySenderAddress, sender, logo)
        println(session.userInfo)
        postcode = companyReceiver.address.postcode

        house = companyReceiver.address.house
        println(session.userInfo)
        def  companyReceiverAddress = db.saveAddress(companyReceiver.address.city, companyReceiver.address.street, house.toInteger(),
                companyReceiver.address.housing, companyReceiver.address.office, postcode.toInteger())
        companyReceiver = db.saveCompany(companyReceiver.name, companyReceiverAddress, receiver, logo)
        def picture_id = card.picture_id
        db.saveCard(picture_id.toInteger(), card.text, card.sign, user_id, companyReceiver)
        println(session.userInfo)
        db.saveUser(user_id, companySender)
        println('finish')
        session.invalidate()
        render (view: 'index.gsp')
*/



        def db = new DataBaseService()

       // def user_id = db.createUser('test@test.ru','test5')

        def userInfo = session.userInfo
        def Email = userInfo.e_mail
        def pass = userInfo.pass
        def user_id = db.createUser(Email, pass)

        def sender = db.saveHuman(session.companySender.sender)
        def receiver = db.saveHuman(session.companyReceiver.receiver)

        def companySenderAddress = db.saveAddress(session.companySender.address)
        def companySender = db.saveCompany(
                session.companySender.name,
                companySenderAddress,
                sender,
                session._logo
        )

        def companyReceiverAddress = db.saveAddress(session.companyReceiver.address)
        def companyReceiver = db.saveCompany(
                session.companyReceiver.name,
                companyReceiverAddress,
                receiver,
                session._logo)


        db.saveCard(
                session.currentCard.picture_id.toInteger(),
                session.currentCard.text,
                session.currentCard.sign,
                user_id,
                companyReceiver
        )

        db.saveUser(user_id, companySender)
 //       session.invalidate()
        render (view: 'index.gsp')
    }
    //static allowedMethods = [save: "POST", update: "POST", delete: "POST", save_registration: "POST"]

    def toStart() {
        redirect (controller: 'picturesList', action: 'index')
    }
    def toMainPage() {
        // to do
    }


    //здесь вставить функцию сервиса для сохранения в бд
  /*  def save_registration() {

        render(contentType: 'text/json') {[
                'Mail': params.Mail,
                'pass': params.Pass
        ]}
    }*/

}
