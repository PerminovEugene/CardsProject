<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Preview</title>
  </head>
  <body>
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
      <div class='envelope'>
        <h2>Конверт с указанием адресов</h2>
        <div class='envelop-view'>
          <div class='sender'>
            <div class='name'>
              От кого
              <span class='underlined'></span>
              ${session.envelope_data.sender_name}
            </div>
            <div class='address'>
              От куда
              <span class='city underlined'>
                город ${session.envelope_data.sender_city}
              </span>
              <span class='street underlined'>
                улица ${session.envelope_data.sender_street}
              </span>
              <span class='house underlined'>
                дом ${session.envelope_data.sender_house}, корпус ${session.envelope_data.sender_housing},
                офис ${session.envelope_data.sender_office}
              </span>
            </div>
            <div class='postcode'>
              ${session.envelope_data.sender_postcode}
            </div>
          </div>
          <div class='receiver'>
            <div class='name'>
              Кому
              <span class='underlined'></span>
              ${session.envelope_data.receiver_name}
            </div>
            <div class='address'>
              Куда
              <span class='city underlined'>
                город ${session.envelope_data.receiver_city}
              </span>
              <span class='street underlined'>
                улица ${session.envelope_data.receiver_street}
              </span>
              <span class='house underlined'>
                дом ${session.envelope_data.receiver_house}, корпус ${session.envelope_data.receiver_housing},
                офис ${session.envelope_data.receiver_office}
              </span>
            </div>
            <div class='postcode'>
              ${session.envelope_data.receiver_postcode}
            </div>
          </div>
          <div class='postcode-main'>
            <h1>${session.envelope_data.receiver_postcode}</h1>
          </div>
        </div>
      </div>
      <div class='footer'>
        <g:link action='index' class='button button-prev' controller='card'>Назад</g:link>
        <g:link action='toStart' class='button button-next'>Все правильно. Отправить</g:link>
      </div>
    </div>
  </body>
</html>