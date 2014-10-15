<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>Добро пожаловать</title>
    <meta content='header' name='layout' />
  </head>
  <body>
    <div class='container-top-landing'>
      <div class='container'>
        <ul class='list-height'>
          <li class='feature-block'>
            <img src='/assets/StartPage/Ikon_medal.png' />
            <p>Не знаете, как лучше пригласить важных персон на событие?</p>
            <p class='blue-text'>Создайте эксклюзивное приглашение, заказав у нас индивидуальный дизайн и курьерскую доставку.</p>
          </li>
          <li class='feature-block'>
            <img src='/assets/StartPage/Ikon_love.png' />
            <p>Думаете, как поздравить бизнес — партнёров с праздником?</p>
            <p class='blue-text'>Красивая печатная открытка - это простой способ передать человеку, что он значит для Вас.</p>
          </li>
          <li class='feature-block'>
            <img src='/assets/StartPage/Ikon_letter.png' />
            <p>Нет времени <br/> повысить лояльность клиентов?</p>
            <p class='blue-text'>Мы сделаем это, пока Вы занимаетесь бизнесом. Создадим и отправим открытку или приглашение.</p>
          </li>
        </ul>
      </div>
    </div>
    <div class='container-form-landing'>
      <div class='container'>
        <h1>Оставьте заявку и наш менеджер свяжется с вами</h1>
        <g:form action='saveFromStart' class='request-form js-request-form' controller='requester'>
          <fieldset class='left-block'>
            <legend>1. Что Вы хотели бы создать?</legend>
            <div class='radio-block'>
              <g:radio class='radio-style js-group-radio-1' id='Cards' name='whatSendRadio' type='radio" :cheked =&gt; "checked' value='Cards' />
              <img src='/assets/StartPage/radio-off.jpg' />
              <label class='text-near-radio' for='Cards'>Открытки</label>
              <g:radio class='radio-style js-group-radio-1' id='Invites' name='whatSendRadio' type='radio" :cheked =&gt; "checked' value='Invites' />
              <label class='text-near-radio' for='Invites'>Приглашения</label>
              <br />
            </div>
            <legend>2. Они будут персональные?</legend>
            <div class='radio-block'>
              <g:radio class='radio-style js-group-radio-2 double-line-radioStyle' id='Nominal' name='personalSendRadio' type='radio" :cheked =&gt; "checked' value='Nominal' />
              <label class='text-near-radio' for='Nominal'>Да на них будут указаны конкретные ФИО человека</label>
              <br />
              <g:radio class='radio-style js-group-radio-2' id='Noname' name='personalSendRadio' type='radio" :cheked =&gt; "checked' value='Noname' />
              <label class='text-near-radio' for='Noname'>Нет они будут безымянные</label>
              <br />
            </div>
            <legend>3. Какой способ доставки Вам необходим?</legend>
            <div class='radio-block'>
              <g:radio class='radio-style double-line-radioStyle js-group-radio-3' id='Personal' name='methodOfDeliveryRadio' type='radio" :cheked =&gt; "checked' value='Personal' />
              <label class='text-near-radio' for='Personal'>Курьером по конкретным адресам и определенным людям</label>
              <br />
              <g:radio class='radio-style double-line-radioStyle js-group-radio-3' id='Spam' name='methodOfDeliveryRadio' type='radio" :cheked =&gt; "checked' value='Spam' />
              <label class='text-near-radio' for='Spam'>Безадресное распространение для определенной целевой аудитории</label>
            </div>
          </fieldset>
          <fieldset class='right-block'>
            <legend>Ваше имя</legend>
            <g:textField class='input-size-big input-view-no-border' name='request_name' placeholder='$name' />
            <legend>Ваш телефон</legend>
            <g:textField class='input-size-big input-view-no-border half-obligatory-field' name='request_phone' placeholder='$phone' />
            <legend>Ваш e-mail</legend>
            <g:textField class='input-size-big input-view-no-border half-obligatory-field' name='request_email' placeholder='$email' />
            <legend>Нужно заполнить одно из полей или оба "Ваш телефон" и "Ваш e-mail"</legend>
            <a class='big-orange-button js-submit-request-form'>Отправить заявку</a>
            <input class='js-hide-session-info-input' type='text' value='${session.start_memory_form}' />
          </fieldset>
        </g:form>
      </div>
    </div>
    <div class='container-bottom-landing'>
      <div class='container'>
        <ul>
          <li class='action-block'>
            <p>Если Вы хотите отправить одну открытку конкретному адресату, то воспользуйтесь сервисом BestReCards и сделайте это за несколько шагов</p>
            <g:link action='index' class='blue-little-button' controller='picturesList'>Создать открытку</g:link>
            <img src='/assets/StartPage/Ikon_fly.png' />
          </li>
          <li class='action-block'>
            <p>Скоро будут добавлены новые функции! Подпишитесь и узнайте о новинках и акциях первыми!</p>
            <g:textField class='input-size-medium input-view' name='subscribeEmail' onkeydown='javascript:if(13==event.keyCode){return false;}' placeholder='E-mail' />
            <img src='/assets/StartPage/Ikon_vsklznaki.png' />
            <g:link action='saveEmail' class='blue-little-button js-submit-send-email' controller='subscribe'>Подписаться</g:link>
          </li>
        </ul>
      </div>
    </div>
  </body>
</html>