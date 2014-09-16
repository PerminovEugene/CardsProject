<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Simple PDF demo2</title>
    <style>
      .sample_table {
        width:60%;
        background-color:#b2b2b2;
      }
      .sample_table th {
        text-align:center;
        text-decoration:underline;
      }
      .sample_table td {
        padding:7px;
        background-color: #fff;
      }
      .small_text {
        font-size:8pt;
      }
      @page {
          size: 8.5in 6.1in;  /* width height */
          margin: 0in;
      }
    </style>
  </head>
  <body>
    <img width="100%" src="/${name}" alt="cardPicture" title="cardPicture" />
    <div class="head" style="page-break-before:always">
       ${text}
    </div>
  </body>
</html>
