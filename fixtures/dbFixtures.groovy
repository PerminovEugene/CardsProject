import cardsproject.Card
import cardsproject.Catalog
import cardsproject.Picture
import cardsproject.User

/**
 * Created by eugenep on 30.07.14.
 */

/**
 *  Crete some catalogs in db
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
 *  Crete some picture in db
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

/*
def picture3 = new Picture()
picture3.name = 'pict4'
picture3.path = 'images/testCards/evangelion1.jpg'
picture3.catalog = catalog1
picture3.save()

def picture4 = new Picture()
picture4.name = 'pict5'
picture4.path = 'images/testCards/evangelion2.jpg'
picture4.catalog = catalog1
picture4.save()

def picture5 = new Picture()
picture5.name = 'pict6'
picture5.catalog = catalog1
picture5.path = 'images/testCards/evangelion3.jpg'
picture5.save()



def picture6 = new Picture()
picture6.name = 'pict7'
picture6.catalog = catalog
picture6.path = 'images/testCards/anime1.jpg'
picture6.save()


def picture7 = new Picture()
picture7.name = 'pict8'
picture7.path = 'images/testCards/naruto1.jpg'
picture7.catalog = catalog1
picture7.save()

def picture8 = new Picture()
picture8.name = 'pict9'
picture8.path = 'images/testCards/naruto3.jpg'
picture8.catalog = catalog1
picture8.save()

def picture9 = new Picture()
picture9.name = 'shtainsgate'
picture9.catalog = catalog1
picture9.path = 'images/testCards/shtainsgate.jpg'
picture9.save()

def picture10 = new Picture()
picture10.name = 'stainsgate'
picture10.catalog = catalog1
picture10.path = 'images/testCards/stainsGate.jpg'
picture10.save()
*/
