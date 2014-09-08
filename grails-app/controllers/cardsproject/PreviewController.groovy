package cardsproject

class PreviewController {

    def dataBaseService
    def index() {}

    def isLogin () {
        if (session.user_id == null) {
            render(contentType: 'text/json') {['response': "false" ]}
        } else {
            render(contentType: 'text/json') {[ 'response': "true" ]}
        }
    }
    def registration() {
        session['userInfo'] = [
            'e_mail'  : params.Mail,
            'password': params.Pass
        ]
        def user = dataBaseService.fetchUser(params.Mail);
        if (user == null) {
            render(contentType: 'text/json') {[ 'e_mail'  : "ok" ]}
        } else {
            render(contentType: 'text/json') {[ 'e_mail'  : "locked" ]}
        }
    }
}
