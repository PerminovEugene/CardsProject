package cardsproject
import grails.converters.JSON

class SendStepController {

    def index() {
        //было бы круто добавить логи
        render (view: 'index.gsp')
    }

    def saveInDb() {

        def db = new DataBaseService()
        def companySender
        println(session.userInfo)
        def user_id
        println (session.user_id)
        if (session.user_id != null) {
                user_id = session.user_id
        } else {
            /*
            TODO
            выполнять этот код только для анонимных пользователей
            */
            user_id = db.getUser(session.userInfo.e_mail)
            if (user_id != null) {
                println('User already exist')
                companySender = db.getUserCompany(user_id)
                println('2')
            } else {
                user_id = db.createUser(session.userInfo)
                companySender = db.getCompany(session.companySender.name)
            }
            println('1')
            if (companySender != null) {
                println('Sender ' + companySender.name + ' already exist')
            } else {
                def sender = db.saveHuman(session.companySender.sender)
                def companySenderAddress = db.saveAddress(session.companySender.address)
                companySender = db.saveCompany(
                        session.companySender.name,
                        companySenderAddress,
                        sender,
                        session._logo
                )
            }
            db.saveUser(user_id, companySender)
        }
        session.setAttribute('user_id', user_id)
        println('1')
        def companyReceiver = db.getCompany(session.companyReceiver.name)
        if (companyReceiver != null) {
            //log
            println('Receiver ' + companyReceiver.name + ' already exist')
        } else {
            def receiver = db.saveHuman(session.companyReceiver.receiver)
            def companyReceiverAddress = db.saveAddress(session.companyReceiver.address)
            companyReceiver = db.saveCompany(
                    session.companyReceiver.name,
                    companyReceiverAddress,
                    receiver)
        }

        db.saveCard(
                session.currentCard.picture_id.toInteger(),
                session.currentCard.text,
                session.currentCard.sign,
                user_id,
                companyReceiver
        )
        println('1')
        try {
           /* sendMail {
                to session.userInfo.e_mail
                subject "Регистрация на BestReCards"
                body 'Спасибо что зарегистрировались на нашем сервисе. :) ' +
                        "Ваш пароль " + session.userInfo.password + ". "
            }*/
        }
        catch (Exception e) {
            println(e)
        }
        session.removeAttribute('currentCard')
        session.removeAttribute('userInfo')
        session.removeAttribute('companySender')
        session.removeAttribute('companyReceiver')
        session.removeAttribute('_logo')
        session.removeAttribute('_picture')
        redirect(action: 'index')
    }
    def toMainPage() {
        redirect (controller: 'picturesList', action: 'index')
    }

}
