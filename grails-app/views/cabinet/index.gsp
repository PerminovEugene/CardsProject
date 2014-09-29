<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Личный кабинет</title>
    <script src='../js/userInfo.js' type='text/javascript'></script>
    <script src='../js/handlebars/handlebars.js' type='text/javascript'></script>
    <script src='/assets/cabinet.js' type='text/javascript'></script>
  </head>
  <body>
    <!-- Declare Variable -->
    <% name = 'Ф.И.О*' %>
    <% post = 'Должность' %>
    <% company = 'Компания*' %>
    <% city = 'Город*' %>
    <% street = 'Улица*' %>
    <% house = 'Дом*' %>
    <% housing = 'Корпус' %>
    <% office = 'Офис' %>
    <% postcode = 'Индекс*' %>
    <% next = 'Далее' %>
    <% prev = 'Назад' %>
    <div class='tabs-row'>
      <div class='container'>
        <div class='tabs'>
          <div class='tab js-user-info active-tab'>
            <span>Личные данные</span>
          </div>
          <div class='tab js-user-cards'>
            <span>История заказов</span>
          </div>
        </div>
      </div>
    </div>
    <div class='container big-page page'>
      <g:form action='updateUserInfo' class='cabinet-form js-form js-cabinet-form' controller='cabinet' enctype='multipart/form-data'>
        <div class='address-form'>
          <h2>Данные указанные на конверте</h2>
          <g:textField class='wide-input name js-name obligatory-field' name='name' placeholder='$name' />
          <g:textField class='wide-input post js-post' name='post' placeholder='$post' />
          <g:textField class='wide-input company js-company obligatory-field' name='company' placeholder='$company' />
          <br />
          <g:textField class='wide-input city js-city obligatory-field' name='city' placeholder='$city' />
          <g:textField class='wide-input street js-street obligatory-field' name='street' placeholder='$street' />
          <g:textField class='small-input house js-house obligatory-field js-home-validation' name='house' placeholder='$house' />
          <g:textField class='small-input housing js-housing' name='housing' placeholder='$housing' />
          <g:textField class='small-input office js-office' name='office' placeholder='$office' />
          <g:textField class='small-input postcode js-postcode obligatory-field js-postcode-validation' name='postcode' placeholder='$postcode' />
        </div>
        <div class='logo-form'>
          <img class='logo-preview js-logo-preview' />
          <input class='file js-file' id='logo' name='logo' type='file' />
        </div>
        <div class='footer'>
          <a class='button button-next js-submit'>Сохранить</a>
          <span class='error-text js-error'></span>
        </div>
      </g:form>
      <div class='cabinet-table js-table hide'>
        <table>
          <thead>
            <tr>
              <th>
                Открытка
              </th>
              <th>
                Адресат
              </th>
              <th>
                Дата создания
              </th>
              <th>
                Статус
              </th>
            </tr>
          </thead>
          <tbody class='js-tbody'>
            <script id='table-template' type='text/x-handlebars-template'>
              {{#each cards}}
              <tr>
                <td>
                  <img src='../{{picture}}' />
                </td>
                <td>
                  {{receiver}}
                  <br />
                  {{post}}
                  <br />
                  {{company}}
                  <br />
                  {{address.city}}, {{address.street}}, {{address.house}}, {{address.housing}}
                  <br />
                  {{address.office}}
                  <br />
                  {{address.postCode}}
                </td>
                <td>{{created}}</td>
                <td>{{state}}</td>
              </tr>
              {{/each}}
            </script>
          </tbody>
        </table>
        <div class='footer'>
          <g:link action='index' class='button button-center' controller='picturesList'>
            Создать еще открытку
          </g:link>
        </div>
      </div>
    </div>
  </body>
</html>