import cardsproject.Address
import cardsproject.Card
import cardsproject.Catalog
import cardsproject.Company
import cardsproject.Human
import cardsproject.Picture
import cardsproject.User

/**
 * Created by eugenep on 30.07.14.
 */

/**
 *  Create some catalogs in db
 */

def catalog = new Catalog()
catalog.name = "Cats"
catalog.save()

def catalog1 = new Catalog()
catalog1.name = "Eva"
catalog1.save()

def catalog2 = new Catalog()
catalog2.name = "Eva"
catalog2.save()

def happyBday = new Catalog()
happyBday.name = "happy birthday"
happyBday.save()

def valentinesDay = new Catalog()
valentinesDay.name = "valentines Day"
valentinesDay.save()

def holidays = new Catalog()
holidays.name = "holidays"
holidays.save()

/**
 *  Create some picture in db
 */

def evaCard1 = new Picture()
evaCard1.name = ("happy boy")
evaCard1.path = 'images/testCards/card1.jpg'
evaCard1.catalog = happyBday
evaCard1.save()

def evaCard2 = new Picture()
evaCard2.name = ("happy girl")
evaCard2.path = 'images/testCards/card2.jpg'
evaCard2.catalog = valentinesDay
evaCard2.save()

def evaCard3 = new Picture()
evaCard3.name = ("bubble goom girl")
evaCard3.path = 'images/testCards/card3.jpg'
evaCard3.catalog = holidays
evaCard3.save()

def picture = new Picture()
picture.name = 'pict1'
picture.path = 'images/testCards/cat1.jpeg'
picture.catalog = catalog
picture.save()

def picture1 = new Picture()
picture1.name = 'pict2'
picture1.path = 'images/testCards/cat2.jpeg'
picture1.catalog = catalog
picture1.save()

def picture2 = new Picture()
picture2.name = 'pict3'
picture2.catalog = catalog
picture2.path = 'images/testCards/cat3.jpeg'
picture2.save()

/**
 *  Create some human in db
 */
def sender = new Human()
sender.name = 'Alexeev S.K.'
sender.post = 'Director'
sender.save()

def addressee = new Human()
addressee.name = 'Antonov A.V.'
addressee.post = 'General director'
addressee.save()

/**
 *  Create some address in db
 */
def lukoilAddress = new Address()
lukoilAddress.city = 'Moskva'
lukoilAddress.street = 'Lenina'
lukoilAddress.house = 1
lukoilAddress.housing = '1'
lukoilAddress.office = '21'
lukoilAddress.postCode = 644526
lukoilAddress.save()

def mostovikAddress = new Address()
mostovikAddress.city = 'Omsk'
mostovikAddress.street = 'Mira'
mostovikAddress.house = 124
mostovikAddress.housing = '25'
mostovikAddress.office = '18'
mostovikAddress.postCode = 643421
mostovikAddress.save()

/**
 *  Create some company in db
 */
def mostovik = new Company()
mostovik.name = 'Mostovik'
mostovik.logo = 'images/logo/mostovik.jpeg'
mostovik.human = sender
mostovik.address = mostovikAddress
mostovik.save()

def lukoil = new Company()
lukoil.name = 'Lukoil'
lukoil.logo = 'images/logo/lukoil.jpeg'
lukoil.human = addressee
lukoil.address = lukoilAddress
lukoil.save()


/**
 *  Create test user in db
 */
def testUser = new User()
testUser.e_mail = 'test@gmail.com'
testUser.password ='qwerty'
testUser.company = mostovik
testUser.save()

/**
 *  Create card in db
 */
def firstCard = new Card()
firstCard.text = 'Congratulation'
firstCard.sign = "Your's banny"
firstCard.created = new Date(2014,03,25)
firstCard.state = 'ON MODERATION'
firstCard.picture = evaCard1
firstCard.user = testUser
firstCard.company = lukoil
firstCard.save()