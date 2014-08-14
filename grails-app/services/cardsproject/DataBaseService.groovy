package cardsproject
//import grails.transaction.Transactional

//@Transactional
class DataBaseService {
//    static transactional = false

    /*Добавить в каждый метод проверку обязательных параметров*/
    def createUser(params){
        def user = new User()
        user.e_mail = params.e_mail
        user.password = params.password
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
        address.city = params.city
        address.street = params.street
        address.house = params.house.toInteger()
        address.housing = params.housing
        address.office = params.office
        address.postCode = params.postcode.toInteger()
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

    def getUser(String e_mail) {
        def user = User.findByE_mail(e_mail)
        if (user != null) {
            return user.id
        }
        return null
    }

//    def getSender(long user_id) {
//        def user = User.get(user_id)
//
//    }

    def getUserCompany(long user_id) {
        def user = User.get(user_id)
        def company = user.company
//        def address = company.address
        return company
    }

    def getCompany(String name){
        def company = Company.findByName(name)
        return company
    }

    def getCards(long user_id) {
        def user = User.get(user_id)
        def cards = Card.findAllByUser(user)
        return cards
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
