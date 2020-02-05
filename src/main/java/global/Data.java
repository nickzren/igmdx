package global;

import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;
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

    public static final Multimap<String, String> geneMap = ArrayListMultimap.create();

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

            while ((line = br.readLine()) != null) {
                String[] temp = line.split(",");
                geneMap.put(temp[0], line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
