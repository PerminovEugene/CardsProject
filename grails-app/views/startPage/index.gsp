<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html xmlns='http://www.w3.org/1999/html'>
  <head>
    <title>Добро пожаловать</title>
    <meta content='main' name='layout' />
    <script src='/assets/startPage.js' type='text/javascript'></script>
  </head>
  <body>
    <div class='cheat-for-header'></div>
    <div class='mail-style'></div>
    <div id='start-page'>
      <div class='container'>
        <div class='us-features'>
          <div class='feature-block'>
            <img src='/assets/StartPage/message.png' />
            <h4>Меньше проблем!</h4>
            <h5>Пока вы занимаетесь бизнесом, мы повышаем лояльность ваших клиентов. Создайте открытку, а мы займемся её печатью и отправкой.</h5>
          </div>
          <div class='feature-block'>
            <img src='/assets/StartPage/heart.png' />
            <h4>Просто о важном</h4>
            <h5>Поздравительная открытка - это просто способ показать партнёру, что он важен для вас.</h5>
          </div>
          <div class='feature-block'>
            <img src='/assets/StartPage/circlewithfoot.png' />
            <h4 class='last-h4'>Пригласите лично</h4>
            <h5>Создайте эксклюзивное приглашение для важных персон.</h5>
          </div>
          <div class='main-page-footer'>
            <div class='main-page-reg-button js-reg-main-page'>Зарегистрироваться</div>
            <g:link action='index' class='main-page-test-button' controller='picturesList'>Попробовать</g:link>
          </div>
        </div>
      </div>
    </div>
    <div class='startPageForm'>
      <div class='container'>
        <g:form action='saveFromStart' class='js-form' controller='requester'>
          <h2>Оставте заявку и наш менеджер свяжется с вами</h2>
          <div class='form-block-half'>
            <h4>1. Что бы Вы хотели разослать</h4>
            <div class='radio-start-page-block'>
              <g:radio class='radioStyle' name='whatSendRadio' type='radio" :cheked =&gt; "checked' value='Cards' />
              <div class='text-near-radio'>Открытки</div>
              <br />
              <g:radio class='radioStyle' name='whatSendRadio' type='radio" :cheked =&gt; "checked' value='Invites' />
              <div class='text-near-radio'>Приглашения</div>
              <br />
            </div>
            <h4>2. Они будут персональные?</h4>
            <div class='radio-start-page-block'>
              <g:radio class='radioStyle' name='personalSendRadio' type='radio" :cheked =&gt; "checked' value='Nominal' />
              <div class='text-near-radio'>Да на них будут указаны конкретные ФИО человека</div>
              <br />
              <g:radio class='radioStyle' name='personalSendRadio' type='radio" :cheked =&gt; "checked' value='Noname' />
              <div class='text-near-radio'>Нет они будут безымянные</div>
              <br />
            </div>
            <h4>3. Как вы хотели бы их разослать?</h4>
            <div class='radio-start-page-block'>
              <g:radio class='radioStyle' name='methodOfDeliveryRadio' type='radio" :cheked =&gt; "checked' value='Personal' />
              <div class='text-near-radio'>Курьером по конкретным адресам и определенным людям</div>
              <br />
              <g:radio class='radioStyle' name='methodOfDeliveryRadio' type='radio" :cheked =&gt; "checked' value='Spam' />
              <div class='text-near-radio'>Безадресное распространение для определенной целевой аудитории</div>
            </div>
          </div>
          <div class='form-block-half'>
            <h4>Ваше имя</h4>
            <div class='input-start-page-block'>
              <g:textField class='name start-page-input' name='request_name' placeholder='Name' />
              <br />
            </div>
            <h4>Ваш телефон</h4>
            <div class='input-start-page-block'>
              <g:textField class='obligatory-field start-page-input' name='request_phone' placeholder='Phone' />
              <br />
            </div>
            <h4>Ваш e-mail</h4>
            <div class='input-start-page-block'>
              <g:textField class='post obligatory-field start-page-input' name='request_email' placeholder='E-mail' />
              <br />
            </div>
            <h5>Нужно заполнить одно из полей или оба <<Ваш телефон>> и <<Ваш e-mail>></h5>
            <a class='main-page-test-button js-submit'>Отправить заявку</a>
          </div>
        </g:form>
        <!-- .footer -->
        <!-- .container -->
        <!-- %g:link.button.button-prev{:action=>"toPreviousPage"} Вернуться назад -->
        <!-- %a.button.button-next.js-submit Отправить заявку -->
        <!-- %span.error-text.js-error -->
      </div>
    </div>
  </body>
</html>