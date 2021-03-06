<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод адреса</title>
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
    <% office = 'Квартира/Офис' %>
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
      <h1>Введите адреса</h1>
      <g:form action='save' class='js-form' controller='envelope'>
        <div class='sender address-form'>
          <h2 class='sender_words'>От кого</h2>
          <g:textField class='name wide-input obligatory-field' name='sender_name' placeholder='$name' value='${session.companySender.sender.name}' />
          <g:textField class='post wide-input' name='sender_post' placeholder='$post' value='${session.companySender.sender.post}' />
          <g:textField class='company wide-input obligatory-field' name='sender_company' placeholder='$company' value='${session.companySender.name}' />
          <br />
          <g:textField class='city wide-input obligatory-field' name='sender_city' placeholder='$city' value='${session.companySender.address.city}' />
          <g:textField class='street wide-input obligatory-field' name='sender_street' placeholder='$street' value='${session.companySender.address.street}' />
          <g:textField class='house small-input obligatory-field js-home-validation' name='sender_house' placeholder='$house' value='${session.companySender.address.house}' />
          <g:textField class='housing small-input' name='sender_housing' placeholder='$housing' value='${session.companySender.address.housing}' />
          <g:textField class='office small-input' name='sender_office' placeholder='$office' value='${session.companySender.address.office}' />
          <g:textField class='postcode obligatory-field js-postcode-validation' name='sender_postcode' placeholder='$postcode' value='${session.companySender.address.postcode}' />
          <a href='http://www.russianpost.ru/PostOfficeFindInterface/default10.aspx' target='_blank'>Уточнить индекс</a>
        </div>
        <div class='receiver address-form'>
          <h2 class='sender_words'>Кому</h2>
          <g:textField class='name wide-input obligatory-field' name='receiver_name' placeholder='$name' value='${session.companyReceiver.receiver.name}' />
          <g:textField class='post wide-input' name='receiver_post' placeholder='$post' value='${session.companyReceiver.receiver.post}' />
          <g:textField class='company wide-input obligatory-field' name='receiver_company' placeholder='$company' value='${session.companyReceiver.name}' />
          <br />
          <g:textField class='city wide-input obligatory-field' name='receiver_city' placeholder='$city' value='${session.companyReceiver.address.city}' />
          <g:textField class='street wide-input obligatory-field' name='receiver_street' placeholder='$street' value='${session.companyReceiver.address.street}' />
          <g:textField class='house small-input obligatory-field js-home-validation' name='receiver_house' placeholder='$house' value='${session.companyReceiver.address.house}' />
          <g:textField class='housing small-input' name='receiver_housing' placeholder='$housing' value='${session.companyReceiver.address.housing}' />
          <g:textField class='office small-input' name='receiver_office' placeholder='$office' value='${session.companyReceiver.address.office}' />
          <g:textField class='postcode obligatory-field js-postcode-validation' name='receiver_postcode' placeholder='$postcode' value='${session.companyReceiver.address.postcode}' />
          <a href='http://www.russianpost.ru/PostOfficeFindInterface/default10.aspx' target='_blank'>Уточнить индекс</a>
        </div>
        <div class='footer'>
          <div class='container'>
            <g:link action='index' class='button button-prev' controller='picturesList'>На шаг назад</g:link>
            <g:link action='indexFromEnvelope' class='button-feedback' controller='requester'>Отправить более чем одному адресату</g:link>
            <a class='button button-next js-submit'>Дaлее</a>
            <span class='error-text js-error'></span>
          </div>
        </div>
      </g:form>
    </div>
  </body>
</html>