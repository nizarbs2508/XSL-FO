<?xml version="1.0" encoding="UTF-8"?>

<!--  E_AllergiesAndIntolerances_F-PRC.sch
    
    Teste la conformité d'une entrée utilisée dans le volet du CI-SIS aux spécifications de l'entrée 
    PCC allergies and Intolerances (1.3.6.1.4.1.19376.1.5.3.1.4.6)  
    Les contraintes présentes sont spécifiques du volet "Patients à Risques de Cardiologie".
    
    Historique :
    04/08/2011 : Création
    22/02/2021 : Renommage    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="E_AllergiesAndIntolerances_F-PRC">

    <title>CI-SIS Allergies and Intolerances (F-PRC)</title>
    <rule context='*[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.4.6"]'>

        <assert test='cda:participant/@typeCode = "CSM"'>
            [E_AllergiesAndIntolerances_F-PRC] Erreur de Conformité CI-SIS: L'allergène
            responsable de la réaction observée doit être présent. Un élément participant d'attribut
            typeCode='CSM' sera utilisé pour le décrire</assert>

        <assert
            test='
            (cda:participant[@typeCode = "CSM"]/cda:participantRole/cda:playingEntity/cda:code[@codeSystem = "2.16.840.1.113883.6.73"])'>
            [E_AllergiesAndIntolerances_F-PRC] Erreur de Conformité CI-SIS: Le médicament responsable de la réaction observée doit
            être codé à partir=de la nomenclature ATC ("2.16.840.1.113883.6.73)</assert>

        <!-- Si le type de réaction est DNAINT et pas de codes pour l'augmentation ou la diminution de l'INR -->
        <assert
            test='not(cda:code[@code = "DNAINT"]) or ((cda:value/@code = "10022401") or (cda:value/@code = "10022402"))'>
            [E_AllergiesAndIntolerances_F-PRC] Erreur de Conformité CI-SIS: Les effets d'augmentation ou de diminution de l'INR
            doivent être notés dans ce contexte non-allergique d'intolérance médicamenteuse</assert>


    </rule>
</pattern>
