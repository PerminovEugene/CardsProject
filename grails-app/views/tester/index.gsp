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
            <g:textField class='input-size input-view' name='subscribeEmail' onkeydown='javascript:if(13==event.keyCode){return false;}' placeholder='E-mail' />
            <img src='/assets/StartPage/Ikon_vsklznaki.png' />
            <g:link action='saveEmail' class='blue-little-button js-submit-send-email' controller='subscribe'>Подписаться</g:link>
          </li>
        </ul>
      </div>
    </div>
  </body>
</html>