package cardsproject

class PreviewController {

    def index() {}

    def registration() {
        session ['userInfo'] = [
                'e_mail': params.Mail,
                'pass': params.Pass
        ]
        // здесь нужно сделать сначала валидаию перед записью в бд если не успешна послать причину, иначе послать ок и редирект на
        //toStart

       //example for send json for ajax
        render(contentType: 'text/json') {[
                'Mail': params.Mail,//тут код для валидности мэйла а ниже для паса
                'pass': params.Pass
        ]}

       // redirect(controller: 'preview', action: 'toStart')
    }

    def toStart() {

        /*
    def saveInDb() {
        def db = new DataBaseService()

        def user_id = db.createUser('test@test.ru','test5')
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
//        redirect(controller: "picturesList", action: "index")
//        session.invalidate()*/
//>>>>>>> 6a143af359a5f4af230a7f52380d37a71ad1af4a
    }
}
