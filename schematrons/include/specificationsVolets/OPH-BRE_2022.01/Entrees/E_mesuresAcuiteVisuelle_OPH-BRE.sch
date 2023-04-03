<?xml version="1.0" encoding="UTF-8"?>

<!--                 
   E_mesuresAcuiteVisuelle_OPH-BRE
   Teste la conformité de l'entrée FR-Liste-des-mesures-acuite-visuelle aux spécifications OPH-BRE du CI-SIS.
   
   05/10/2021 : Création
   
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="E_mesuresAcuiteVisuelle_OPH-BRE">
    <title>Vérification de la conformité de l'entrée FR-Liste-des-mesures-acuite-visuelle</title>
    <rule context="*[cda:templateId/@root='1.3.6.1.4.1.19376.1.12.1.3.2']">
        
        <assert test=".//cda:observation[cda:templateId/@root='1.3.6.1.4.1.19376.1.12.1.3.6']/cda:code[@code='65894-8' or @code='65890-6']">
            [E_mesuresAcuiteVisuelle_OPH-BRE] Erreur de conformité :
            L'entrée FR-Liste-des-mesures-acuite-visuelle doit contenir une entrée FR-Mesure-acuite-visuelle (1.3.6.1.4.1.19376.1.12.1.3.6) pour la puissance de la sphère (code="65894-8" ou code="65890-6").
        </assert>
        
        <assert test=".//cda:observation[cda:templateId/@root='1.3.6.1.4.1.19376.1.12.1.3.6']/cda:code[@code='65896-3' or @code='65892-2']">
            [E_mesuresAcuiteVisuelle_OPH-BRE] Erreur de conformité :
            L'entrée FR-Liste-des-mesures-acuite-visuelle doit contenir une entrée FR-Mesure-acuite-visuelle (1.3.6.1.4.1.19376.1.12.1.3.6) pour la puissance du cylindre (code="65896-3" ou code="65892-2").
        </assert>
        
        <assert test=".//cda:observation[cda:templateId/@root='1.3.6.1.4.1.19376.1.12.1.3.6']/cda:code[@code='65895-5' or @code='65891-4']">
            [E_mesuresAcuiteVisuelle_OPH-BRE] Erreur de Conformité :
            L'entrée FR-Liste-des-mesures-acuite-visuelle doit contenir une entrée FR-Mesure-acuite-visuelle (1.3.6.1.4.1.19376.1.12.1.3.6) pour l'axe (code="65895-5" ou code="65891-4").
        </assert>
        
    </rule>  
    
    <rule context="*[cda:templateId/@root='1.3.6.1.4.1.19376.1.12.1.3.6']">
        <assert test=".//cda:act[cda:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.4.1']/cda:code/@code='70938-6'">
            [E_mesuresAcuiteVisuelle_OPH-BRE] Erreur de Conformité :
            L'entrée FR-Mesure-acuite-visuelle (1.3.6.1.4.1.19376.1.12.1.3.6) doit contenir une entryRelationship avec le code @code='70938-6' pour faire la liaison entre les mesures de réfraction et de l'acuité visuelle.
        </assert>
    </rule>
    
</pattern>

