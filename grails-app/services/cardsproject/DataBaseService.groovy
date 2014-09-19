package cardsproject

import org.yecht.Data.Str
//import grails.transaction.Transactional
//@Transactional

class DataBaseService {

    def createUser(params){
        try {
            def user = new User()
            user.e_mail = params.e_mail
            user.password = params.password.encodeAsMD5()
            user.save()
            return user.id
        } catch (Exception e) {
            log.error "Error in addCompanyToUser(long user_id, Company company): ${e.message}", e
        }
    }

    def addCompanyToUser(long user_id, Company company) {
        try {
            def user = User.get(user_id)
            user.company = company
            user.save(flush: true)
            return user
        } catch (Exception e) {
            log.error "Error in addCompanyToUser(long user_id, Company company): ${e.message}", e
        }
    }
    def createCompany(String name, Address address, Human human, String logo) {
        try {
            def company = new Company()
            company.name = name
            company.address = address
            company.human = human
            company.logo = logo
            company.save()
            return company
        } catch (Exception e) {
            log.error "Error in createCompany(name, address, human, logo): ${e.message}", e
        }
    }
    def createCompany(String name, Address address, Human human) {
        try {
            def company = new Company()
            company.name = name
            company.address = address
            company.human = human
            company.save(flush: true)
            return company
        } catch (Exception e) {
            log.error "Error in createCompany(name, address, human): ${e.message}", e
        }
    }


    def createAddress(params) {
        try {
            def address = new Address()
            this.saveAddress(address, params)
            return address
        } catch (Exception e) {
            log.error "Error in createAddress(params): ${e.message}", e
        }
    }

    def createHuman(params) {
        try {
            def human = new Human()
            this.saveHuman(human, params)
            return human
        } catch (Exception e) {
            log.error "Error in createHuman(params): ${e.message}", e
        }
    }

    def saveAddress(Address address, params) {
        try {
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
            address.save()
        } catch (Exception e) {
            log.error "Error in saveAddress: ${e.message}", e
        }
    }

    def saveHuman(Human human, params) {
        try {
            human.name = params.name
            human.post = params.post
            human.save()
        } catch (Exception e) {
            log.error "Error in saveHuman: ${e.message}", e
        }
    }
/*
    def saveCompany(Company company, String name, String logo) {
        company.name = name
        company.logo = logo
        company.save(flush: true)
    }
*/
    def saveCompany(Company company, String logo) {
        try {
            company.logo = logo
            company.save(flush: true)
        } catch (Exception e) {
            log.error "Error in saveCompany: ${e.message}", e
        }
    }

    def saveCard(int picture_id, String text, String sign, long user_id, company) {
        try {
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
        } catch (Exception e) {
            log.error "Error in saveCard: ${e.message}", e
        }
    }

    def updateCardState(Card card, String state) {
        try {
            card.state = state
            card.save(flush: true)
        } catch (Exception e) {
            log.error "Error in updateCardState: ${e.message}", e
        }
    }

    def fetchUser(String e_mail) {
        try {
            def user = User.findByE_mail(e_mail)
            if (user != null) {
                return user.id
            }
            return null
        } catch (Exception e) {
            log.error "Error in fetchUser(email): ${e.message}", e
        }
    }

    def fetchUser(String e_mail, String pass)
    {
        try {
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
        } catch (Exception e) {
            log.error "Error in fetchUser(email,pass): ${e.message}", e
        }
    }

    def fetchUserCompany( user_id) {
        try {
            def user = User.get(user_id)
            if (user.company != null) {
                def company = user.company
                return company
            }
            return null
        } catch (Exception e) {
           log.error "Error in fetchUserCompany: ${e.message}", e
        }

    }

    def fetchCompany(String name){
        try {
            def company = Company.findByName(name)
            return company
        } catch (Exception e) {
            log.error "Error in fetchCompany: ${e.message}", e
        }

    }

    def fetchCards(long user_id) {
        try {
            def user = User.get(user_id)
            def cards = Card.findAllByUser(user)
            return cards
        } catch (Exception e) {
            log.error "Error in fetchCards: ${e.message}", e
        }
    }

    def createRequest(name, phone, email, state) {
        try {
            def request = new Requester()
            if (phone != "" || email != "") {
                request.name = name
                request.phone = phone
                request.email = email
                request.state = state
                request.save()
            }
        } catch (Exception e) {
            log.error "Error in create Request: ${e.message}", e
        }
    }
}
