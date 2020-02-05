<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Download</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3 class="page-header">Download</h3>

                <div class="row">
                    <div class="col-xs-6 col-md-9">
                        <p>
                            <a href="data/DiagSeq_and_Neuro_IGMD_V1.csv">
                                <i class="fa fa-file"></i>
                                DiagSeq_and_Neuro_IGMD_V1.csv
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>