<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>About</title>

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
                <h3 class="page-header">About</h3>

                <p class="lead">
                    The IGM has performed research diagnostic whole exome or whole genome sequencing on 5,261 CUIMC patients with presentations including undiagnosed diseases of childhood, chronic kidney disease, fetal anomalies and neurological diseases (with a focus on epilepsy).  All of these patient genomes have been analyzed with a standardized diagnostic pipeline in the IGM in an effort to identify single genotypes that are responsible for disease.  Diagnostic genotypes are those that are considered to be likely contributing to the patient’s presentation through study team consensus (a multidisciplinary team that includes population geneticists, molecular geneticists, clinicians, genetic counselors, bioinformaticians and analysts). The IGMDx database provides an easy to use interface to access all such diagnoses in disease causing genes. Users can enter a gene of interest and quickly identify all patients with positive diagnoses in the indicated gene, including non-identifying diagnostic information about the patient and information about the relevant diagnostic mutation or mutations. Information about whether the variant was confirmed in a CLIA-approved laboratory is also indicated.  If additional information is needed about patients carrying indicated causal genotypes please contact 
                    <a href="mailto: igmdx@lists.cumc.columbia.edu" target="_blank"><i class="far fa-envelope"> igmdx@lists.cumc.columbia.edu</i></a>.
                </p>

                <br/>

                <h4><i class="fa fa-database"></i> Data Generation</h4>

                <p>Sequencing of DNA was performed by <a href="http://igm.columbia.edu" target="_blank">Institute for Genomic Medicine</a>.
                    Samples were either exome sequenced using the Agilent All Exon (37MB, 50MB or 65MB) 
                    or the Nimblegen SeqCap EZ V2.0 or 3.0 Exome Enrichment kit or whole-genome sequenced 
                    using Illumina NovaSeq 6000 sequencers according to standard protocols.
                </p>

                <p>
                    The Illumina lane-level fastq files were aligned to the Human Reference Genome (NCBI Build 37)
                    using the Illumina DRAGEN Alignment tool. Picard software was used to remove duplicate 
                    reads and process these lane-level SAM files, resulting in a sample-level BAM file that was 
                    used for variant calling. GATK was used to recalibrate base quality scores, realign around 
                    indels, and call variants. The IGM variants were required to have a quality score (QUAL) of at least 30, a quality by depth score
                    of at least 2, a mapping quality score of at least 40, a genotype quality (GQ) score of at 
                    least 20, a read position rank sum score greater than -10 and at least 10x coverage. Additionally, variants were restricted 
                    according to VQSR tranche (calculated using the known SNV sites from HapMap v3.3, dbSNP, and 
                    the Omni chip array from the 1000 Genomes Project): the cutoffs were a tranche of 99.9% for 
                    SNVs and 99% for indels.
                </p>

                <p>Variants calls were restricted to coordinates within the Consensus Coding Sequence 
                    (CCDS) release 20. All variants were annotated to Ensembl 87 using CLINEFF.
                </p>

                <p>
                    All the individual level diagnostic evaluation is performed by IGM analysis using 
                    <a href="https://redmine.igm.cumc.columbia.edu/projects/atav/wiki" target="_blank">ATAV</a>.
                </p>

                <br/>

                <h4><i class="fas fa-dna"></i> Genes</h4>
                <p>
                    We will periodically add new disease causing gene and its individual count to the list.  
                </p>
                <p>
                    <b>Individual count <span class="badge">N</span> and Gene name</b>
                </p>

                <div class="row">
                    <div class="col-md-2"><span class="badge">2</span> ABCA4</div>
                    <div class="col-md-2"><span class="badge">1</span> ACSF3</div>
                    <div class="col-md-2"><span class="badge">1</span> ACTB</div>
                    <div class="col-md-2"><span class="badge">1</span> ACTC1</div>
                    <div class="col-md-2"><span class="badge">2</span> ACTG2</div>
                    <div class="col-md-2"><span class="badge">1</span> ADAMTSL2</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> ADGRV1 (AKA GPR98)</div>
                    <div class="col-md-2"><span class="badge">1</span> ADNP</div>
                    <div class="col-md-2"><span class="badge">1</span> ADPRHL2</div>
                    <div class="col-md-2"><span class="badge">1</span> AKT3</div>
                    <div class="col-md-2"><span class="badge">1</span> AMMECR1</div>
                    <div class="col-md-2"><span class="badge">2</span> ANKRD11</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> AP4M1</div>
                    <div class="col-md-2"><span class="badge">1</span> APOA1</div>
                    <div class="col-md-2"><span class="badge">2</span> AR</div>
                    <div class="col-md-2"><span class="badge">1</span> ARHGEF9</div>
                    <div class="col-md-2"><span class="badge">1</span> ARID1A </div>
                    <div class="col-md-2"><span class="badge">2</span> ARID1B</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> ARMC8</div>
                    <div class="col-md-2"><span class="badge">1</span> ASPM</div>
                    <div class="col-md-2"><span class="badge">2</span> ASXL3</div>
                    <div class="col-md-2"><span class="badge">2</span> ATM</div>
                    <div class="col-md-2"><span class="badge">1</span> ATP6V1A</div>
                    <div class="col-md-2"><span class="badge">1</span> ATP6V1B1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> ATRX</div>
                    <div class="col-md-2"><span class="badge">1</span> ATXN2</div>
                    <div class="col-md-2"><span class="badge">2</span> B3GALT6</div>
                    <div class="col-md-2"><span class="badge">1</span> B3GAT3</div>
                    <div class="col-md-2"><span class="badge">1</span> BBS1</div>
                    <div class="col-md-2"><span class="badge">1</span> BCL11A</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> BPTF</div>
                    <div class="col-md-2"><span class="badge">2</span> BRAF</div>
                    <div class="col-md-2"><span class="badge">1</span> C2ORF71</div>
                    <div class="col-md-2"><span class="badge">1</span> C5ORF42</div>
                    <div class="col-md-2"><span class="badge">7</span> CACNA1A</div>
                    <div class="col-md-2"><span class="badge">1</span> CACNA1C</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> CARD11</div>
                    <div class="col-md-2"><span class="badge">1</span> CC2D2A</div>
                    <div class="col-md-2"><span class="badge">1</span> CCDC22</div>
                    <div class="col-md-2"><span class="badge">1</span> CDH7</div>
                    <div class="col-md-2"><span class="badge">1</span> CDKL5</div>
                    <div class="col-md-2"><span class="badge">1</span> CEP290</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> CERKL</div>
                    <div class="col-md-2"><span class="badge">1</span> CHD2</div>
                    <div class="col-md-2"><span class="badge">2</span> CHD7</div>
                    <div class="col-md-2"><span class="badge">1</span> CHD8</div>
                    <div class="col-md-2"><span class="badge">1</span> CHRNB2</div>
                    <div class="col-md-2"><span class="badge">1</span> CHST14</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> CLCN1</div>
                    <div class="col-md-2"><span class="badge">4</span> CLCN5</div>
                    <div class="col-md-2"><span class="badge">1</span> CLN5</div>
                    <div class="col-md-2"><span class="badge">2</span> CNNM4</div>
                    <div class="col-md-2"><span class="badge">1</span> COL11A1</div>
                    <div class="col-md-2"><span class="badge">1</span> COL1A1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> COL1A2</div>
                    <div class="col-md-2"><span class="badge">2</span> COL27A1</div>
                    <div class="col-md-2"><span class="badge">4</span> COL2A1</div>
                    <div class="col-md-2"><span class="badge">1</span> COL2A1 </div>
                    <div class="col-md-2"><span class="badge">5</span> COL4A1</div>
                    <div class="col-md-2"><span class="badge">14</span> COL4A3</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">14</span> COL4A4</div>
                    <div class="col-md-2"><span class="badge">35</span> COL4A5</div>
                    <div class="col-md-2"><span class="badge">1</span> COL6A1</div>
                    <div class="col-md-2"><span class="badge">1</span> COL7A1</div>
                    <div class="col-md-2"><span class="badge">1</span> CRB1</div>
                    <div class="col-md-2"><span class="badge">2</span> CRB2</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">4</span> CREBBP</div>
                    <div class="col-md-2"><span class="badge">5</span> CSNK2B</div>
                    <div class="col-md-2"><span class="badge">1</span> CSNK2B </div>
                    <div class="col-md-2"><span class="badge">1</span> CYP27A1</div>
                    <div class="col-md-2"><span class="badge">1</span> DEAF1</div>
                    <div class="col-md-2"><span class="badge">3</span> DEPDC5</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> DGUOK</div>
                    <div class="col-md-2"><span class="badge">2</span> DHCR7</div>
                    <div class="col-md-2"><span class="badge">1</span> DHTKD1</div>
                    <div class="col-md-2"><span class="badge">1</span> DHX30</div>
                    <div class="col-md-2"><span class="badge">1</span> DMD</div>
                    <div class="col-md-2"><span class="badge">1</span> DMP1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> DNAH11</div>
                    <div class="col-md-2"><span class="badge">1</span> DNAH5</div>
                    <div class="col-md-2"><span class="badge">1</span> DNMT1</div>
                    <div class="col-md-2"><span class="badge">1</span> DNMT3A</div>
                    <div class="col-md-2"><span class="badge">1</span> DOCK6</div>
                    <div class="col-md-2"><span class="badge">1</span> DYNC1H1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> EBF3</div>
                    <div class="col-md-2"><span class="badge">1</span> ECEL1</div>
                    <div class="col-md-2"><span class="badge">1</span> ECHS1</div>
                    <div class="col-md-2"><span class="badge">3</span> EDA</div>
                    <div class="col-md-2"><span class="badge">2</span> EEF1A2</div>
                    <div class="col-md-2"><span class="badge">1</span> EFTUD</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> EHMT1</div>
                    <div class="col-md-2"><span class="badge">1</span> ELN</div>
                    <div class="col-md-2"><span class="badge">1</span> EP300</div>
                    <div class="col-md-2"><span class="badge">1</span> EPCAM</div>
                    <div class="col-md-2"><span class="badge">1</span> EXPH5</div>
                    <div class="col-md-2"><span class="badge">1</span> EXT1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">4</span> EYA1</div>
                    <div class="col-md-2"><span class="badge">1</span> EYA1 </div>
                    <div class="col-md-2"><span class="badge">1</span> EYS</div>
                    <div class="col-md-2"><span class="badge">2</span> F5</div>
                    <div class="col-md-2"><span class="badge">1</span> FA2H</div>
                    <div class="col-md-2"><span class="badge">1</span> FAM111A</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> FANCB</div>
                    <div class="col-md-2"><span class="badge">2</span> FAS</div>
                    <div class="col-md-2"><span class="badge">1</span> FBN1</div>
                    <div class="col-md-2"><span class="badge">1</span> FBP1</div>
                    <div class="col-md-2"><span class="badge">1</span> FBXO11</div>
                    <div class="col-md-2"><span class="badge">1</span> FGD1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> FGFR1</div>
                    <div class="col-md-2"><span class="badge">3</span> FGFR2</div>
                    <div class="col-md-2"><span class="badge">1</span> FGFR2 </div>
                    <div class="col-md-2"><span class="badge">3</span> FGFR3</div>
                    <div class="col-md-2"><span class="badge">4</span> FLG</div>
                    <div class="col-md-2"><span class="badge">2</span> FLNA</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> FLNB</div>
                    <div class="col-md-2"><span class="badge">1</span> FLT4</div>
                    <div class="col-md-2"><span class="badge">2</span> FLVCR2</div>
                    <div class="col-md-2"><span class="badge">1</span> FOXP1</div>
                    <div class="col-md-2"><span class="badge">1</span> FXN</div>
                    <div class="col-md-2"><span class="badge">1</span> G6PC3</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> G6PD</div>
                    <div class="col-md-2"><span class="badge">1</span> GABRB2</div>
                    <div class="col-md-2"><span class="badge">1</span> GANAB</div>
                    <div class="col-md-2"><span class="badge">1</span> GATA3</div>
                    <div class="col-md-2"><span class="badge">1</span> GFPT1</div>
                    <div class="col-md-2"><span class="badge">2</span> GLA</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> GLB1</div>
                    <div class="col-md-2"><span class="badge">3</span> GNAO1</div>
                    <div class="col-md-2"><span class="badge">4</span> GNAS</div>
                    <div class="col-md-2"><span class="badge">6</span> GNB1</div>
                    <div class="col-md-2"><span class="badge">1</span> GNE</div>
                    <div class="col-md-2"><span class="badge">1</span> GPIHBP1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> GPSM2 </div>
                    <div class="col-md-2"><span class="badge">2</span> GRIN1</div>
                    <div class="col-md-2"><span class="badge">1</span> GRIN2A</div>
                    <div class="col-md-2"><span class="badge">1</span> GRN</div>
                    <div class="col-md-2"><span class="badge">3</span> HBB</div>
                    <div class="col-md-2"><span class="badge">6</span> HNF1A</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">4</span> HNF1B</div>
                    <div class="col-md-2"><span class="badge">1</span> HNF4A</div>
                    <div class="col-md-2"><span class="badge">1</span> HNRNPH2</div>
                    <div class="col-md-2"><span class="badge">1</span> HNRNPK</div>
                    <div class="col-md-2"><span class="badge">1</span> HTRA2</div>
                    <div class="col-md-2"><span class="badge">3</span> INF2</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> IQCB1</div>
                    <div class="col-md-2"><span class="badge">1</span> IQSEC2</div>
                    <div class="col-md-2"><span class="badge">2</span> JAG1</div>
                    <div class="col-md-2"><span class="badge">1</span> JARID2</div>
                    <div class="col-md-2"><span class="badge">1</span> JUP</div>
                    <div class="col-md-2"><span class="badge">4</span> KANSL1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> KCNB1</div>
                    <div class="col-md-2"><span class="badge">1</span> KCNC1</div>
                    <div class="col-md-2"><span class="badge">1</span> KCNH1</div>
                    <div class="col-md-2"><span class="badge">1</span> KCNQ1</div>
                    <div class="col-md-2"><span class="badge">3</span> KCNQ2</div>
                    <div class="col-md-2"><span class="badge">4</span> KCNQ3</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> KCNT1</div>
                    <div class="col-md-2"><span class="badge">2</span> KDM6A</div>
                    <div class="col-md-2"><span class="badge">1</span> KIAA0196 (WASHC5)</div>
                    <div class="col-md-2"><span class="badge">2</span> KIAA2022</div>
                    <div class="col-md-2"><span class="badge">1</span> KIDINS220</div>
                    <div class="col-md-2"><span class="badge">1</span> KIF11</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">3</span> KIF1A</div>
                    <div class="col-md-2"><span class="badge">1</span> KIZ</div>
                    <div class="col-md-2"><span class="badge">1</span> KLHL3</div>
                    <div class="col-md-2"><span class="badge">1</span> KLHL40</div>
                    <div class="col-md-2"><span class="badge">4</span> KMT2A</div>
                    <div class="col-md-2"><span class="badge">2</span> KMT2D</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> KMT2D </div>
                    <div class="col-md-2"><span class="badge">1</span> KMT5B</div>
                    <div class="col-md-2"><span class="badge">1</span> KRIT1</div>
                    <div class="col-md-2"><span class="badge">2</span> L1CAM</div>
                    <div class="col-md-2"><span class="badge">1</span> LGI1</div>
                    <div class="col-md-2"><span class="badge">1</span> LIG4</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> LRIG2</div>
                    <div class="col-md-2"><span class="badge">1</span> LZTR1</div>
                    <div class="col-md-2"><span class="badge">1</span> MAP2K1</div>
                    <div class="col-md-2"><span class="badge">1</span> MBD5</div>
                    <div class="col-md-2"><span class="badge">2</span> MC4R</div>
                    <div class="col-md-2"><span class="badge">1</span> MCOLN1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> MECP2</div>
                    <div class="col-md-2"><span class="badge">1</span> MED12</div>
                    <div class="col-md-2"><span class="badge">1</span> MEIS2</div>
                    <div class="col-md-2"><span class="badge">1</span> MORC2</div>
                    <div class="col-md-2"><span class="badge">1</span> MSH6</div>
                    <div class="col-md-2"><span class="badge">2</span> MT-ATP6</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> MTOR</div>
                    <div class="col-md-2"><span class="badge">1</span> MYCN</div>
                    <div class="col-md-2"><span class="badge">1</span> MYH10</div>
                    <div class="col-md-2"><span class="badge">1</span> MYH9</div>
                    <div class="col-md-2"><span class="badge">1</span> MYL2</div>
                    <div class="col-md-2"><span class="badge">1</span> MYO7A</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> MYRF</div>
                    <div class="col-md-2"><span class="badge">1</span> NAGLU</div>
                    <div class="col-md-2"><span class="badge">2</span> NBEA</div>
                    <div class="col-md-2"><span class="badge">1</span> NDUFB3</div>
                    <div class="col-md-2"><span class="badge">1</span> NDUFS1</div>
                    <div class="col-md-2"><span class="badge">1</span> NDUFS4</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">10</span> NF1</div>
                    <div class="col-md-2"><span class="badge">1</span> NFIA</div>
                    <div class="col-md-2"><span class="badge">1</span> NFIX</div>
                    <div class="col-md-2"><span class="badge">1</span> NFKB1</div>
                    <div class="col-md-2"><span class="badge">1</span> NGLY1</div>
                    <div class="col-md-2"><span class="badge">2</span> NHS</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> NIPBL</div>
                    <div class="col-md-2"><span class="badge">2</span> NOTCH3</div>
                    <div class="col-md-2"><span class="badge">1</span> NPHP3</div>
                    <div class="col-md-2"><span class="badge">2</span> NPHP4</div>
                    <div class="col-md-2"><span class="badge">1</span> NPHS1</div>
                    <div class="col-md-2"><span class="badge">3</span> NPHS2</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> NR2F2</div>
                    <div class="col-md-2"><span class="badge">7</span> NSD1</div>
                    <div class="col-md-2"><span class="badge">1</span> OCRL</div>
                    <div class="col-md-2"><span class="badge">1</span> ODC1</div>
                    <div class="col-md-2"><span class="badge">3</span> OPA1</div>
                    <div class="col-md-2"><span class="badge">1</span> OTUD6B</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> PACS1</div>
                    <div class="col-md-2"><span class="badge">3</span> PAFAH1B1</div>
                    <div class="col-md-2"><span class="badge">5</span> PAX2</div>
                    <div class="col-md-2"><span class="badge">2</span> PAX6</div>
                    <div class="col-md-2"><span class="badge">1</span> PCDH19</div>
                    <div class="col-md-2"><span class="badge">2</span> PCYT1A</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> PDHA1</div>
                    <div class="col-md-2"><span class="badge">1</span> PHF21A</div>
                    <div class="col-md-2"><span class="badge">1</span> PIEOZ1</div>
                    <div class="col-md-2"><span class="badge">2</span> PIEZO1</div>
                    <div class="col-md-2"><span class="badge">2</span> PIGW</div>
                    <div class="col-md-2"><span class="badge">1</span> PIK3CA</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">10</span> PKD1</div>
                    <div class="col-md-2"><span class="badge">1</span> PKD2 </div>
                    <div class="col-md-2"><span class="badge">3</span> PKHD1</div>
                    <div class="col-md-2"><span class="badge">1</span> PLCE1</div>
                    <div class="col-md-2"><span class="badge">1</span> PLOD2</div>
                    <div class="col-md-2"><span class="badge">1</span> PLP1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> POLG</div>
                    <div class="col-md-2"><span class="badge">1</span> POMT2</div>
                    <div class="col-md-2"><span class="badge">1</span> PPP1CB</div>
                    <div class="col-md-2"><span class="badge">2</span> PPP2R1A</div>
                    <div class="col-md-2"><span class="badge">1</span> PPT1</div>
                    <div class="col-md-2"><span class="badge">1</span> PRG4</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> PRKCG</div>
                    <div class="col-md-2"><span class="badge">1</span> PRMT7</div>
                    <div class="col-md-2"><span class="badge">1</span> PROS1</div>
                    <div class="col-md-2"><span class="badge">4</span> PRRT2</div>
                    <div class="col-md-2"><span class="badge">1</span> PTEN</div>
                    <div class="col-md-2"><span class="badge">4</span> PTPN11</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> QRICH1</div>
                    <div class="col-md-2"><span class="badge">2</span> RAC1</div>
                    <div class="col-md-2"><span class="badge">1</span> RAF1</div>
                    <div class="col-md-2"><span class="badge">1</span> RALA</div>
                    <div class="col-md-2"><span class="badge">1</span> RAPSN</div>
                    <div class="col-md-2"><span class="badge">1</span> RASA1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> RECQ</div>
                    <div class="col-md-2"><span class="badge">1</span> RELN</div>
                    <div class="col-md-2"><span class="badge">1</span> REN</div>
                    <div class="col-md-2"><span class="badge">2</span> RERE</div>
                    <div class="col-md-2"><span class="badge">1</span> RET</div>
                    <div class="col-md-2"><span class="badge">1</span> RNASEH2B</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> ROBO2</div>
                    <div class="col-md-2"><span class="badge">1</span> ROBO3</div>
                    <div class="col-md-2"><span class="badge">1</span> RPL10 </div>
                    <div class="col-md-2"><span class="badge">1</span> SACS</div>
                    <div class="col-md-2"><span class="badge">1</span> SALL1</div>
                    <div class="col-md-2"><span class="badge">1</span> SALL4</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">13</span> SCN1A</div>
                    <div class="col-md-2"><span class="badge">9</span> SCN2A</div>
                    <div class="col-md-2"><span class="badge">1</span> SCN3A</div>
                    <div class="col-md-2"><span class="badge">3</span> SCN8A</div>
                    <div class="col-md-2"><span class="badge">1</span> SCYL1</div>
                    <div class="col-md-2"><span class="badge">1</span> SERPING1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> SGSH</div>
                    <div class="col-md-2"><span class="badge">2</span> SHANK3</div>
                    <div class="col-md-2"><span class="badge">1</span> SIX1</div>
                    <div class="col-md-2"><span class="badge">2</span> SLC12A3</div>
                    <div class="col-md-2"><span class="badge">2</span> SLC13A5</div>
                    <div class="col-md-2"><span class="badge">2</span> SLC1A4</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> SLC20A2</div>
                    <div class="col-md-2"><span class="badge">1</span> SLC26A </div>
                    <div class="col-md-2"><span class="badge">1</span> SLC26A1</div>
                    <div class="col-md-2"><span class="badge">1</span> SLC34A3</div>
                    <div class="col-md-2"><span class="badge">1</span> SLC4A1</div>
                    <div class="col-md-2"><span class="badge">1</span> SLC6A8</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> SLC7A9</div>
                    <div class="col-md-2"><span class="badge">1</span> SMARCA2</div>
                    <div class="col-md-2"><span class="badge">1</span> SMARCAL1</div>
                    <div class="col-md-2"><span class="badge">1</span> SMARCB1</div>
                    <div class="col-md-2"><span class="badge">1</span> SMC1A</div>
                    <div class="col-md-2"><span class="badge">1</span> SMC3</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> SMPD1</div>
                    <div class="col-md-2"><span class="badge">3</span> SON</div>
                    <div class="col-md-2"><span class="badge">1</span> SOS1 </div>
                    <div class="col-md-2"><span class="badge">1</span> SOX17</div>
                    <div class="col-md-2"><span class="badge">1</span> SOX5</div>
                    <div class="col-md-2"><span class="badge">1</span> SOX9</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> SP110</div>
                    <div class="col-md-2"><span class="badge">1</span> SPAST</div>
                    <div class="col-md-2"><span class="badge">1</span> SPG7</div>
                    <div class="col-md-2"><span class="badge">1</span> STRC</div>
                    <div class="col-md-2"><span class="badge">1</span> STXBP1</div>
                    <div class="col-md-2"><span class="badge">1</span> SYNE1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> SYNGAP1</div>
                    <div class="col-md-2"><span class="badge">3</span> TAB2</div>
                    <div class="col-md-2"><span class="badge">1</span> TBCD</div>
                    <div class="col-md-2"><span class="badge">1</span> TBCK</div>
                    <div class="col-md-2"><span class="badge">1</span> TCF20</div>
                    <div class="col-md-2"><span class="badge">3</span> TCF4</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> TECPR2</div>
                    <div class="col-md-2"><span class="badge">1</span> TGFBR2</div>
                    <div class="col-md-2"><span class="badge">1</span> TGIF1</div>
                    <div class="col-md-2"><span class="badge">1</span> TMEM173</div>
                    <div class="col-md-2"><span class="badge">2</span> TMEM67</div>
                    <div class="col-md-2"><span class="badge">1</span> TNNT2</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">4</span> TOP3A</div>
                    <div class="col-md-2"><span class="badge">1</span> TP53</div>
                    <div class="col-md-2"><span class="badge">1</span> TP63</div>
                    <div class="col-md-2"><span class="badge">1</span> TPP1</div>
                    <div class="col-md-2"><span class="badge">1</span> TRIM8</div>
                    <div class="col-md-2"><span class="badge">8</span> TRPC6</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">5</span> TSC2</div>
                    <div class="col-md-2"><span class="badge">1</span> TTC21B</div>
                    <div class="col-md-2"><span class="badge">1</span> TTN</div>
                    <div class="col-md-2"><span class="badge">1</span> TUB1A1</div>
                    <div class="col-md-2"><span class="badge">2</span> TUBA1A</div>
                    <div class="col-md-2"><span class="badge">1</span> TUBB3</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> TUBB4A</div>
                    <div class="col-md-2"><span class="badge">1</span> UBTF</div>
                    <div class="col-md-2"><span class="badge">7</span> UMOD</div>
                    <div class="col-md-2"><span class="badge">1</span> WAC</div>
                    <div class="col-md-2"><span class="badge">1</span> WDR19</div>
                    <div class="col-md-2"><span class="badge">2</span> WFS1</div>
                </div>
                <div class="row">
                    <div class="col-md-2"><span class="badge">1</span> WT1</div>
                    <div class="col-md-2"><span class="badge">1</span> ZEB2</div>
                    <div class="col-md-2"><span class="badge">1</span> ZFPM2</div>
                    <div class="col-md-2"><span class="badge">1</span> ZNF292</div>
                    <div class="col-md-2"><span class="badge">1</span> ZSWIM6</div>
                </div>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>    
    </body>
</html>