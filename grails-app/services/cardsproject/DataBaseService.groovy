package cardsproject
//import grails.transaction.Transactional

//@Transactional
class DataBaseService {
//    static transactional = false

    /*Добавить в каждый метод проверку обязательных параметров*/
    def createUser(String e_mail, String password){
        def user = new User()
        user.e_mail = e_mail
        user.password = password
        user.save()
        return user.id
    }

    def saveUser(long user_id, Company company) {
        def user = User.get(user_id)
        user.company = company
        user.save(flush: true)
        return user
    }
    def saveCompany(String name, Address address, Human human, String logo) {
        def company = new Company()
        company.name = name
        company.address = address
        company.human = human
        company.logo = logo
        company.save()
        return company
    }

    def saveAddress(params) {
        def address = new Address()
        address.city = params.city
        address.street = params.street
        address.house = params.house.toInteger()
        address.housing = params.housing
        address.office = params.office
        address.postCode = params.postcode.toInteger()
        address.save()
        return address
    }

    def saveHuman(params) {
        def human = new Human()
        human.name = params.name
        human.post = params.post
        human.save()
        return human
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


}
