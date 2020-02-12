<%@page import="model.Gene"%>
<%@page import="java.util.ArrayList"%>
<script type="text/javascript">
    $(function () {
    $.tablesorter.themes.bootstrap = {
    table: 'table table-hover tablesorter',
<!--    iconSortNone: 'glyphicon glyphicon-sort', // class name added to icon when column is not sorted
    iconSortAsc: 'icon-chevron-up glyphicon glyphicon-sort-by-attributes', // class name added to icon when column has ascending sort
    iconSortDesc: 'icon-chevron-down glyphicon glyphicon-sort-by-attributes-alt', // class name added to icon when column has descending sort-->
    };
    });
</script>

<%
    String query = (String) request.getAttribute("query");
    ArrayList<Gene> geneList = (ArrayList<Gene>) request.getAttribute("geneList");

    if (geneList != null) {
%>    
<div class="row">
    <div class="col-md-10">
        <h4>
            <mark><%="Query: " + query%></mark>
        </h4>
    </div>
</div>
<br/>
<%
    if (geneList.isEmpty()) {
%>
<div class="alert alert-warning" style="width:24%">
    No results found from search query.
</div>
<%
} else {
%>
<table id="geneList" class="tablesorter">
    <thead> 
        <tr> 
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    Diagnosis Gene
                </a>
            </th>
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    Genetic Diagnosis CLIA Confirmed?
                </a>
            </th> 
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    Zygosity
                </a>
            </th> 
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    Type of Mutation of Variant A
                </a>
            </th>
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    CLIA ACMG Classification of Variant A
                </a>
            </th>
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    Type of Mutation of Variant B
                </a>
            </th>
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    CLIA ACMG Classification of Variant B
                </a>
            </th>
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip" 
                   title="">
                    Sex
                </a>
            </th>
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip"
                   title="">
                    Age Group
                </a>
            </th>
            <th class="text-center" style="cursor: pointer; vertical-align: middle;">
                <a class="black" data-toggle="tooltip"
                   title="">
                    Phenotype
                </a>
            </th>
        </tr> 
    </thead> 

    <tbody>
        <%
            for (Gene row : geneList) {
        %>
        <tr>
            <%
                for (String column : row.toString().split(",")) {
            %>
            <td class="text-center" style="vertical-align: middle;">
                <%=column%>
            </td>
            <%
                }
            %>
        </tr>
        <%
                }
            }
        %>
    </tbody>
</table>

<%
    }
%>

<script type="text/javascript">
    $(function () {
    $('#geneList').tablesorter({
    theme: "bootstrap",
    headerTemplate: '{content} {icon}',
    widgets: ["uitheme"],
    headers: {
    }
    });

    $('[data-toggle="tooltip"]').tooltip();
    });
</script>
