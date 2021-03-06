<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Предпросмотр</title>
    <script src='/assets/popupRegistrationAtLastStep.js' type='text/javascript'></script>
    <script src='/assets/preview.js' type='text/javascript'></script>
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
              <div class='circle active'>
                3
              </div>
            </div>
            <div class='line active final'></div>
            <div class='point last'>
              <div class='border'>
                <div class='circle active'>
                  4
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class='mail-style'></div>
    <div class='container page preview'>
      <h1>Проверьте, все ли правильно?</h1>
      <div class='choose-block'>
        <h5>Лицевая сторона</h5>
        <div class='choose-picture js-choose-picture'>
          <img src='${session._picture}' />
        </div>
        <h5>Обратная сторона</h5>
        <div class='choose-picture js-choose-back-picture'>
          <img src='/assets/send_step/demo_sender.png' />
        </div>
        <h5>Конверт</h5>
        <div class='choose-picture js-choose-sender'>
          <img src='/assets/send_step/demo_my_words.png' />
        </div>
      </div>
      <div class='big-preview'>
        <div class='big-picture'>
          <h4>Лицевая сторона</h4>
          <img src='${session._picture}' />
        </div>
        <div class='big-back-picture'>
          <h4>Обратная сторона</h4>
          <div class='big-back-picture-structure'>
            <div class='card-back-view'>${session.currentCard.text}</div>
            <div class='sign-back'>${session.currentCard.sign}</div>
            <div class='file-logo'>
              <img class='js-logo-img-hide' src='../${session._logo}' width='125' />
            </div>
          </div>
        </div>
        <div class='big-destination-card'>
          <h4>Конверт</h4>
          <div class='big-destination-card-structure'>
            <div class='sender-preview-block'>
              <div class='block-h5'>От кого:</div>
              <div class='sender-text'>${session.companySender.sender.name}</div>
              <div class='sender-text'>${session.companySender.sender.post}</div>
              <div class='sender-text'>${session.companySender.name}</div>
              <div class='block-h5'>Откуда:</div>
              <div class='sender-text'>${session.companySender.address.city} ${session.companySender.address.street} ${session.companySender.address.house}</div>
              <div class='sender-text'>${session.companySender.address.housing} ${session.companySender.address.office}</div>
              <div class='sender-code'>${session.companySender.address.postcode}</div>
            </div>
            <div class='mark'></div>
            <div class='big-post-code'>
              <div class='receiver-post-code'>${session.companyReceiver.address.postcode}</div>
            </div>
            <div class='receiver-preview-block'>
              <div class='block-h5'>От кого:</div>
              <div class='sender-text'>${session.companyReceiver.receiver.name}</div>
              <div class='sender-text'>${session.companyReceiver.receiver.post}</div>
              <div class='sender-text'>${session.companyReceiver.name}</div>
              <div class='block-h5'>Откуда:</div>
              <div class='sender-text'>${session.companyReceiver.address.city} ${session.companyReceiver.address.street} ${session.companyReceiver.address.house}</div>
              <div class='sender-text'>${session.companyReceiver.address.housing} ${session.companyReceiver.address.office}</div>
              <div class='sender-code'>${session.companyReceiver.address.postcode}</div>
            </div>
          </div>
        </div>
      </div>
      <div class='footer'>
        <div class='container'>
          <g:link action='index' class='button button-prev' controller='card'>На шаг назад</g:link>
          <g:link action='indexFromPreview' class='button-feedback' controller='requester'>Пожелания по доставке</g:link>
          <button class='button button-next' id='registration_button' name='registration_button' value='registration_button'>
            Готово
          </button>
        </div>
      </div>
    </div>
    <div class='popup_block' id='popup_block'>
      <div class='popup_content' id='popup_content'>
        <div class='popup-style-top'></div>
        <div class='exit_sign'>
          <img />
        </div>
        <h2>Регистрация</h2>
        <h3>Зарегестрировавшись вы сможете заполнить профиль компании отправителя для использования его повторно!</h3>
        <div class='mailError'>
          <h3></h3>
        </div>
        <input class='js-input-email' id='mail' placeholder='&#1042;&#1072;&#1096; e-mail' type='text' />
        <div class='passError'>
          <h3></h3>
        </div>
        <input class='js-input-password' id='pass' placeholder='&#1055;&#1072;&#1088;&#1086;&#1083;&#1100;' type='password' />
        <button id='send_reg_button' name='send_reg_button' value='send_reg_button'>
          Регистрация
        </button>
        <div class='popup-style-down'></div>
      </div>
    </div>
    <div class='popup_block_alert' id='popup_block_alert'>
      <div class='popup_content_alert' id='popup_content_alert'>
        <div class='popup-style-top'></div>
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
        <div class='popup-style-down'></div>
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