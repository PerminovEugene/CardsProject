<%-- DO NOT MODIFY THIS FILE, IT IS AUTOMATICALLY GENERATED. INSTEAD MODIFY index.haml --%>
<!DOCTYPE html>
<html>
  <head>
    <meta content='main' name='layout' />
    <title>Админка</title>
    <script src='../js/hideLinkForAdmin.js' type='text/javascript'></script>
  </head>
  <body>
    <div class='big-container big-page page'>
      <g:form action='update' class='big-container' controller='adminPanel'>
        <table class='admin-table'>
          <thead>
            <tr>
              <td>№</td>
              <td>Изображение</td>
              <td>Отправитель</td>
              <td>Получатель</td>
              <td>Текст</td>
              <td>Подпись</td>
              <td>Дата создания</td>
              <td>Статус</td>
              <td></td>
            </tr>
          </thead>
          <g:each in='${cards}' var='item'>
            <tr>
              <td>${item.id}</td>
              <td>
                <img src='../${item.picture.path}' />
              </td>
              <td>${item.user.company.name}, г.${item.user.company.address.city} </br> ул.${item.user.company.address.street}, д.${item.user.company.address.house} корпус ${item.user.company.address.housing} оффис ${item.user.company.address.office},</br> ${item.user.company.address.postCode}</td>
              <td>${item.company.name}, г.${item.company.address.city} </br> ул.${item.company.address.street}, д.${item.company.address.house} корпус ${item.company.address.housing} оффис ${item.company.address.office},</br> ${item.company.address.postCode}</td>
              <td>${item.text}</td>
              <td>${item.sign}</td>
              <td>${item.created}</td>
              <td>
                <input name='cardId' type='hidden' value='${item.id}' />
                <select name='state' size='1'>
                  <g:if test='${item.state == "MODERATION"}'>
                    <option selected='selected' value='MODERATION'>На модерации</option>
                  </g:if>
                  <g:else>
                    <option value='MODERATION'>На модерации</option>
                  </g:else>
                  <g:if test='${item.state == "BANED"}'>
                    <option selected='selected' value='BANED'>Отклонена</option>
                  </g:if>
                  <g:else>
                    <option value='BANED'>Отклонена</option>
                  </g:else>
                  <g:if test='${item.state == "PRINTED"}'>
                    <option selected='selected' value='PRINTED'>В печати</option>
                  </g:if>
                  <g:else>
                    <option value='PRINTED'>В печати</option>
                  </g:else>
                  <g:if test='${item.state == "SENDED"}'>
                    <option selected='selected' value='SENDED'>Отправлена</option>
                  </g:if>
                  <g:else>
                    <option value='SENDED'>Отправлена</option>
                  </g:else>
                </select>
              </td>
              <td>
                <g:pdfLink pdfAction='demo2' pdfController='adminPanel' pdfId='${item.id}'>
                  Скачать
                </g:pdfLink>
              </td>
            </tr>
          </g:each>
        </table>
        <div class='footer'>
          <g:submitButton class='button button-prev' name='submit' value='Update'></g:submitButton>
          <g:link action='exit' class='button button-next' controller='adminPanel'>Exit</g:link>
        </div>
      </g:form>
    </div>
  </body>
</html>