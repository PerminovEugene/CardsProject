<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html xmlns='http://www.w3.org/1999/html'>
  <head>
    <title>Добро пожаловать</title>
    <meta content='main' name='layout' />
    <script src='/assets/startPage.js' type='text/javascript'></script>
  </head>
  <body>
    <!-- Declare Variable -->
    <% name = 'Ваше имя' %>
    <% phone = 'Ваш телефон' %>
    <% email = 'Ваш e-mail' %>
    <div class='cheat-for-header'></div>
    <div class='mail-style'></div>
    <div id='start-page-top'>
      <div class='content-start-page top-img-style'>
        <div class='feature-block-1 top-style'>
          <img src='/assets/StartPage/Ikon_letter.png' />
          <div class='black-text-in-features'>Некогда повысить лояльность клиентов? Так много других неотложных дел?</div>
          <div class='blue-text-in-features'>Пока вы занимаетесь бизнесом, мы повышаем лояльность ваших клиентов. Создайте открытку, а мы займемся её печатью и отправкой.</div>
        </div>
        <div class='feature-block-1 top-style'>
          <img src='/assets/StartPage/Ikon_love.png' />
          <div class='black-text-in-features'>Не знаете, как показать бизнес - партнёрам, что они важны для вас?</div>
          <div class='blue-text-in-features'>Поздравительная открытка - это простой способ показать партнёру, что он важен для вас.</div>
        </div>
        <div class='feature-block-1 top-style'>
          <img src='/assets/StartPage/Ikon_medal.png' />
          <div class='black-text-in-features'>Не знаете как лучше пригласить важных персон на событие?</div>
          <div class='blue-text-in-features'>Создайте эксклюзивное приглашение для важных персон, заказав индивидуальный дизайн и курьерскую доставку.</div>
        </div>
      </div>
      <div class='startPageForm'>
        <div class='container'>
          <g:form action='saveFromStart' class='js-request-form' controller='requester'>
            <h2>Оставьте заявку и наш менеджер свяжется с вами</h2>
            <div class='form-block-half left-block'>
              <h4>1. Что бы Вы хотели разослать</h4>
              <div class='radio-start-page-block'>
                <g:radio class='radioStyle js-group-radio-1' id='Cards' name='whatSendRadio' type='radio" :cheked =&gt; "checked' value='Cards' />
                <label class='text-near-radio' for='Cards'>Открытки</label>
                <br />
                <g:radio class='radioStyle js-group-radio-1' id='Invites' name='whatSendRadio' type='radio" :cheked =&gt; "checked' value='Invites' />
                <label class='text-near-radio' for='Invites'>Приглашения</label>
                <br />
              </div>
              <h4>2. Они будут персональные?</h4>
              <div class='radio-start-page-block'>
                <g:radio class='radioStyle js-group-radio-2 double-line-radioStyle' id='Nominal' name='personalSendRadio' type='radio" :cheked =&gt; "checked' value='Nominal' />
                <label class='text-near-radio' for='Nominal'>Да на них будут указаны конкретные ФИО человека</label>
                <br />
                <g:radio class='radioStyle js-group-radio-2' id='Noname' name='personalSendRadio' type='radio" :cheked =&gt; "checked' value='Noname' />
                <label class='text-near-radio' for='Noname'>Нет они будут безымянные</label>
                <br />
              </div>
              <h4>3. Как вы хотели бы их разослать?</h4>
              <div class='radio-start-page-block'>
                <g:radio class='radioStyle double-line-radioStyle js-group-radio-3' id='Personal' name='methodOfDeliveryRadio' type='radio" :cheked =&gt; "checked' value='Personal' />
                <label class='text-near-radio' for='Personal'>Курьером по конкретным адресам и определенным людям</label>
                <br />
                <g:radio class='radioStyle double-line-radioStyle js-group-radio-3' id='Spam' name='methodOfDeliveryRadio' type='radio" :cheked =&gt; "checked' value='Spam' />
                <label class='text-near-radio' for='Spam'>Безадресное распространение для определенной целевой аудитории</label>
              </div>
            </div>
            <div class='form-block-half right-block'>
              <h4>Ваше имя</h4>
              <div class='input-start-page-block'>
                <g:textField class='name start-page-input' name='request_name' placeholder='$name' />
                <br />
              </div>
              <h4>Ваш телефон</h4>
              <div class='input-start-page-block'>
                <g:textField class='start-page-input half-obligatory-field' name='request_phone' placeholder='$phone' />
                <br />
              </div>
              <h4>Ваш e-mail</h4>
              <div class='input-start-page-block'>
                <g:textField class='post start-page-input half-obligatory-field' name='request_email' placeholder='$email' />
                <br />
              </div>
              <h5>Нужно заполнить одно из полей или оба "Ваш телефон" и "Ваш e-mail"</h5>
              <a class='main-page-test-button js-submit-request-form'>Отправить заявку</a>
            </div>
          </g:form>
        </div>
      </div>
    </div>
    <div id='start-page-bottom'>
      <div class='content-start-page-bottom bottom-img-style'>
        <div class='feature-block-1 bottom-style'>
          <div class='black-bottom-text left'>Если вы хотите отправить одну открытку конкретному адресату, то воспользуйтесь сервисом BestReCards и сделайте это за несколько шагов</div>
          <g:link action='index' class='blue-little-button' controller='picturesList'>Создать открытку</g:link>
          <img class='left-img' src='/assets/StartPage/Ikon_fly.png' />
        </div>
        <div class='feature-block-1 bottom-style'>
          <div class='black-bottom-text'>Скоро будут добавлены новые функции! Подпишитесь и узнайте о новинках и акциях первыми!</div>
          <g:form action='saveEmail' class='js-form' controller='subscribe'>
            <g:textField class='input-bottom-style' name='subscribeEmail' placeholder='E-mail' />
            <img class='right-img' src='/assets/StartPage/Ikon_vsklznaki.png' />
            <a class='blue-little-button js-submit-send-email'>Подписаться</a>
          </g:form>
        </div>
      </div>
    </div>
  </body>
</html>