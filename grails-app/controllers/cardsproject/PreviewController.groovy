package cardsproject

class PreviewController {

    def index() {}

    def registration() {
        println(params.Request)
        println(session.user_id)
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
                // здесь нужно сделать сначала валидаию перед записью в бд если не успешна послать причину, иначе послать ок и редирект на
                //toStart

                //example for send json for ajax
                render(contentType: 'text/json') {
                    [
                            'e_mail'  : params.Mail,//тут код для валидности мэйла а ниже для паса
                            'password': params.Pass
                    ]
                }
            }
    }
}
