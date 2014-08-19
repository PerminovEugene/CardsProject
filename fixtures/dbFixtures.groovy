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
evaCard1.name = ("crazy man")
evaCard1.path = 'assets/testCards/1.jpg'
evaCard1.catalog = happyBday
evaCard1.save()

def evaCard2 = new Picture()
evaCard2.name = ("happy girl")
evaCard2.path = 'assets/testCards/2.jpg'
evaCard2.catalog = valentinesDay
evaCard2.save()

def evaCard3 = new Picture()
evaCard3.name = ("bubble goom girl")
evaCard3.path = 'assets/testCards/3.jpg'
evaCard3.catalog = holidays
evaCard3.save()

def picture = new Picture()
picture.name = 'pict4'
picture.path = 'assets/testCards/4.jpg'
picture.catalog = catalog
picture.save()

def picture1 = new Picture()
picture1.name = 'pict5'
picture1.path = 'assets/testCards/5.jpg'
picture1.catalog = catalog
picture1.save()

def picture2 = new Picture()
picture2.name = 'pict6'
picture2.catalog = catalog
picture2.path = 'assets/testCards/6.jpg'
picture2.save()

def picture3 = new Picture()
picture3.name = 'pict7'
picture3.path = 'assets/testCards/card1.jpg'
picture3.catalog = catalog
picture3.save()

def picture4 = new Picture()
picture4.name = 'pict8'
picture4.path = 'assets/testCards/card2.jpg'
picture4.catalog = catalog
picture4.save()

def picture5 = new Picture()
picture5.name = 'pict9'
picture5.catalog = catalog
picture5.path = 'assets/testCards/card3.jpg'
picture5.save()

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

def secondCard = new Card()
secondCard.text = 'Congratulation'
secondCard.sign = "Your's banny"
secondCard.created = new Date()
secondCard.state = 'ON MODERATION'
secondCard.picture = evaCard2
secondCard.user = testUser
secondCard.company = lukoil
secondCard.save()
