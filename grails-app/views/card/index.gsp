<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод текста</title>
  </head>
  <body>
    <!-- Declare Variable -->
    <% text = '  Введите текст поздравления (максимум 650 символов)' %>
    <% sign = ' Подпишитесь, оставьте контактные данные (максимум 250 символов' %>
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
          </li>
          <li>
            <div class='point'>
              <div class='circle active'>
                2
              </div>
            </div>
            <div class='line active'></div>
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
            <div class='point last'>
              <div class='circle'>
                4
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class='mail-style'></div>
    <div class='container page'>
      <h1>Заполните обратную сторону</h1>
      <g:form action='save' class='js-form' controller='card' enctype='multipart/form-data'>
        <div class='card'>
          <g:textArea class='text' name='card_text' placeholder='$text' value='${session.currentCard.text}' />
          <input class='file' id='logo' name='logo' type='file' value='${session._logo}' />
          <g:textArea class='sign' name='card_sign' placeholder='$sign' value='${session.currentCard.sign}' />
        </div>
        <div class='footer'>
          <g:link action='index' class='button button-prev' controller='envelope'>На шаг назад</g:link>
          <a class='button button-next js-submit'>Далее</a>
          <span class='error-text js-error'></span>
        </div>
      </g:form>
    </div>
  </body>
</html>