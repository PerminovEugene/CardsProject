package cardsproject

class EnterToSiteController {

    def index() {}

    def enter() {
        def db = new DataBaseService()
        def user_id
//        println(session.user_id)
        if (session.user_id == null) {
            /*
            TODO
            выполнять этот код только для входящих пользователей
            */
            def e_mail = params.Mail
            def password = params.Pass
            user_id = db.getUser(e_mail, password)
//            println (user_id + 'its user id')
            if (user_id != null) {
                session.user_id = user_id
//                println (session.user_id + 'in session')
//                println (user_id + 'its user id')
                render(contentType: 'text/json') {
                    [
                            'response': 'success'
                    ]
                }
            }
            else {
                render(contentType: 'text/json') {
                    [
                            'response': 'unsuccess'
                    ]
                }
            }
        }
    }
    def exit() {
        if (session.user_id != null) {
            session.removeAttribute('user_id')
            }
        render(contentType: 'text/json') {
            [
                    'response': 'success'
            ]
        }
    }
    def checkUserStatus() {
//        println(params.Request)
//        println(session.user_id)
        if (params.Request == "login")
        {
            if (session.user_id == null)
            {
//                println("false")
                render(contentType: 'text/json') {[
                        'response': "not"

                ]}
            }
            else {
                render(contentType: 'text/json') {[
                        'response': "yes"
                ]}
            }
        }
        else
        {
            //logging there
            render(contentType: 'text/json') {[
                    'response': "fail at response"
            ]}
        }
    }
    def registration() {
        if (params.Request == "registration") {
            def mail = params.Mail
            def db = new DataBaseService()
            def user_id = db.getUser(mail)
            if (user_id != null ) {
                render(contentType: 'text/json') { //user exist
                    [
                            'response':  'unsuccess'
                    ]
                }
            } else { //user not exist, we create him
                session['userInfo'] = [
                        'e_mail'  : params.Mail,
                        'password': params.Pass
                ]
                user_id = db.createUser(session.userInfo)
                session.user_id = user_id
                render(contentType: 'text/json') {
                    [
                            'response': 'success',//тут код для валидности мэйла а ниже для паса
                    ]
                }
            }
        }
    }
}
