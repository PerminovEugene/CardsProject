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

   %{--<button  id="sendButton"  name="sendButton" value="nextPicture"> hi </button>--}%
   <!-- <g:remoteLink controller="cardsList" action="getNextCards"  id="sendButton"  name="sendButton" value="nextPicture/"> hi
    </g:remoteLink>-->
   <!-- <div class="picturesBlock">
        <img class="picture1">
        <img class="picture2">
        <img class="picture3">
        <img class="picture4">
        <img class="picture5">
        <img class="picture6">
    </div>-->
<div class="container">
   <div class="change_card_header">
        viberete otkritky
   </div>
   <div class="change_block">
       <div class="list_catalog">

       </div>
       <div class="pictures">
           <ul name="list" id="list">
               <li name="picture_li">
                   <img class="picture" >
               </li>
               <li name="picture_li">
                   <img class="picture">
               </li >
               <li name="picture_li">
                   <img class="picture">
               </li>
               <li name="picture_li">
                   <img class="picture">
               </li>
               <li name="picture_li">
                   <img class="picture">
               </li>
               <li name="picture_li">
                   <img class="picture" id="picture'">
               </li>
           </ul>
           <button  id="get_next_button"  name="sendButton" value="next_picture"> next </button>
           <button  id="get_previous_button"  name="sendButton" value="previous_picture"> back </button>
       </div>
   </div>
   <div class="preview_block">
       <img id="picture_preview">
       <button  id="next_step_button"  name="next_step_button" value="next_step"> next step </button>
   </div>

</div>

    %{--list for catalog--}%
%{--<div class="catalog_cards"></div>--}%
%{--<ul class="thems_list">--}%
    %{--<li> cats </li>--}%
     %{--<li> eva </li>--}%
%{--</ul>--}%

</body>
</html>