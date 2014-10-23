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
    <link rel="shortcut icon" href="/assets/favicon.ico" type="image/x-icon">
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="landing.css.less"/>
    <asset:stylesheet src="fonts.css.less"/>
    <asset:stylesheet src="jquery.gritter.css.less"/>
    %{--<asset:javascript src="application.js"/>--}%
    <g:layoutHead/>
</head>
<body>
<header>
    <div class="container">
        <div class="inline-content">
            %{--<a href="/startPage/index" >--}%
            <asset:image src="logo_o.png" alt="GoodCards" class="project-logo"/>
            %{--</a>--}%
            <h1>  Отправка печатных открыток и приглашений </h1>
        </div">
    </div>
</header>
<div class="header-style"> </div>
<g:layoutBody/>
%{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>--}%
<footer>
    <div class="container">
        <p>
            Есть вопросы? Пишите:</p>
        <addres>
            <a href="bestrecards.project@gmail.com">bestrecards.project@gmail.com</a>
        </addres>
    </div>
</footer>
</body>
</html>