package cardsproject
import grails.converters.JSON


class PicturesListController {

    def _PICTUREATSCREEN_ = 6 // how many picture at screen
    def dataBaseWorkerService
    def numberOfPicture
    def getPreviousCall


    def index() {
        numberOfPicture = 0;
        getPreviousCall = false
        dataBaseWorkerService.startService()
        if (session['_picture'] == null) {
            session['_picture'] = ''
        }
        if (session['cardList'] == null) {
            session.setAttribute('cardList',params)
            session['cardList'] = 0001
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
            getNextCards()
        }
        if (numberOfPicture < 0) {

            sendPicture()
        }
    }
    def sendPicture(){
        def picture = Picture.findById(numberOfPicture)
        def path =  [picture.path] as JSON
        render path
    }
    def saveChoicePicture(){
        session['_picture'] = params.path
        render("ok") as JSON

        //redirect(controller:'cardsList', action: 'look')
    }
}
