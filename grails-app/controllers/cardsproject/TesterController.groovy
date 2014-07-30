package cardsproject
import grails.converters.*

class TesterController {

    def index() {
        def iata = {
            def iata = params.id?.toUpperCase() ?: "NO IATA"
            def user = User.findByIata(iata)
            if(!user){
                user = new User(iata:iata, name:"Not found")
            }
            //render user as JSON
            redirect(view: "cardList.gsp", model: user as JSON)

    }

    }
}
