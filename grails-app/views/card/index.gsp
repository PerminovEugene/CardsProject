<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Cards</title>
  </head>
  <body>
    <g:form action='save' controller='card'>
      <label>congratulation</label>
      <br />
      <g:textArea name='text' value='${card.card_text}' />
      <br />
      <label>signature</label>
      <br />
      <g:textArea name='sign' value='${card.card_sign}' />
      <br />
      <g:actionSubmit value='Save'></g:actionSubmit>
    </g:form>
  </body>
</html>