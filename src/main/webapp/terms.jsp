<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Terms</title>

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
                <h3 class="page-header">Terms</h3>

                <h4><i class="fa fa-gavel"></i> Terms of use</h4>
                <p>
                    This website is intended to provide results from whole exome or whole genome sequencing data of CUIMC patients with a wide array 
                    of clinical presentations. The content of the IGMDx is intended strictly for educational and research purposes. 
                    The data derived from this website may not be used for any commercial purpose. 
                    The data from this website may not be replicated on any other website without written consent.
                </p>
            </div>

        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %>  
    </body>
</html>