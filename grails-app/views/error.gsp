<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY error.haml --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>
      <g:if env='development'>Grails Runtime Exception</g:if>
      <g:else>Error</g:else>
    </title>
    <meta content='main' name='layout'>
      <g:if env='development'>
        <asset:stylesheet src='errors.css' />
      </g:if>
    </meta>
  </head>
  <body>
    <g:if env='development'>
      <g:renderException exception='${exception}' />
    </g:if>
    <g:else>
      <ul class='errors'>
        <li>An error has occurred</li>
      </ul>
    </g:else>
  </body>
</html>