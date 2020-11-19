package global;

import com.google.common.collect.Multimap;
import com.google.common.collect.MultimapBuilder;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import model.Gene;

/**
 *
 * @author nick
 */
public class Data {

    public static final int NA = Integer.MIN_VALUE;
    public static String rootPath = "";
    private final static String SOURCE_DATA = "igmdx_v1.csv";

    public static final Multimap<String, Gene> geneMap = MultimapBuilder.treeKeys().linkedListValues().build();

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
                if (isHeader) {
                    isHeader = false;
                    continue;
                }
                String[] temp = line.split(",");

                Gene gene = new Gene(temp[0], temp[1], temp[2], temp[3], temp[4],
                        temp[5], temp[6], temp[7], temp[8], temp[9]);

                geneMap.put(gene.getDiagnosisGene().toUpperCase(), gene);
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
            ArrayList<Gene> list = new ArrayList<>(geneMap.get(gene));
            String geneName = list.get(0).getDiagnosisGene();

            System.out.println("<div class=\"col-md-2\"><span class=\"badge\">" + individualCount + "</span> " + geneName + "</div>");

            counter++;
        }

        System.out.println("</div>");
    }

    public static void main(String[] args) {
        generateHTMLGeneList();
    }

}
