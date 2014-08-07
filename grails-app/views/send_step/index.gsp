<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html xmlns='http://www.w3.org/1999/html'>
  <head>
    <title>Отправлено</title>
    <meta content='main' name='layout' />
  </head>
  <body>
    <!-- Declare variable -->
    <% pass = 'пароль' %>
    <% mail = 'mail' %>
    <% send_reg = 'отправить' %>
    <div class='container'>
      <div class='content_block'>
        <div id='send_message'>
          <h1>Ваша открытка будет доставлена в течение недели</h1>
        </div>
        <div class='send_logo'>
          <img id='picture_send_logo' src='/CardsProject/assets/send_step/airoplane.png' />
        </div>
        <div class='subscribe_block'>
          <a href='#'></a>
        </div>
        <g:link action='toStart' class='button button-subscribe'>Поделиться</g:link>
        <img src='/CardsProject/assets/send_step/facebook.png' />
        <g:link action='toStart' class='button button-new'>Создать еще открытку</g:link>
        <g:link action='toMainPage' class='button button-main'>Вернуться на главную страничку</g:link>
        <button>{:name => "myButton", :id => "subsribe_button"} gоделиться</button>
      </div>
    </div>
  </body>
</html>
<!-- :onclick => "${remoteFunction(:action => "toStart")}"}Click Here -->