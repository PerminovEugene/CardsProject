<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Cards</title>
  </head>
  <body>
    <h1>2. Ввод адреса</h1>
    <g:form action='save' controller='envelope'>
      <label>Адрес доставки</label>
      <g:textField name='sender_name' placeholder='&#1060;&#1072;&#1084;&#1080;&#1083;&#1080;&#1103;, &#1080;&#1085;&#1080;&#1094;&#1080;&#1072;&#1083;&#1099; &#1087;&#1086;&#1083;&#1091;&#1095;&#1072;&#1090;&#1077;&#1083;&#1103;' value='${en_date.sender_name}' />
      <g:textField name='sender_company' value='${en_date.sender_company}' />
      <br />
      <g:actionSubmit value='Save'></g:actionSubmit>
    </g:form>
  </body>
</html>