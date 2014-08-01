<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY picturesList.haml --%>
<html xmlns='http://www.w3.org/1999/html'>
  <head>
    <title>Выбор открытки</title>
    <meta content='main' name='layout' />
    <script src='js/swapPictures.js' type='text/javascript'></script>
  </head>
  <body>
    <!-- Declare Variable -->
    <% next = 'Далее' %>
    <div class='container page'>
      <div class='change-card-header'>
        <h1>1. Выберите открытку</h1>
      </div>
      <div class='change-block'>
        <div class='list-catalog'></div>
        <div class='pictures'>
          <ul id='list' name='list'>
            <li name='picture_li'>
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' id="picture'" />
            </li>
          </ul>
        </div>
      </div>
      <div class='preview-block'>
        <img id='picture-preview' src='${session._picture}' />
      </div>
    </div>
    <div class='footer footer-absolute'>
      <div class='container'>
        <button class='button button-next' id='next-step-button' name='next_step_button' value='next_step'>Далее</button>
      </div>
    </div>
  </body>
</html>