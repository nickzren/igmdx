package model;

import java.util.ArrayList;
import java.util.Arrays;
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
        
        String[] geneNames = query.replaceAll("\\s+", "").split(",");
        geneList.addAll(Arrays.asList(geneNames));
    }
    
    public String getQuery() {
        return query;
    }
    
    public ArrayList<String> getGeneList() {
        return geneList;
    }
}
