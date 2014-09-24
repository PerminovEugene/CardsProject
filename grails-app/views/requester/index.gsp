<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод адреса</title>
  </head>
  <body>
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
      <h1>Заполните одно из полей, и наш менеджер с вами свяжется</h1>
      <g:form action='save' class='js-form' controller='requester'>
        <div class='sender address-form'>
          <h2 class='sender_words'>Ваше имя</h2>
          <g:textField class='name wide-input' name='request_name' placeholder='Name' />
          <h2 class='sender_words'>Ваш телефон</h2>
          <g:textField class='name wide-input' name='request_phone' placeholder='Phone' />
          <br />
          <h2 class='sender_words'>Ваш e-mail</h2>
          <br />
          <g:textField class='post wide-input' name='request_email' placeholder='E-mail' />
          <g:radio class='radioStyle' name='radio-1' type='radio" :cheked =&gt; "checked' value='1' />
          Открытки
          <g:radio name='radio-1' type='radio" :cheked =&gt; "checked' value='1' />
          Приглашения
          <br />
          <g:radio class='radioStyle' name='radio-2' type='radio" :cheked =&gt; "checked' value='2' />
          Да на них будут указаны конкретные ФИО человека
          <g:radio name='radio-2' type='radio" :cheked =&gt; "checked' value='2' />
          Нет они будут безымянные
          <br />
          <g:radio name='radio-2' type='radio" :cheked =&gt; "checked' value='2' />
          Курьером по конкретным адресам и определенным людям
          <g:radio name='radio-2' type='radio" :cheked =&gt; "checked' value='2' />
          Безадресное распространение для определенной целевой аудитории
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