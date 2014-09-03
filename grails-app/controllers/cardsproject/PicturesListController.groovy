package cardsproject
import grails.converters.JSON

class PicturesListController {
    /**
     * @return страницу первого шага отправления открытки
     */
    def index() {
        if (session['_picture'] == null) {
            session.setAttribute('_picture',params)
            session['_picture'] = ''
        }
        if (session.currentCard == null) {
            session.setAttribute('currentCard', [
                    'picture_id' : params.id
            ])
        }
        render (view: 'index.gsp')
    }
    /**
     * Вызывается на первом шаге, при отправке аякс запроса, для отображения картинок
     * @return возвращает JSON список, содержащий айдишники картинок и пути к картинкам
     */
    def sendListPictures() {
        def linker = new LinkerService()
        def listPicturesId = linker.getListPicturesId()
        def listPicturesPath = linker.getListPicturesPath()
        def data = ["id" : listPicturesId, "path" : listPicturesPath] as JSON
        render data
    }

    def save() {
        session.currentCard.picture_id = params.id
        session['_picture'] = params.path
        redirect (controller:'envelope', action: 'index')
    }
}
//    static allowedMethods = [save: "POST", update: "POST", delete: "POST", getNextCards: "GET",
//                             getPreviousCards: "GET", saveChoicePicture: "POST"]

//    def getNextPictures(){
//        numberOfPicture++
//        sendPicture()
//    }
    // THERE MUST BE CORRECT SENDS PICTURE
 /*   def getPreviousPictures() {
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
    }*/

