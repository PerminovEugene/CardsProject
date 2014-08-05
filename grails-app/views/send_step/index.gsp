<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html xmlns='http://www.w3.org/1999/html'>
  <head>
    <title>Выбор открытки</title>
    <meta content='main' name='layout' />
    <script src='/CardsProject/assets/popup_registration.js' type='text/javascript'></script>
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
        <button id='registration_button' name='registration_button' value='registration_button'>
          зарегистрироваться
        </button>
        <div class='subscribe_block'>
          <a href='#'>
            <img src='/CardsProject/assets/send_step/facebook.png' />
          </a>
        </div>
        <g:link action='toStart' class='button button-prev'>в начало</g:link>
      </div>
    </div>
    <div class='popup_block' id='popup_block'>
      <div class='popup_content' id='popup_content'>
        <h3>заполните поля для регистрации</h3>
        <input id='mail' placeholder='&#1077;&#1084;&#1101;&#1081;&#1083;' type='email' />
        <input id='pass' placeholder='&#1087;&#1072;&#1088;&#1086;&#1083;&#1100;' type='password' />
        <button id='send_reg_button' name='send_reg_button' value='send_reg_button'>
          отправить
        </button>
      </div>
    </div>
  </body>
</html>