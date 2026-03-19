# G-know ME Internship

## Clinical Variant Interpretation Pipeline (Annotation → ACMG Classification → Reporting)

This project implements an end-to-end clinical genomics workflow for variant annotation, interpretation, and reporting. It integrates multiple bioinformatics tools, external knowledge bases, and custom Python pipelines to transform raw variant data into clinically actionable insights.

---

## Project Overview

Clinical sequencing produces large numbers of variants, but only a subset are relevant for diagnosis or treatment. This pipeline addresses that challenge by:

- Annotating variants using multiple prediction tools  
- Prioritizing variants based on functional impact  
- Applying ACMG guidelines for classification  
- Linking variants to therapies and clinical trials  
- Generating structured clinical reports  

---

## Pipeline Architecture
Variant Input (TSV / VCF)
│
├── Annotation Layer
│ ├── dbNSFP (multi-score annotation)
│ ├── SIFT4G (SNV impact)
│ └── SIFT-Indel (indel impact)
│
├── Scoring & Prioritization
│ └── CADD (deleteriousness ranking)
│
├── Clinical Interpretation
│ └── ACMG classification (rule-based)
│
├── Knowledge Integration
│ ├── MyCancerGenome (variant → cancer/therapy)
│ └── Drug database (gene → targeted treatment)
│
└── Reporting Layer
├── Oncomine-style reports
└── Clinical trial matching reports


---

## Core Components

### 1. Variant Annotation (Bash Pipelines)

- **dbNSFP (`dbNSFP4.3a.sh`)**
  - Aggregates multiple functional scores (SIFT, PolyPhen, etc.)
  - Outputs enriched variant annotation table  

- **SIFT4G (`SIFT_4G.sh`)**
  - Predicts deleterious vs tolerated SNVs  
  - Uses GRCh38 reference database  

- **SIFT-Indel (`SIFT_indel.sh`)**
  - Annotates insertions/deletions  
  - Extracts functional predictions for structural variants  

---

### 2. Functional Scoring

**Notebook: `CADD_SNV.ipynb`**

- Integrates CADD scores  
- Ranks variants by predicted deleteriousness  
- Supports prioritization of clinically relevant mutations  

---

### 3. Clinical Classification (ACMG)

**Notebook: `ACMG.ipynb`**

- Implements ACMG guideline framework  
- Classifies variants into:
  - Pathogenic  
  - Likely pathogenic  
  - VUS (Variant of Uncertain Significance)  
- Uses rule-based logic combining multiple evidence types  

---

### 4. Knowledge Base Integration

**MyCancerGenome Integration**
- **Notebook: `MyCancerGenome_parsing_final.ipynb`**
- Maps variants to:
  - Cancer types  
  - Targeted therapies  
  - Clinical relevance  

**Drug Database**
- **Notebooks: `drug_database.ipynb`, `DRUG_DATABASE_FINAL.ipynb`**
- Builds gene–drug associations  
- Links variants to treatment options  

---

### 5. Additional Variant Evidence

- **`Mutation_taster.ipynb`**
  - Functional consequence prediction  

- **`Parsing_tsv.ipynb`**
  - Standardizes annotation outputs  

- **`tsv_sample_comparison.ipynb`**
  - Compares variants across samples  

---

### 6. Clinical Reporting

**Structured Reporting Pipelines**

- **`Clinical_reporting_oncomine_format.ipynb`**
  - Formats results into clinical report structure  

- **`Clinical_trial_report_doc.ipynb`**
- **`Clinical_trial_unipath_report.ipynb`**
  - Identifies clinical trial opportunities  
  - Generates report-ready outputs  

---

### 7. Workflow Automation

**Notebook: `Automation_of_clinical_reporting_workflow.ipynb`**

- Integrates:
  - Annotation  
  - Scoring  
  - Interpretation  
  - Reporting  

- Demonstrates end-to-end automation of clinical reporting pipeline  

---

## Technologies Used

- Python (Jupyter Notebooks)  
- Bash scripting  
- Java (dbNSFP, SIFT4G)  
- Perl (SIFT-Indel)  
- Genomic databases:
  - dbNSFP  
  - CADD  
  - MyCancerGenome  

---

## Key Features

- End-to-end clinical variant interpretation pipeline  
- Integration of multiple annotation tools and databases  
- Automated ACMG classification  
- Therapy and clinical trial mapping  
- Structured clinical report generation  

---

## Key Skills Demonstrated

- Clinical genomics and precision medicine  
- Variant annotation and prioritization  
- ACMG guideline implementation  
- Multi-source data integration  
- Pipeline automation and workflow design  
- Translating genomic data into clinical insights  

---

## Why This Project Matters

- Bridges **raw genomic data → clinical decision support**  
- Demonstrates **real-world clinical reporting workflows**  
- Combines **bioinformatics + clinical interpretation + automation**  

---

## Notes

- Designed for extensibility into clinical pipelines  
- Modular components allow integration into larger systems  
- Outputs can be adapted for clinical or research reporting  

---

## Author

Lakshita Arunkumar
