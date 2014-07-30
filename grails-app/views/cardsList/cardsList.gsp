<%--
  Created by IntelliJ IDEA.
  User: eugenep
  Date: 29.07.14
  Time: 14:36
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>pictureListView</title>
    <link rel="stylesheet" type="text/css" href="../css/pictureList.css" />
    <script type=text/javascript src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
    <g:javascript src="pictureList/swapPictures.js"/>
</head>
<body>

   <button  id="sendButton"  name="sendButton" value="nextPicture"> hi </button>
   <!-- <g:remoteLink controller="cardsList" action="getNextCards"  id="sendButton"  name="sendButton" value="nextPicture/"> hi
    </g:remoteLink>-->
    <div class="picturesBlock">
        <img class="picture1">
        <img class="picture1">
    </div>

</body>
</html>