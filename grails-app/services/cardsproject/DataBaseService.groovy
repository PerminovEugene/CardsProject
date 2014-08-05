package cardsproject

import grails.transaction.Transactional
import org.yecht.Data.Str

import javax.accessibility.AccessibleHyperlink

@Transactional
class DataBaseService {
//    def card = new Card()
//    def sender = new Human()
//    def receiver = new Human()
//    def senderAddress = new Address()
//    def recieverAddress = new Address()
//    def senderCompany = new Company()
//    def recieverCompany = new Company()

    def serviceMethod() {

    }
    /*Добавить в каждый метод проверку обязательных параметров*/
    def createUser(String e_mail, String password, Company company) {
        def user = new User()
        user.e_mail = e_mail
        user.password = password
        user.company = company
        user.save()
        return user
    }

    def createCompany() {
        def company = new Company()
        return company
    }

    def addCompanyInfo(Company company, String name, Address address, Human human) {
        company.name = name
        company.address = address
        company.human = human
        return company
    }

   def addLogo(Company company, String logo) {
       company.logo = logo
       company.save()
       return company
   }

    def createAddress(String city, String street, int house, String housing, String office, int postCode) {
        def address = new Address()
        address.city = city
        address.street = street
        address.house = house
        address.housing = housing
        address.office = office
        address.postCode = postCode
        address.save()
        return address
    }

    def createHuman(String name, String post) {
        def human = new Human()
        human.name = name
        human.post = post
        human.save()
        return human
    }

    def createCard() {
        def card = new Card()
        return card
    }

    def addPicture(Card card, int id) {
        def picture = Picture.get(id)
        card.picture = picture
        return card
    }

    def addСompliments (Card card, String text, String sign) {
        /*Добавить проверку на колличество символов*/
        card.text = text
        card.sign = sign
        return card
    }

    def saveCard (Card card) {
        card.state = 'ON MODERATION'
        card.created = Date(2014, 01, 01)
        card.save()
    }

}
