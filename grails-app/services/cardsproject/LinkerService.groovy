package cardsproject
import grails.converters.JSON
import grails.transaction.Transactional
import org.springframework.dao.InvalidDataAccessApiUsageException
import org.springframework.web.multipart.MultipartFile
import javax.xml.bind.ValidationException

/**
 * Сервис предназначен для сборки объектов, списков, коллекций необходимых для контроллеров и других сервисов
 */
@Transactional
class LinkerService {
    def dataBaseService
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

    /**
     * Handling file when user load to server. Must be image for corretly save in db. Max size 200kb.
     * @param context of image. Use servletContext.getRealPath("/") for take it
     * @param img its MultipartFile for handling
     * @param user_id from session or database
     * @return path to place with image in server
     * @throws ValidationException if img isn't correctly
     */
    def handlingImage(context, MultipartFile img, user_id) throws ValidationException {
        try {
            if (img.empty) {
                if (user_id != null) {
                    def company = dataBaseService.fetchUserCompany(user_id)
                    if (company != null) {
                        return company.logo
                    } else {
                        return ''
                    }
                } else {
                    return ''
                }
            } else {
                if ((img.contentType != "image/jpeg") && (img.contentType != "image/png") && (img.contentType !="image/jpeg")) {
                    throw new ValidationException("Type not for image")
                }
                if (img.size > 200000) {
                    throw new ValidationException("Size of image more then 20000 bite")
                }
                def path = 'images/temp/'
                def name = img.getOriginalFilename()
                img.transferTo(new File(context + path + name))
                return path + name
            }
        } catch (ValidationException e) {
//            log.info "Exception in handlingImage(context, MultipartFile img, user_id) in LinkerService at load not correctly file: ${e.message}", e
            throw new ValidationException(e.message)
        }
        catch (Exception e) {
            log.error "Exception in handlingImage(context, MultipartFile img, user_id) in LinkerService: ${e.message}", e
        }
    }
}
