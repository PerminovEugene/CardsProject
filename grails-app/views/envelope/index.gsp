<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод адреса</title>
  </head>
  <body>
    <!-- Declare Variable -->
    <% name = 'Ф.И.О' %>
    <% post = 'Должность' %>
    <% company = 'Компания' %>
    <% city = 'Город' %>
    <% street = 'Улица' %>
    <% house = 'Дом' %>
    <% housing = 'Корпус' %>
    <% office = 'Офис' %>
    <% postcode = 'Индекс' %>
    <% next = 'Далее' %>
    <% prev = 'Назад' %>
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
              <div class='border'>
                <div class='circle active'>
                  2
                </div>
              </div>
            </div>
            <div class='line'></div>
            <span class='active-text centred'>Ввод адреса</span>
          </li>
          <li>
            <div class='point'>
              <div class='circle'>
                3
              </div>
            </div>
            <div class='line'></div>
            <span class='centred'>Ввод текста и подписи</span>
            <div class='point last'>
              <div class='circle'>
                4
              </div>
            </div>
            <span class='last'>Подтверждение заказа</span>
          </li>
        </ul>
      </div>
    </div>
    <div class='container page'>
      <h1>2. Ввод адреса</h1>
      <h3>Информация будет указана на конверте</h3>
      <g:form action='save' controller='envelope'>
        <div class='sender address-form'>
          <h2>Данные получателя</h2>
          <g:textField name='sender_name' placeholder='$name' value='${en_date.sender_name}' />
          <g:textField name='sender_post' placeholder='$post' value='${en_date.sender_post}' />
          <g:textField name='sender_company' placeholder='$company' value='${en_date.sender_company}' />
          <br />
          <g:textField name='sender_city' placeholder='$city' value='${en_date.sender_city}' />
          <g:textField name='sender_street' placeholder='$street' value='${en_date.sender_street}' />
          <g:textField name='sender_house' placeholder='$house' value='${en_date.sender_house}' />
          <g:textField name='sender_housing' placeholder='$housing' value='${en_date.sender_housing}' />
          <g:textField name='sender_office' placeholder='$office' value='${en_date.sender_office}' />
          <g:textField name='sender_postcode' placeholder='$postcode' value='${en_date.sender_postcode}' />
          <a href='http://www.russianpost.ru/PostOfficeFindInterface/default10.aspx' target='_blank'>Уточнить индекс</a>
        </div>
        <div class='receiver address-form'>
          <h2>Данные отправителя</h2>
          <g:textField name='receiver_name' placeholder='$name' value='${en_date.receiver_name}' />
          <g:textField name='receiver_post' placeholder='$post' value='${en_date.receiver_post}' />
          <g:textField name='receiver_company' placeholder='$company' value='${en_date.receiver_company}' />
          <br />
          <g:textField name='receiver_city' placeholder='$city' value='${en_date.receiver_city}' />
          <g:textField name='receiver_street' placeholder='$street' value='${en_date.receiver_street}' />
          <g:textField name='receiver_house' placeholder='$house' value='${en_date.receiver_house}' />
          <g:textField name='receiver_housing' placeholder='$housing' value='${en_date.receiver_housing}' />
          <g:textField name='receiver_office' placeholder='$office' value='${en_date.receiver_office}' />
          <g:textField name='receiver_postcode' placeholder='$postcode' value='${en_date.receiver_postcode}' />
          <a href='http://www.russianpost.ru/PostOfficeFindInterface/default10.aspx' target='_blank'>Уточнить индекс</a>
        </div>
        <div class='footer'>
          <div class='container'>
            <g:link action='index' class='button button-prev' controller='picturesList'>Назад</g:link>
            <g:actionSubmit action='save' class='button button-next' value='&#1044;a&#1083;&#1077;&#1077;'></g:actionSubmit>
          </div>
        </div>
      </g:form>
    </div>
  </body>
</html>