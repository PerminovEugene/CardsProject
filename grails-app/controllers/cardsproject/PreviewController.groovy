package cardsproject

class PreviewController {

    def index() {}
    def toStart() {
        def logo = session['_logo']
        def companySender = session.companySender
        def companyReceiver = session.companyReceiver
        def sender = companySender.sender
        def receiver = companyReceiver.receiver
        def card = session.currentCard
        def db = new DataBaseService()
        def user_id = db.createUser('test@test.ru','test5')

        sender = db.saveHuman(sender.name, sender.post)
        receiver = db.saveHuman(receiver.name, receiver.post)
        def postcode = companySender.address.postcode

        def house = companySender.address.house

        def companySenderAddress = db.saveAddress(companySender.address.city, companySender.address.street, house.toInteger(),
                companySender.address.housing, companySender.address.office, postcode.toInteger())
        companySender = db.saveCompany(companySender.name, companySenderAddress, sender, logo)

        postcode = companyReceiver.address.postcode

        house = companyReceiver.address.house

        def  companyReceiverAddress = db.saveAddress(companyReceiver.address.city, companyReceiver.address.street, house.toInteger(),
                companyReceiver.address.housing, companyReceiver.address.office, postcode.toInteger())
        companyReceiver = db.saveCompany(companyReceiver.name, companyReceiverAddress, receiver, logo)
        def picture_id = card.picture_id
        db.saveCard(picture_id.toInteger(), card.text, card.sign, user_id, companyReceiver)

        db.saveUser(user_id, companySender)
        println('finish')
//        redirect(controller: "picturesList", action: "index")
//        session.invalidate()
    }
}
