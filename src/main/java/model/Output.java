package model;

import global.Data;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Nick
 */
public class Output {

    // output list based on search query
    private ArrayList<String> list;

    public Output(Input input, HttpServletRequest request) {
        if (Data.geneMap.isEmpty()) {
            return;
        }

        list = new ArrayList<>();

        for (String gene : input.getGeneList()) {
            list.addAll(Data.geneMap.get(gene));
        }
    }

    public ArrayList<String> getList() {
        return list;
    }
}
