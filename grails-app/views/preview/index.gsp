<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Preview</title>
  </head>
  <body>
    <h1>4. Подтверждение заказа</h1>
    <div class='card-face'>
      <h3>Лицевая сторона</h3>
      <div class='card-view'>
        <img src='' />
      </div>
    </div>
    <div class='card-back'>
      <h3>Обратная сторона</h3>
      <div class='card-view'>
        ${session.card_data.card_text}
        ${session.card_data.card_sign}
      </div>
    </div>
    <div class='envelope'>
      <h3>Конверт с указанием адресов</h3>
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
      <span>Печать на гофрированной бумаге в три слоя,</span>
      <Span>заботливо поглаженное на прощание</Span>
    </div>
    <g:link action='index' controller='card'>Назад</g:link>
    <g:link action='index' controller='tester'>Все правильно. Отправить</g:link>
  </body>
</html>