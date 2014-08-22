<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Simple PDF demo2</title>
    <style>
      @page {
          size: 154mm 106mm;  /* width height */
          margin: 0mm;
          padding: 0mm;
      }
      body {
          width: 154mm;
          margin: 0mm;
          padding: 0mm;
      }
      .face {
          margin: 3mm;
          margin-bottom: -4mm;
      }
      .back {
          margin: 3mm;
      }
      .text {
          width: 143mm;
          height: 67mm;
          font-family: Oranienbaum-Regular;
          font-size: 18px;
          padding: 2mm;
          border-bottom: 2px solid #e0e0e0;
      }
      .footer{
          width: 152mm;
          margin-left: -2mm;
          border-spacing: 2mm 0mm;
          margin-bottom: -2mm;
      }
      .logo {
          width: 43mm;
          margin-right: 1mm;
      }
      .sign {
          font-size: 18px;
          width: 98mm;
          padding: 2mm;
          vertical-align: top;
          font-family: Oranienbaum-Regular;
      }
      .logo, .sign, .text {
          /*border: 0.5mm dashed #e0e0e0;*/
      }
      .logo, .sign {
          height: 25mm;
      }
    </style>
  </head>
  <body>
    <img class = "face" width="148mm" height="100mm" src="/CardsProject/${picture}" alt="cardPicture" title="cardPicture" />
    <div class="back" style="page-break-before:always">
        <div class = "text">${card.text}</div>
        %{--<div class="footer">--}%
            %{--<div class = "logo"><img width="100%" src="/CardsProject/${logo}" alt="cardPicture" title="cardPicture" /></div>--}%
            %{--<div class = "sign">${card.sign}</div>--}%
        %{--</div>--}%
        <table class="footer">
            <tr>
            <td class = "logo"><img width="100%" src="/CardsProject/${logo}" alt="cardPicture" title="cardPicture" /></td>
            <td class = "sign">${card.sign}</td>
            </tr>
        </table>
    </div>
  </body>
</html>
