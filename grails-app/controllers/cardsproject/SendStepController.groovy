package cardsproject

import grails.util.Environment

class SendStepController {

    def index() {
        render (view: 'index.gsp')
    }
    def dataBaseService
/*
    def getSessionUserId () {
        def userId

        if (session.user_id != null) {
            userId = session.user_id
        } else {
//          выполнять этот код только для анонимных пользователей
            userId = dataBaseService.fetchUser(session.userInfo.e_mail)
        }
        return  userId
    }

    def getCompanySenderByUserId (userId) {
        def companySender
        if (userId != null) {
            companySender = dataBaseService.fetchUserCompany(user_id)
        } else {
            userId = dataBaseService.createUser(session.userInfo)
            companySender = dataBaseService.fetchCompany(session.companySender.name)
        }
        return companySender
    }*/

    def saveInDb() {
        try {
            def companySender
            def user_id

            if (session.user_id != null) {
                user_id = session.user_id
            } else {
//          выполнять этот код только для анонимных пользователей
                user_id = dataBaseService.fetchUser(session.userInfo.e_mail)
            }

            if (user_id != null) {
                companySender = dataBaseService.fetchUserCompany(user_id)
            } else {
                user_id = dataBaseService.createUser(session.userInfo)
                companySender = dataBaseService.fetchCompany(session.companySender.name)
            }

            if (companySender == null) {
                def sender = dataBaseService.createHuman(session.companySender.sender)
                def companySenderAddress = dataBaseService.createAddress(session.companySender.address)
                companySender = dataBaseService.createCompany(session.companySender.name, companySenderAddress,
                        sender, session._logo)
                sendMailRegistration()
            } else {
                if ((companySender.logo == null) || (session._logo != '')) {
                    companySender = dataBaseService.saveCompany(companySender, session._logo)
                }
            }
            dataBaseService.addCompanyToUser(user_id, companySender)
            session.setAttribute('user_id', user_id)
            def companyReceiver = dataBaseService.fetchCompany(session.companyReceiver.name)
            if (companyReceiver != null) {
                log.error("saveInDb company receiver != null")
            } else {
                def receiver = dataBaseService.createHuman(session.companyReceiver.receiver)
                def companyReceiverAddress = dataBaseService.createAddress(session.companyReceiver.address)
                companyReceiver = dataBaseService.createCompany(
                        session.companyReceiver.name,
                        companyReceiverAddress,
                        receiver)
            }
            dataBaseService.saveCard(
                    session.currentCard.picture_id.toInteger(),
                    session.currentCard.text,
                    session.currentCard.sign,
                    user_id,
                    companyReceiver
            )
            session.removeAttribute('currentCard')
            session.removeAttribute('userInfo')
            session.removeAttribute('companySender')
            session.removeAttribute('companyReceiver')
            session.removeAttribute('_logo')
            session.removeAttribute('_picture')
            redirect(action: 'index')
        } catch (Exception e) {
            log.error "Error in save in DB: ${e.message}", e
        }
    }
    def sendMailRegistration() {
        if (Environment.current != Environment.PRODUCTION) {
            try {
                sendMail {
                    to session.userInfo.e_mail
                    subject "Регистрация на BestReCards"
                    body 'Спасибо что зарегистрировались на нашем сервисе.' +
                            "Ваш пароль " + session.userInfo.password + ". "
                }
            } catch (Exception e) {
                log.error "Error in sendmailRegistration: ${e.message}", e
            }
        }
    }

    def toStartPage() {
        redirect (controller: 'startPage', action: 'index')
    }
    def toPicturesListPage() {
        redirect (controller: 'picturesList', action: 'index')
    }

}
