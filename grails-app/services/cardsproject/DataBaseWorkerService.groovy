package cardsproject

import grails.transaction.Transactional

@Transactional
class DataBaseWorkerService {

    def serviceMethod() {
        /*
        User user1 = new User()
        user1.login = "login"
        user1.password ='qweqry'
        user1.first_name = "Petr"
        user1.second_name = "Petrov"
        user1.e_mail = "viewsonic_1993@mail.ru"
        user1.save()
       */

      //  name = "pict1"
       // path = "http://www.ucarecdn.com/6c178276-1be3-4887-b309-d5cd0e2db0ee"
      //  Picture picture = new Picture(pict1)
       // picture.save()
    }
    def createTestPicture
    {
        Picture picture = new Picture()
        picture.name = "pict1"
        picture.path = "/home/eugenep/IdeaProjects/CardsProject/CardsProject/web-app/images/testCards/cat1.jpeg"
        picture.save()

        Picture picture1 = new Picture()
        picture1.name = "pict2"
        picture1.path = "/home/eugenep/IdeaProjects/CardsProject/CardsProject/web-app/images/testCards/cat2.jpeg"
        picture1.save()

        Picture picture2 = new Picture()
        picture2.name = "pict3"
        picture2.path = "/home/eugenep/IdeaProjects/CardsProject/CardsProject/web-app/images/testCards/cat3.jpeg"
        picture2.save()
    }

}
