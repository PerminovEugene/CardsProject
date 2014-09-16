package cardsproject
import grails.converters.JSON
import grails.transaction.Transactional
/**
 * Сервис предназначен для сборки объектов, списков, коллекций необходимых для контроллеров и других сервисов
 */
@Transactional
class LinkerService {

    def serviceMethod() {

    }

    /**
     * Компонует список айдишников и путей всех картинок.
     * @return этот список как JSON.
     */
    def fetchPictureListJSON() {
        def picture = new Picture()
        def picturesList = picture.list()
        def idList = picturesList.id
        def pathList = picturesList.path
        def data = ["id" : idList, "path" : pathList] as JSON
        return data
    }
}
