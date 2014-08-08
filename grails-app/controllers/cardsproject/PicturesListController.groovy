package cardsproject
import grails.converters.JSON

class PicturesListController {

    def _PICTUREATSCREEN_ = 6 // how many picture at screen
    int numberOfPicture
    def getPreviousCall


    def index() {
        numberOfPicture = 0;
        getPreviousCall = false

        if (session['_picture'] == null) {
            session.setAttribute('_picture',params)
            session['_picture'] = ''
        }
        render(view: "picturesList.gsp")
    }

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", getNextCards: "GET",
                             getPreviousCards: "GET", saveChoicePicture: "POST"]

    def getNextPictures(){
        numberOfPicture++
        sendPicture()
    }
    // THERE MUST BE CORRECT SENDS PICTURE
    def getPreviousPictures() {
        if (getPreviousCall == false) {
            getPreviousCall = numberOfPicture
            numberOfPicture -= _PICTUREATSCREEN_ * 2
        } else {
            if (numberOfPicture == getPreviousCall)
                getPreviousCall = false
            getNextPictures()
        }
        if (numberOfPicture < 0) {
            sendPicture()
        }
    }
    def sendPicture(){
        def picture = Picture.findById(numberOfPicture)
        def data =  [picture.path, numberOfPicture] as JSON
        render data
    }

    def sendListPictures() {
        def picture = new Picture()
        def picturesList = picture.list()
        def pathList = picturesList.path
        def idList = picturesList.id
        def data = ["id" : idList, "path" : pathList] as JSON
        render data
    }

    def saveChoicePicture(){
        session['currentCard'] = [
                'picture_id' : params.id
        ]
        session['_picture'] = params.path
        render("ok") as JSON

        //redirect(controller:'cardsList', action: 'look')

    }
}
