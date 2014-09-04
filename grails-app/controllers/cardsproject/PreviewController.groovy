package cardsproject

class PreviewController {

    def index() {}

    def registration() {
//        println(params.Request)
//        println(session.user_id)
        if (params.Request == "login")
        {
            if (session.user_id == null)
            {
                render(contentType: 'text/json') {[
                        'response': "false"

                ]}
            }
            else {
                render(contentType: 'text/json') {[
                        'response': "true"
                ]}
            }
        }
        if (params.Request == "registration") {
                session['userInfo'] = [
                        'e_mail'  : params.Mail,
                        'password': params.Pass
                ]
            def db = new DataBaseService()
            def user = db.getUser(params.Mail);
            if (user == null) {
                render(contentType: 'text/json') {
                    [
                        'e_mail'  : "ok",//тут код для валидности мэйла
//                            'password': params.Pass
                    ]
                }
            }
            else {
                render(contentType: 'text/json') {
                    [
                        'e_mail'  : "locked",//тут код для валидности мэйла
//                            'password': params.Pass
                    ]
                }
            }
        }
    }
}
