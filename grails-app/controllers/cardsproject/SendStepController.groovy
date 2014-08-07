package cardsproject
import grails.converters.JSON

class SendStepController {

    def index() {
        //было бы круто добавить логи
        render (view: 'index.gsp')
    }

    def saveInDb() {
        def db = new DataBaseService()

        // def user_id = db.createUser('test@test.ru','test5')

//        def userInfo = session.userInfo
//        def email = userInfo.e_mail
//        def pass = userInfo.pass
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

        redirect (action: 'index')
    }
    def toMainPage() {
        redirect (controller: 'picturesList', action: 'index')
    }


    //здесь вставить функцию сервиса для сохранения в бд
  /*  def save_registration() {

        render(contentType: 'text/json') {[
                'Mail': params.Mail,
                'pass': params.Pass
        ]}
    }*/

}
