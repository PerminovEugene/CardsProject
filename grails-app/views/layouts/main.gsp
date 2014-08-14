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
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
        <script src='/CardsProject/assets/popup_for_enter.js' type='text/javascript'></script>
	</head>
	<body>
		<div class="header" id="header" role="banner">
            <div class="container">
                <div class="logo-block">
                    <a href="/CardsProject" >
                        <asset:image src="logo_o.png" alt="GoodCards" class="project-logo"/>
                    </a>
                </div>
                <div class = "about_us">
                     Сервис быстрой отправки открыток бисзнес партнерам и клиентам
                </div>
                <div class="account-info">
                    <button id='enter-button_t' name='enter-button_t' value='enter-button_t'>
                        Вход
                    </button>
                    <button id='exit-button_t' name='exit-button_t' value='exit-button_t'>
                        Выход
                    </button>
                </div>
            </div>
        </div>
        <div class="cabinet-header">
            <div class="container">
                <div class="heading">
                    <g:link controller="cabinet" action="index">Личный кабинет</g:link>
                </div>
            </div>
        </div>
		<g:layoutBody/>
        <div class='popup_block_t' id='popup_block_t'>
            <div class='popup_content_t' id='popup_content_t'>
                <div class='exit_sign_t'>
                    <img />
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
             </div>
        </div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
