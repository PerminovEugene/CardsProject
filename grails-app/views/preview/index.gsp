<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Предпросмотр</title>
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
              <div class='circle active'>
                3
              </div>
            </div>
            <div class='line active final'></div>
            <span class='active-text centred'>Ввод текста и подписи</span>
            <div class='point last'>
              <div class='border'>
                <div class='circle active'>
                  4
                </div>
              </div>
            </div>
            <span class='last active-text'>Подтверждение заказа</span>
          </li>
        </ul>
      </div>
    </div>
    <div class='container page preview'>
      <h1>4. Подтверждение заказа</h1>
      <div class='card-preview card-face'>
        <h2>Лицевая сторона</h2>
        <div class='card-view'>
          <img src='${session._picture}' />
        </div>
      </div>
      <div class='card-preview card-back'>
        <h2>Обратная сторона</h2>
        <div class='card-view card'>
          <div class='text'>${session.card_data.card_text}</div>
          <div class='file'>
            <img src='${session._logo}' width='125' />
          </div>
          <div class='sign'>${session.card_data.card_sign}</div>
        </div>
        <span>Печать на гофрированной бумаге в три слоя,</span>
        <Span>заботливо поглаженное на прощание</Span>
      </div>
      <div class='footer'>
        <g:link action='index' class='button button-prev' controller='card'>Назад</g:link>
        <g:link action='toStart' class='button button-next'>Все правильно. Отправить</g:link>
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
              ${session.envelope_data.sender_name}
            </div>
            <div class='address address'>
              От куда
              <span class='city underlined city underlined'>
                город ${session.envelope_data.sender_city}
              </span>
              <span class='street underlined street underlined'>
                улица ${session.envelope_data.sender_street}
              </span>
              <span class='house underlined house underlined'>
                дом ${session.envelope_data.sender_house}, корпус ${session.envelope_data.sender_housing},
                офис ${session.envelope_data.sender_office}
              </span>
            </div>
            <div class='postcode postcode'>
              ${session.envelope_data.sender_postcode}
            </div>
          </div>
          <div class='receiver receiver'>
            <div class='name name'>
              Кому
              <span class='underlined underlined'></span>
              ${session.envelope_data.receiver_name}
            </div>
            <div class='address address'>
              Куда
              <span class='city underlined city underlined'>
                город ${session.envelope_data.receiver_city}
              </span>
              <span class='street underlined street underlined'>
                улица ${session.envelope_data.receiver_street}
              </span>
              <span class='house underlined house underlined'>
                дом ${session.envelope_data.receiver_house}, корпус ${session.envelope_data.receiver_housing},
                офис ${session.envelope_data.receiver_office}
              </span>
            </div>
            <div class='postcode postcode'>
              ${session.envelope_data.receiver_postcode}
            </div>
          </div>
          <div class='postcode-main postcode-main'>
            <h1>${session.envelope_data.receiver_postcode}</h1>
          </div>
        </div>
      </div>
    
    -->
  </body>
</html>