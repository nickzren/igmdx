package model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Nick
 */
public class Input {

    private ArrayList<String> geneList = new ArrayList<String>();
    private String query;

    public Input(HttpServletRequest request) {
        query = request.getParameter("query").toUpperCase();

        // filter out all invalid input
        if (Pattern.matches("^[A-Z0-9 ,()]+$", query)) {
            String[] geneNames = query.trim().split(",");
            geneList.addAll(Arrays.asList(geneNames));
        } 
    }

    public String getQuery() {
        return query;
    }

    public ArrayList<String> getGeneList() {
        return geneList;
    }
}
