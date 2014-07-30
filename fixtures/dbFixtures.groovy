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

/**
 *  Crete some picture in db
 */
def picture = new Picture()
picture.name = 'pict1'
picture.path = '/web-app/images/testCards/cat1.jpeg'
picture.catalog = catalog
picture.save()

def picture1 = new Picture()
picture1.name = 'pict2'
picture1.path = '/web-app/images/testCards/cat2.jpeg'
picture1.catalog = catalog
picture1.save()

def picture2 = new Picture()
picture2.name = 'pict3'
picture2.catalog = catalog
picture2.path = '/web-app/images/testCards/cat3.jpeg'
picture2.save()


def picture3 = new Picture()
picture3.name = 'pict4'
picture3.path = '/web-app/images/testCards/evangelion1.jpg'
picture3.catalog = catalog1
picture3.save()

def picture4 = new Picture()
picture4.name = 'pict5'
picture4.path = '/web-app/images/testCards/evangelion2.jpg'
picture4.catalog = catalog1
picture4.save()

def picture5 = new Picture()
picture5.name = 'pict6'
picture5.catalog = catalog1
picture5.path = '/web-app/images/testCards/evangelion3.jpg'
picture5.save()