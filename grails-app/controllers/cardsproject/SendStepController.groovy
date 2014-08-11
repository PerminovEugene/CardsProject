package cardsproject
import grails.converters.JSON

class SendStepController {

    def index() {
        //было бы круто добавить логи
        render (view: 'index.gsp')
    }

    def saveInDb() {
        def db = new DataBaseService()

        println(session.userInfo)
        def user_id = db.createUser(session.userInfo)
        /*TODO
        * не создавать новую компанию если пользователь уже создавал открытку
        * дергать у залогиненых пользователей информацию о компании из базы
        * */
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
                receiver)


        db.saveCard(
                session.currentCard.picture_id.toInteger(),
                session.currentCard.text,
                session.currentCard.sign,
                user_id,
                companyReceiver
        )

        db.saveUser(user_id, companySender)
        try {
            sendMail {
                to session.userInfo.e_mail
                subject "Регистрация на BestReCards"
                body 'Спасибо что зарегистрировались на нашем сервисе. :) ' +
                        "Ваш пароль " + session.userInfo.password +". "
            }
        }
        catch (Exception e){
            println (e)
        }
        redirect (action: 'index')
    }
    def toMainPage() {
        redirect (controller: 'picturesList', action: 'index')
        session.invalidate()
    }

}
