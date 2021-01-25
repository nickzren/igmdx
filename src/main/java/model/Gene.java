package model;

import java.util.StringJoiner;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author nick
 */
@XmlRootElement(name = "gene")
public class Gene {

    private String id;
    private String diagnosisGene;
    private String geneticDiagnosisCLIAConfirmed;
    private String zygosity;
    private String typeOfMutationOfVariantA;
    private String cLIAACMGClassificationOfVariantA;
    private String typeOfMutationOfVariantB;
    private String cLIAACMGClassificationOfVariantB;
    private String sex;
    private String ageGroup;
    private String phenotype;

    public Gene() {   
    }
    
    public Gene(
            String id,
            String diagnosisGene,
            String geneticDiagnosisCLIAConfirmed,
            String zygosity,
            String typeOfMutationOfVariantA,
            String cLIAACMGClassificationOfVariantA,
            String typeOfMutationOfVariantB,
            String cLIAACMGClassificationOfVariantB,
            String sex,
            String ageGroup,
            String phenotype) {
        this.id = id;
        this.diagnosisGene = diagnosisGene;
        this.geneticDiagnosisCLIAConfirmed = geneticDiagnosisCLIAConfirmed;
        this.zygosity = zygosity;
        this.typeOfMutationOfVariantA = typeOfMutationOfVariantA;
        this.cLIAACMGClassificationOfVariantA = cLIAACMGClassificationOfVariantA;
        this.typeOfMutationOfVariantB = typeOfMutationOfVariantB;
        this.cLIAACMGClassificationOfVariantB = cLIAACMGClassificationOfVariantB;
        this.sex = sex;
        this.ageGroup = ageGroup;
        this.phenotype = phenotype;
    }
    
    public String getID() {
        return id;
    }

    public String getDiagnosisGene() {
        return diagnosisGene;
    }
    
    public void setDiagnosisGene(String diagnosisGene) {
        this.diagnosisGene = diagnosisGene;
    }

    public String getGeneticDiagnosisCLIAConfirmed() {
        return geneticDiagnosisCLIAConfirmed;
    }
    
    public void setGeneticDiagnosisCLIAConfirmed(String geneticDiagnosisCLIAConfirmed) {
        this.geneticDiagnosisCLIAConfirmed = geneticDiagnosisCLIAConfirmed;
    }

    public String getZygosity() {
        return zygosity;
    }
    
    public void setZygosity(String zygosity) {
        this.zygosity = zygosity;
    }

    public String getTypeOfMutationOfVariantA() {
        return typeOfMutationOfVariantA;
    }
    
    public void setTypeOfMutationOfVariantA(String typeOfMutationOfVariantA) {
        this.typeOfMutationOfVariantA = typeOfMutationOfVariantA;
    }

    public String getCLIAACMGClassificationOfVariantA() {
        return cLIAACMGClassificationOfVariantA;
    }
    
    public void setCLIAACMGClassificationOfVariantA(String cLIAACMGClassificationOfVariantA) {
        this.cLIAACMGClassificationOfVariantA = cLIAACMGClassificationOfVariantA;
    }

    public String getTypeOfMutationOfVariantB() {
        return typeOfMutationOfVariantB;
    }
    
    public void setTypeOfMutationOfVariantB(String typeOfMutationOfVariantB) {
        this.typeOfMutationOfVariantB = typeOfMutationOfVariantB;
    }

    public String getCLIAACMGClassificationOfVariantB() {
        return cLIAACMGClassificationOfVariantB;
    }
    
    public void setCLIAACMGClassificationOfVariantB(String cLIAACMGClassificationOfVariantB) {
        this.cLIAACMGClassificationOfVariantB = cLIAACMGClassificationOfVariantB;
    }

    public String getSex() {
        return sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAgeGroup() {
        return ageGroup;
    }
    
    public void setAgeGroup(String ageGroup) {
        this.ageGroup = ageGroup;
    }

    public String getPhenotype() {
        return phenotype;
    }

    public void setPhenotype(String phenotype) {
        this.phenotype = phenotype;
    }
    
    @Override
    public String toString() {
        StringJoiner sj = new StringJoiner(",");
        sj.add(id);
        sj.add(diagnosisGene);
        sj.add(geneticDiagnosisCLIAConfirmed);
        sj.add(zygosity);
        sj.add(typeOfMutationOfVariantA);
        sj.add(cLIAACMGClassificationOfVariantA);
        sj.add(typeOfMutationOfVariantB);
        sj.add(cLIAACMGClassificationOfVariantB);
        sj.add(sex);
        sj.add(ageGroup);
        sj.add(phenotype);

        return sj.toString();
    }
}
