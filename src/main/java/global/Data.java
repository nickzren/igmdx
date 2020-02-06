package global;

import com.google.common.collect.Multimap;
import com.google.common.collect.MultimapBuilder;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/**
 *
 * @author nick
 */
public class Data {

    public static final int NA = Integer.MIN_VALUE;
    public static String rootPath = "";
    private final static String SOURCE_DATA = "DiagSeq_and_Neuro_IGMD_V1.csv";

    public static final Multimap<String, String> geneMap = MultimapBuilder.treeKeys().linkedListValues().build();

    public static void init() {
        initGeneMap();
    }

    private static void initGeneMap() {
        if (!geneMap.isEmpty()) {
            return;
        }

        try {
            File file = new File(Data.rootPath + File.separator + SOURCE_DATA);
            FileInputStream fstream = new FileInputStream(file);
            DataInputStream in = new DataInputStream(fstream);
            BufferedReader br = new BufferedReader(new InputStreamReader(in));
            String line;

            boolean isHeader = true;
            while ((line = br.readLine()) != null) {
                if(isHeader) {
                    isHeader = false;
                    continue;
                }
                String[] temp = line.split(",");
                geneMap.put(temp[0].toUpperCase(), line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void generateHTMLGeneList() {
        initGeneMap();

        int counter = 0;
        int row = 0;

        for (String gene : geneMap.keySet()) {
            if (counter % 6 == 0) {
                int nextRow = Math.floorDiv(counter, 6) + 1;
                if (nextRow > row && row != 0) {
                    System.out.println("</div>");
                }

                row++;
                System.out.println("<div class=\"row\">");
            }

            int individualCount = geneMap.get(gene).size();

            System.out.println("<div class=\"col-md-2\"><span class=\"badge\">" + individualCount + "</span> "+ gene + "</div>");

            counter++;
        }

        System.out.println("</div>");
    }

    public static void main(String[] args) {
        generateHTMLGeneList();
    }

}
