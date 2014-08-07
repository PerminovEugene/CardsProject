<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод текста</title>
  </head>
  <body>
    <!-- Declare Variable -->
    <% text = 'Введите текст сообщения' %>
    <% sign = 'Подпишитесь, оставьте контактные данные' %>
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
            <span class='active-text'>Выберите открытку</span>
          </li>
          <li>
            <div class='point'>
              <div class='circle active'>
                2
              </div>
            </div>
            <div class='line active'></div>
            <span class='active-text centred'>Введите адрес</span>
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
            <span class='active-text centred'>Заполните обратную сторону</span>
            <div class='point last'>
              <div class='circle'>
                4
              </div>
            </div>
            <span class='last'>Проверьте</span>
          </li>
        </ul>
      </div>
    </div>
    <div class='container page'>
      <h1>3. Заполните обратную сторону</h1>
      <g:form action='save' controller='card' enctype='multipart/form-data'>
        <div class='card'>
          <g:textArea class='text' name='card_text' placeholder='$text' value='${session.currentCard.text}' />
          <input class='file' id='logo' name='logo' type='file' value='${session._logo}' />
          <g:textArea class='sign' name='card_sign' placeholder='$sign' value='${session.currentCard.sign}' />
        </div>
        <div class='footer'>
          <g:link action='index' class='button button-prev' controller='envelope'>На шаг назад</g:link>
          <g:actionSubmit action='save' class='button button-next' value='&#1043;&#1086;&#1090;&#1086;&#1074;&#1086;'></g:actionSubmit>
        </div>
      </g:form>
    </div>
  </body>
</html>