<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Ввод текста</title>
  </head>
  <body>
    <!-- Declare Variable -->
    <% text = 'Ввести текст сообщения' %>
    <% sign = 'Подписаться (Вы можете указать ФИО, должность, название Вашей компании и контакты)' %>
    <div class='container page'>
      <h1>3. Ввод текста и подписи</h1>
      <g:form action='save' controller='card' enctype='multipart/form-data'>
        <div class='card'>
          <g:textArea class='text' name='card_text' placeholder='$text' value='${card.card_text}' />
          <input class='file' id='logo' name='logo' type='file' />
          <g:textArea class='sign' name='card_sign' placeholder='$sign' value='${card.card_sign}' />
        </div>
        <div class='footer'>
          <g:link action='index' class='button button-prev' controller='envelope'>Назад</g:link>
          <g:actionSubmit action='save' class='button button-next' value='&#1044;&#1072;&#1083;&#1077;&#1077;'></g:actionSubmit>
        </div>
      </g:form>
    </div>
  </body>
</html>