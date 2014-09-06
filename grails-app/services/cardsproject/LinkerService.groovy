package cardsproject

import grails.transaction.Transactional
/**
 * Сервис предназначен для сборки объектов, списков, коллекций необходимых для контроллеров и других сервисов
 */
@Transactional
class LinkerService {

    def serviceMethod() {

    }

    /**
     * Компонует список айдишников всех картинок.
     * @return список айдишников всех картинок.
     */
    def getListPicturesId() {
        def picture = new Picture()
        def picturesList = picture.list()
        def idList = picturesList.id
        return idList
    }

    /**
     * Компонует список всех путей картинок.
     * @return список всех путей картинок.
     */
    def getListPicturesPath() {
        def picture = new Picture()
        def picturesList = picture.list()
        def pathList = picturesList.path
        return pathList
    }
}
