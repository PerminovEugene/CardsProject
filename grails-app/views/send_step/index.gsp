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
          <h1>Ваша открытка отправляется</h1>
        </div>
        <div class='send_logo'>
          <img id='picture_send_logo' src='/CardsProject/assets/send_step/airoplane.png' />
        </div>
        <h1 id='message_take_email'>Чтобы знать о статусе письма оставте свой емэйл</h1>
        <div class='subscribe_block'>
          <a href='#'>
            <img src='/CardsProject/assets/send_step/facebook.png' />
          </a>
        </div>
        <g:link action='toStart' class='button button-prev'>в начало</g:link>
        <g:link action='toMainPage' class='button button-prev'>на главную страничку</g:link>
      </div>
    </div>
  </body>
</html>