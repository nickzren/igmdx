<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>IGMDx</title>

        <meta name="description" content="IGMDx">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="canonical" href="http://igmdx.org/">

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/jquery-latest.min.js"></script>    
        <script src="js/bootstrap.min.js"></script>
        <script src="js/font-awesome.min.js"></script>
        <script src="js/jquery.tablesorter.js"></script>
        <script src="js/jquery.tablesorter.widgets.js"></script>
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">

                <div class="jumbotron" style="padding:20px 40px 20px 50px">
                    <h2>Data Browser
                    </h2>

                    <div class="row">
                        <div class="col-md-10">
                            <form class="form-search" action="Search">
                                <div class="input-group">
                                    <input name="query" class="form-control input-lg tt-input"
                                           type="text" placeholder="Search for a gene or multiple genes (Comma-delimited)" >
                                    <div class="input-group-btn">
                                        <button class="btn btn-default input-lg tt-input" 
                                                type="submit">
                                            <i class="glyphicon glyphicon-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <p class="text-muted" style="margin-left: 5px">
                        Examples - 
                        Gene: <a href="Search?query=SCN1A">SCN1A</a>, 
                        Genes: <a href="Search?query=COL11A1,GNB1,NGLY1,SCN1A,SCN2A">COL11A1,GNB1,NGLY1,SCN1A,SCN2A</a>
                    </p>
                </div>

                <%@include file="result.jsp" %>  
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>