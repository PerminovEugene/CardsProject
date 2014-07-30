<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Cards</title>
  </head>
  <body>
    <g:each in='${cards}' status='i' var='card'>
      <p>
        № ${card.id}.
        Text: ${card.text}
        <br />
        Signature: ${card.sign}
      </p>
      <br />
    </g:each>
    <g:form action='save' controller='card'>
      <label>congratulation</label>
      <br />
      <g:textArea name='text' />
      <br />
      <label>signature</label>
      <br />
      <g:textArea name='sign' />
      <br />
      <g:actionSubmit value='Save'></g:actionSubmit>
    </g:form>
  </body>
</html>