package cardsproject

class TesterController {

    def index = {
//        render("hello world its test page")
        def message = "Hi"
        [message: message]
    }
}
