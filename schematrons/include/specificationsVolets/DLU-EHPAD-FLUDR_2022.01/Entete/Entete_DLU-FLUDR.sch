<?xml version="1.0" encoding="UTF-8"?>

<!--                  
    Entete_DLU-FLUDR.sch
    Teste la conformité de l'entete du document DLU-FLUDR au CI-SIS
    
    Historique :
    07/02/2018 : ANS : Création
    31/07/2020 : ANS : Suppression du contrôle sur informant   
    22/02/2021 : Renomage schématron
-->


<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="Entete_DLU-FLUDR">
    
    <rule context='cda:ClinicalDocument'>
        
        <assert test="cda:templateId[@root='1.2.250.1.213.1.1.1.24']"> 
            [Entete_DLU-FLUDR] Le templateId "1.2.250.1.213.1.1.1.24" (Conformité au modèle DLU-FLUDR du CI-SIS) doit être présent.
        </assert>
        <assert test="./cda:code[@code='34133-9' and @codeSystem='2.16.840.1.113883.6.1']"> 
            [Entete_DLU-FLUDR] L'élément code doit avoir @code ="34133-9" et @codeSystem = "2.16.840.1.113883.6.1"/>. 
        </assert>
        
        
        <assert test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime">
            [Entete_DLU-FLUDR] La date de naissance du patient est obligatoirement présente
        </assert>
        
        <assert test="cda:documentationOf/cda:serviceEvent/cda:code[@code='28651-8']">
            [Entete_DLU-FLUDR] L’attribut code de l’élément documentationOf/serviceEvent/code prend la valeur '28651-8'
        </assert>
        
        <assert test="cda:documentationOf/cda:serviceEvent/cda:effectiveTime">
            [Entete_DLU-FLUDR] Dans le contexte du DLU, la date du début d'exécution de l'acte est obligatoire
        </assert>
        
        <report test="cda:documentationOf/cda:serviceEvent/cda:effectiveTime[@nullFlavor] or cda:documentationOf/cda:serviceEvent/cda:effectiveTime/cda:low[@nullFlavor]">
            [Entete_DLU-FLUDR] Dans le contexte du DLU, l'utilisation du nullFlavor pour la date du début d'exécution de l'acte est interdite
        </report>
        
    </rule>
</pattern>