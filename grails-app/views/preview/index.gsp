<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Предпросмотр</title>
    <script src='/CardsProject/assets/popup_registration.js' type='text/javascript'></script>
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
              <div class='circle active'>
                3
              </div>
            </div>
            <div class='line active final'></div>
            <span class='active-text centred'>заполниет обратную сторону</span>
            <div class='point last'>
              <div class='border'>
                <div class='circle active'>
                  4
                </div>
              </div>
            </div>
            <span class='last active-text'>Проверьте</span>
          </li>
        </ul>
      </div>
    </div>
    <div class='container page preview'>
      <h1>4. Проверьте, все правильно?</h1>
      <div class='card-preview card-face'>
        <h2>Лицевая сторона</h2>
        <div class='card-view'>
          <img src='${session._picture}' />
        </div>
      </div>
      <div class='card-preview card-back'>
        <h2>Обратная сторона</h2>
        <div class='card-view card'>
          <div class='text'>${session.currentCard.text}</div>
          <div class='file'>
            <img src='../${session._logo}' width='125' />
          </div>
          <div class='sign'>${session.currentCard.sign}</div>
        </div>
        <span>Печать на гофрированной бумаге в три слоя,</span>
        <Span>заботливо поглажена на прощание</Span>
      </div>
      <div class='footer'>
        <g:link action='index' class='button button-prev' controller='card'>На шаг назад</g:link>
        <button class='button button-next' id='registration_button' name='registration_button' value='registration_button'>
          Готово
        </button>
      </div>
    </div>
    <div class='popup_block' id='popup_block'>
      <div class='popup_content' id='popup_content'>
        <div class='exit_sign'>
          <img />
        </div>
        <h2>Регистрация</h2>
        <h3>Вам не нужно будет повторно вводить данные, в следующий, раз все будет уже сохранено!</h3>
        <div class='mailError'>
          <h3></h3>
        </div>
        <input id='mail' placeholder='&#1042;&#1072;&#1096; e-mail' type='text' />
        <div class='passError'>
          <h3></h3>
        </div>
        <input id='pass' placeholder='&#1055;&#1072;&#1088;&#1086;&#1083;&#1100;' type='password' />
        <button id='send_reg_button' name='send_reg_button' value='send_reg_button'>
          Регистрация
        </button>
      </div>
    </div>
    <div class='popup_block_alert' id='popup_block_alert'>
      <div class='popup_content_alert' id='popup_content_alert'>
        <div class='exit_sign-alert'>
          <img />
        </div>
        <h2>Вы уверены?</h2>
        <h3>Ваши данные не будут сохранены, а открытка не дойдет до адресата</h3>
        <button id='want_send_button' name='want_send_button' value='want_send_button'>
          Нет, я хочу отправить открытку
        </button>
        <button id='didnt_want_send_button' name='didnt_want_send_button' value='didnt_want_send_button'>
          Да я уверен
        </button>
      </div>
    </div>
    <!--
    
      <div class='envelope envelope'>
        <h2>Конверт с указанием адресов</h2>
        <div class='envelop-view envelop-view'>
          <div class='sender sender'>
            <div class='name name'>
              От кого
              <span class='underlined underlined'></span>
              ${session.companySender.sender.name}
            </div>
            <div class='address address'>
              От куда
              <span class='city underlined city underlined'>
                город ${session.companySender.address.city}
              </span>
              <span class='street underlined street underlined'>
                улица ${session.companySender.address.street}
              </span>
              <span class='house underlined house underlined'>
                дом ${session.companySender.address.house}, корпус ${session.companySender.address.housing},
                офис ${session.companySender.address.office}
              </span>
            </div>
            <div class='postcode postcode'>
              ${session.companySender.address.postcode}
            </div>
          </div>
          <div class='receiver receiver'>
            <div class='name name'>
              Кому
              <span class='underlined underlined'></span>
              ${session.companyReceiver.receiver.name}
            </div>
            <div class='address address'>
              Куда
              <span class='city underlined city underlined'>
                город ${session.companyReceiver.address.city}
              </span>
              <span class='street underlined street underlined'>
                улица ${session.companyReceiver.address.street}
              </span>
              <span class='house underlined house underlined'>
                дом ${session.companyReceiver.address.house}, корпус ${session.companyReceiver.address.housing},
                офис ${session.companyReceiver.address.office}
              </span>
            </div>
            <div class='postcode postcode'>
              ${session.companyReceiver.address.postcode}
            </div>
          </div>
          <div class='postcode-main postcode-main'>
            <h1>${session.companyReceiver.address.postcode}</h1>
          </div>
        </div>
      </div>
    
    -->
  </body>
</html>