<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Cards</title>
  </head>
  <body>
    <!-- Declare Variable -->
    <% text = 'Ввести текст сообщения' %>
    <% sign = 'Подписаться (Вы можете указать ФИО, должность, название Вашей компании и контакты)' %>
    <g:form action='save' controller='card' enctype='multipart/form-data'>
      <br />
      <g:textArea name='card_text' placeholder='$text' value='${card.card_text}' />
      <br />
      <g:textArea name='card_sign' placeholder='$sign' value='${card.card_sign}' />
      <br />
      <input id='logo' name='logo' type='file' />
      <g:link action='index' controller='envelope'>Назад</g:link>
      <g:actionSubmit action='save' value='&#1044;&#1072;&#1083;&#1077;&#1077;'></g:actionSubmit>
    </g:form>
  </body>
</html>