<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="ru" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		%{--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">--}%
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="/CardsProject/assets/favicon.ico" type="image/x-icon">

  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
        <script src='/CardsProject/assets/popup_for_enter.js' type='text/javascript'></script>
        <script src='/CardsProject/assets/popup_for_registration_header.js' type='text/javascript'></script>
	</head>
	<body>
        <div class="page-wrapper">
		<div class="header" id="header" role="banner">
            <div class="container">
                <div class="logo-block">
                    <a href="/CardsProject" >
                        <asset:image src="logo_o.png" alt="GoodCards" class="project-logo"/>
                    </a>
                </div>
                <div class = "about_us">
                     Сервис по отправке открыток бизнес партнёрам и клиентам
                </div>
                <div class="account-info js-account-info">
                    <button id='enter-button_t' name='enter-button_t' value='enter-button_t' class="header-button">
                        Вход
                    </button>
                    <button id='registration-button_t' name='registration-button_t' value='registration-button_t' class="header-button">
                        Зарегестрироваться
                    </button>
                    <button id='exit-button_t' name='exit-button_t' value='exit-button_t' class="header-button">
                        Выход
                    </button>
                    %{--<div class="cabinet-header">--}%
                        %{--<div class="container">--}%
                            %{--<div class="heading">--}%
                            <div  id="header-button">
                                <g:link controller="cabinet" action="index" class="js-cabinet-button hidden header-button to-down">Личный кабинет</g:link>
                            </div>
                        %{--</div>--}%
                    %{--</div>--}%
                </div>
            </div>
        </div>
		<g:layoutBody/>
        </div>
        <div class='popup_block_t' id='popup_block_t'>
            <div class='popup_content_t' id='popup_content_t'>
                <div class="popup-style-top"></div>
                <div class='exit_sign_t'>
                    %{--<img src="/CardsProject/assets/little_image_site/cross.png"/>--}%
                </div>
                <h1> Вход </h1>
                <div id='enter-error_t'>
                </div>
                <div class='mailError_t' id="mailError_t">
                    <h3></h3>
                </div>
                <input id='mail_t' placeholder='&#1042;&#1072;&#1096; e-mail' type='text' />
                <div class='passError_t' id="passError_t">
                    <h3></h3>
                </div>
                <input id='pass_t' placeholder='&#1055;&#1072;&#1088;&#1086;&#1083;&#1100;' type='password' />
                <button id='login-button_t' name='login-button_t' value='login-button_t'>
                    Войти
                </button>
                <div class="popup-style-down"></div>
             </div>
        </div>
    <div class='reg_popup_block' id='reg_popup_block'>
        <div class='reg_popup_content' id='reg_popup_content'>
            <div class="popup-style-top"></div>
            <div class='reg_exit_sign'>
                %{--<img src="/CardsProject/assets/little_image_site/cross.png"/>--}%
            </div>
            <h2>Регистрация</h2>
            <h3>Вам не нужно будет повторно вводить данные, в следующий, раз все будет уже сохранено!</h3>
            <div class='reg_mailError' id='reg_mailError'>
                <h3></h3>
            </div>
            <input id='reg_mail' placeholder='&#1042;&#1072;&#1096; e-mail' type='text' />
            <div class='reg_passError' id='reg_passError'>
                <h3></h3>
            </div>
            <input id='reg_pass' placeholder='&#1055;&#1072;&#1088;&#1086;&#1083;&#1100;' type='password' />
            <button id='send_registration_button' name='send_registration_button' value='send_registration_button'>
                Регистрация
            </button>
            <div class="popup-style-down"></div>
        </div>
    </div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    <div class="template-footer">
        <a class="first-link-footer" href="http://7bits.ru/">7bits.ru</a>
        <h4>Есть вопросы? Пишите:</h4>
        <a href="http://gmail.com/">bestrecards.project@gmail.com</a>
    </div>
	</body>
</html>
