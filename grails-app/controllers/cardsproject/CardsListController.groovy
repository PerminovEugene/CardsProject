package cardsproject
import grails.converters.JSON


class CardsListController {
    def dataBaseWorkerService
    def numberOfPicture

    def index() {
        numberOfPicture = 0;
        render(view: "cardsList.gsp")
    }

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", getNextCards: "GET"]

    def getNextCards()
    {
        numberOfPicture++
       // Picture picture = dataBaseWorkerService.getNextPicture(numberOfPicture)
      //
        def picture = Picture.findById(1)
        def path =  [picture.path] as JSON
        println(picture.path)
       // render ("see me?")
        //path.render(respoonce)
        // path.
        //render (view: "cardsList.gsp", model: [message: path])
        render path
    }
    def showPicture = {
        def p = Picture.get(params(id))
        render p as JSON
    }



}
