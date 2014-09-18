<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод адреса</title>
  </head>
  <body>
    <div class='mail-style'></div>
    <div class='container page'>
      <h1>Заполните одно из полей, и наш менеджер с вами свяжется</h1>
      <g:form action='save' class='js-form' controller='requester'>
        <div class='sender address-form'>
          <h2 class='sender_words'>Ваше имя</h2>
          <g:textField class='name wide-input' name='request_name' placeholder='Name' />
          <h2 class='sender_words'>Ваш телефон</h2>
          <g:textField class='name wide-input' name='request_phone' placeholder='Phone' />
          <br />
          <h2 class='sender_words'>Ваш e-mail</h2>
          <g:textField class='post wide-input' name='request_email' placeholder='E-mail' />
        </div>
        <div class='footer'>
          <div class='container'>
            <g:link action='toPreviousPage' class='button button-prev'>Вернуться назад</g:link>
            <a class='button button-next js-submit'>Отправить заявку</a>
            <span class='error-text js-error'></span>
          </div>
        </div>
      </g:form>
    </div>
  </body>
</html>