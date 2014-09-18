<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html xmlns='http://www.w3.org/1999/html'>
  <head>
    <title>Выбор открытки</title>
    <meta content='main' name='layout' />
    <script src='../js/swapPictures.js' type='text/javascript'></script>
  </head>
  <body>
    <!-- Declare Variable -->
    <% next = 'Далее' %>
    <div class='nav'>
      <div class='container'>
        <ul>
          <li>
            <div class='point'>
              <div class='border'>
                <div class='circle active'>
                  1
                </div>
              </div>
            </div>
            <div class='line'></div>
          </li>
          <li>
            <div class='point'>
              <div class='circle'>
                2
              </div>
            </div>
            <div class='line'></div>
          </li>
          <li>
            <div class='point'>
              <div class='circle'>
                3
              </div>
            </div>
            <div class='line'></div>
            <div class='point last'>
              <div class='circle'>
                4
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class='mail-style'></div>
    <div class='container page'>
      <div class='change-card-header'>
        <h1>Выберите открытку</h1>
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
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' />
            </li>
            <li name='picture_li'>
              <img class='picture' id='picture' />
            </li>
          </ul>
        </div>
      </div>
      <div class='preview-block'>
        <img id='picture-preview' src='${session._picture}' />
      </div>
      <g:form action='save' class='js-form' controller='picturesList' enctype='multipart/form-data'>
        <g:hiddenField class='hidden-path' name='path'></g:hiddenField>
        <g:hiddenField class='hidden-id' name='id'></g:hiddenField>
        <div class='footer'>
          <div class='form-style'>
            Автор открыток: Ева Рупенко
          </div>
          <g:link action='indexFromPicturesList' class='button-feedback' controller='requester'>Заказать индивидуальный дизайн</g:link>
          <a class='button button-next js-submit'>Далее</a>
          <span class='error-text js-error'>
            <!-- .footer.footer-absolute -->
            <!-- .container -->
            <!-- %button#next-step-button.button.button-next{:name => "next_step_button", :value => "next_step"} Готово -->
          </span>
        </div>
      </g:form>
    </div>
  </body>
</html>