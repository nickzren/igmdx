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
                    The IGM has performed research diagnostic whole exome or whole genome sequencing on 2,250 CUIMC patients with presentations including undiagnosed diseases of childhood and neurological diseases (with a focus on epilepsy).  All of these patient genomes have been analyzed with a standardized diagnostic pipeline in the IGM in an effort to identify single genotypes that are responsible for disease.  Diagnostic genotypes are those that are considered to be likely contributing to the patient’s presentation through study team consensus (a multi- disciplinary team that includes population geneticists, molecular geneticists, clinicians, genetic counselors, bioinformaticians and analysts). The IGMDx database provides an easy to use interface to access all such diagnoses in disease causing genes. Users can enter a gene of interest and quickly identify all patients with positive diagnoses in the indicated gene, including non-identifying diagnostic information about the patient and information about the relevant diagnostic mutation or mutations. Information about whether the variant was confirmed in a CLIA-approved laboratory is also indicated.  If additional information is needed about patients carrying indicated causal genotypes please contact 
                    <a href="mailto: igmdx@columbia.edu" target="_blank"><i class="fa fa-envelope-o"> igmdx@columbia.edu</i></a>.
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
            </div>
        </div>

        <%@include file="base/footer.jsp" %>    
    </body>
</html>