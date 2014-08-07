<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод текста</title>
  </head>
  <body>
    <!-- Declare Variable -->
    <% text = 'Ввести текст сообщения' %>
    <% sign = 'Подписаться (Вы можете указать ФИО, должность, название Вашей компании и контакты)' %>
    <div class='nav'>
      <div class='container'>
        <ul>
          <li>
            <div class='point'>
              <div class='circle active'>
                1
              </div>
            </div>
            <div class='line active'></div>
            <span class='active-text'>Выбор открытки</span>
          </li>
          <li>
            <div class='point'>
              <div class='circle active'>
                2
              </div>
            </div>
            <div class='line active'></div>
            <span class='active-text centred'>Ввод адреса</span>
          </li>
          <li>
            <div class='point'>
              <div class='border'>
                <div class='circle active'>
                  3
                </div>
              </div>
            </div>
            <div class='line'></div>
            <span class='active-text centred'>Ввод текста и подписи</span>
            <div class='point last'>
              <div class='circle'>
                4
              </div>
            </div>
            <span class='last'>Подтверждение заказа</span>
          </li>
        </ul>
      </div>
    </div>
    <div class='container page'>
      <h1>3. Ввод текста и подписи</h1>
      <g:form action='save' controller='card' enctype='multipart/form-data'>
        <div class='card'>
          <g:textArea class='text' name='card_text' placeholder='$text' value='${session.currentCard.text}' />
          <input class='file' id='logo' name='logo' type='file' />
          <g:textArea class='sign' name='card_sign' placeholder='$sign' value='${session.currentCard.sign}' />
        </div>
        <div class='footer'>
          <g:link action='index' class='button button-prev' controller='envelope'>Назад</g:link>
          <g:actionSubmit action='save' class='button button-next' value='&#1044;&#1072;&#1083;&#1077;&#1077;'></g:actionSubmit>
        </div>
      </g:form>
    </div>
  </body>
</html>