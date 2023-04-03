<?xml version="1.0" encoding="UTF-8"?>

<!--                 
    E_mesuresDeRefractionOrganizer_OPH-BRE
   Teste la conformité de l'entrée FR-Liste-des-mesures-de-refraction aux spécifications OPH-BRE du CI-SIS
   
   05/10/2021 : Création
   
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="E_mesuresDeRefractionOrganizer_OPH-BRE">
    <title>Vérification de la conformité de l'entrée FR-Liste-des-mesures-de-refraction aux
        spécifications OPH-BRE du CI-SIS</title>
    <rule context="*[cda:templateId/@root = '1.3.6.1.4.1.19376.1.12.1.3.3']">

        <assert
            test=".//cda:observation[cda:templateId/@root = '1.3.6.1.4.1.19376.1.12.1.3.7']/cda:code[@code = '65894-8' or @code='65890-6']"
            > [E_mesuresDeRefractionOrganizer_OPH-BRE] Erreur de conformité : L'entrée
            FR-Liste-des-mesures-de-refraction doit contenir une entrée FR-Mesure-de-refraction pour la
            puissance de la sphère (code="65894-8" ou code="65890-6").
        </assert>
        
        <assert
            test=".//cda:observation[cda:templateId/@root = '1.3.6.1.4.1.19376.1.12.1.3.7']/cda:code[@code = '65896-3' or @code='65892-2']"
            > [E_mesuresDeRefractionOrganizer_OPH-BRE] Erreur de conformité : L'entrée
            FR-Liste-des-mesures-de-refraction doit contenir un élement observation pour la
            puissance du cylindre (code="65896-3" ou code="65892-2").
        </assert>
    </rule>
</pattern>
