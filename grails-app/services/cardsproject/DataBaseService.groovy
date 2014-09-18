package cardsproject
//import grails.transaction.Transactional

//@Transactional
class DataBaseService {
//    static transactional = false

    /*Добавить в каждый метод проверку обязательных параметров*/
    def createUser(params){
        def user = new User()
        user.e_mail = params.e_mail
//        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : params.password
        user.password = params.password
//        user.password = password
        user.save()
        return user.id
    }

    def addCompanyToUser(long user_id, Company company) {
        def user = User.get(user_id)
        user.company = company
        user.save(flush: true)
        return user
    }
    def createCompany(String name, Address address, Human human, String logo) {
       def company = new Company()
       company.name = name
       company.address = address
       company.human = human
       company.logo = logo
       company.save()
       return company
    }
    def createCompany(String name, Address address, Human human) {
        def company = new Company()
        company.name = name
        company.address = address
        company.human = human
        company.save(flush: true)
        return company
    }


    def createAddress(params) {
        def address = new Address()
        this.saveAddress(address, params)
        return address
    }

    def createHuman(params) {
        def human = new Human()
        this.saveHuman(human, params)
        return human
    }

    def saveAddress(Address address, params) {
        if (params.city != null)
            address.city = params.city
        if (params.street != null)
            address.street = params.street
        if (params.house != null)
            address.house = params.house.toInteger()
        if (params.housing != null)
            address.housing = params.housing
        if (params.office != null)
            address.office = params.office
        if (params.postcode != null)
            address.postCode = params.postcode.toInteger()
        println ("save in db")
        address.save()
    }

    def saveHuman(Human human, params) {
        human.name = params.name
        human.post = params.post
        human.save()
    }

    def saveCompany(Company company, String name, String logo) {
        company.name = name
        company.logo = logo
        company.save(flush: true)
    }

    def saveCompany(Company company, String logo) {
        company.logo = logo
        company.save(flush: true)
    }

    def saveCard(int picture_id, String text, String sign, long user_id, company) {
        def picture = Picture.get(picture_id)
        def user = User.get(user_id)
        def card = new Card()
        card.picture = picture
        card.text = text
        card.sign = sign
        card.user = user
        card.company = company
        card.state = 'ON MODERATION'
        card.created = new Date()
        card.save()
        return card
    }

    def updateCardState(Card card, String state) {
        card.state = state
        card.save(flush: true)
    }

    def fetchUser(String e_mail) {
        def user = User.findByE_mail(e_mail)
        if (user != null) {
            return user.id
        }
        return null
    }

    def fetchUser(String e_mail, String pass)
    {
        def user = User.findByE_mail(e_mail)
        if (user == null) {
            return null
        } else {
            if (user.password == pass) {
                return user.id
            } else {
                return null
            }
        }
    }

    def fetchUserCompany( user_id) {
        def user = User.get(user_id)
        if (user != null) {
            def company = user.company
            return company
        }
        return null

    }

    def fetchCompany(String name){
        def company = Company.findByName(name)
        return company
    }

    def fetchCards(long user_id) {
        def user = User.get(user_id)
        def cards = Card.findAllByUser(user)
        return cards
    }

    def saveAllAtSendStep(session) {
        def companySender
        def user_id

        if (session.user_id != null) {
            user_id = session.user_id
        } else {
//          выполнять этот код только для анонимных пользователей
            user_id = dataBaseService.fetchUser(session.userInfo.e_mail)
        }
        if (user_id != null) {
            println('User already exist')
            companySender = dataBaseService.fetchUserCompany(user_id)
        } else {
            user_id = dataBaseService.createUser(session.userInfo)
            companySender = dataBaseService.fetchCompany(session.companySender.name)
        }

        if (companySender == null) {
            def sender = dataBaseService.createHuman(session.companySender.sender)
            def companySenderAddress = dataBaseService.createAddress(session.companySender.address)
            companySender = dataBaseService.createCompany(
                    session.companySender.name,
                    companySenderAddress,
                    sender,
                    session._logo
            )
            /*try {
                sendMail {
                    to session.userInfo.e_mail
                    subject "Регистрация на BestReCards"
                    body 'Спасибо что зарегистрировались на нашем сервисе. :) ' +
                            "Ваш пароль " + session.userInfo.password + ". "
                }
            } catch (Exception e) {
                println(e)
            }*/
        } else {
            if ((companySender.logo == null)||(session._logo != '')) {
                companySender = dataBaseService.saveCompany(companySender, session._logo)
            }
        }
        dataBaseService.addCompanyToUser(user_id, companySender)
        session.setAttribute('user_id', user_id)
        println("company_receiver")
        def companyReceiver = dataBaseService.fetchCompany(session.companyReceiver.name)
        if (companyReceiver != null) {
            //log
            println('Receiver ' + companyReceiver.name + ' already exist')
        } else {
            def receiver = dataBaseService.createHuman(session.companyReceiver.receiver)
            def companyReceiverAddress = dataBaseService.createAddress(session.companyReceiver.address)
            companyReceiver = dataBaseService.createCompany(
                    session.companyReceiver.name,
                    companyReceiverAddress,
                    receiver)
        }
        println(session.currentCard.picture_id)
        dataBaseService.saveCard(
                session.currentCard.picture_id.toInteger(),
                session.currentCard.text,
                session.currentCard.sign,
                user_id,
                companyReceiver
        )

    }

//    def getAddress(long id_address) {
//        def address = Address.get(id_address)
//        return address
//
//    }
//
//    def getHuman(long id_human) {
//        def human = Human.get(id_human)
//        return human
//    }

}
