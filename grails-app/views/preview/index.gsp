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
          <div class='text'>${session.currentCard.text}</div>
          <div class='file'>
            <img src='${session._logo}' width='125' />
          </div>
          <div class='sign'>${session.currentCard.sign}</div>
        </div>
        <span>Печать на гофрированной бумаге в три слоя,</span>
        <Span>заботливо поглаженное на прощание</Span>
      </div>
      <div class='footer'>
        <g:link action='index' class='button button-prev' controller='card'>Назад</g:link>
        <g:link action='saveInDb' class='button button-next'>Все правильно. Отправить</g:link>
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