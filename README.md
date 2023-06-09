# **Procédure de Génération PDF avec XSL-FO et FOP**  
  
  
## ***Sommaire***

[Objet du document](#Objet-du-document)

[Introduction](#Introduction)

[Solutions pour la génération d’un document PDF](#Solutions-pour-la-génération-d’un-document-PDF)

[Schéma de fonctionnement](#Schéma-de-fonctionnement)

[Procédure de génération de fichier PDF](#Procédure-de-génération-de-fichier-PDF)

[Historique des évolutions](#Historique-des-évolutions)


## ***Objet du document***  
Ce document décrit la procédure de génération d’un PDF à partir d’une feuille de style en utilisant XSL-FO

## ***Introduction***  
XSL-FO qui veut dire XSL Formatting Objects est un langage de mise en forme de documents XML pour tous les supports tel que sur un viewer pour l’affichage ou en PDF pour l’impression  

Apache FOP (Formatting Objects Processor) est une API Java qui lit une arborescence d'objets de formatage et restitue les pages résultantes vers une sortie spécifiée.

## ***Solutions pour la génération d’un document PDF***   
La feuille de style de l’ANS contient deux mécanismes :  

 **Un mécanisme pour l’affichage en mode WEB** qui permet d’afficher un document CDA à l’écran conformément à la feuille de style de l’ANS (qui est une adaptation de la feuille de style publiée par HL7).  

 **Un mécanisme XSL-FO pour la génération d’un document PDF** (éventuellement pour impression) identique à l’affichage écran à partir du document CDA.
La feuille de style ANS est livrée avec un package qui contient les archives FOP ainsi que les archives utilisées pour l’affichage du Datamatrix INS.  

La feuille de style de l’ANS utilise :  

**XSL-FO** pour construire et structurer la feuille de style  
**FOP** pour générer le fichier PDF    
**RBarcode de J4L** pour générer le Datamatrix.  

**Pour la génération du PDF :**   
Plusieurs solutions permettent la génération du PDF : **XSL-FO + FOP, Saxon, Aspose, DOM, SAX**, **ALTOVA**, etc…  

La feuille de style de l’ANS utilise **XSL-FO + FOP.**  

**FOP** utilise aussi des archives Saxon. Saxon propose trois solutions : **Saxon-PE, Saxon-EE et Saxon-HE**.    

La feuille de style de l’ANS utilise une archive de **Saxon-HE.**  

**Pour la génération du Datamatrix :**  
Plusieurs solutions permettent la génération du datamatrix : **Barcode4J** d’Apache** et **Barcode Generator** d’Altenna House, etc…  

La feuille de style de l’ANS utilise **Barcode4J**.  

**Barcode4J** utilise quatre archives pour générer le Datamatrix : **rbarcode.jar, qrcode.jar, rbarcode-fop.jar** et **rbarcode-fop2.jar**.  

## ***Schéma de fonctionnement***  
![](https://github.com/nizarbs2508/XSL-FO/blob/main/img.jpeg)

## ***Procédure de génération de fichier PDF***    

Les étapes pour générer le PDF sont les suivantes :   

1) Dézipper l’archive **fop-2.8-bin.zip** livrée avec la feuille de style ANS.   
   - Le dossier FOP contient les archives de génération du datamatrix en plus de ceux pour la génération des PDF  

2) Ouvrir l’invite de commande «cmd» et se positionner dans le dossier fop de fop-2.8 :   


|>cd [Chemin\_du\_dossier]\fop-2.8-bin\fop-2.8\fop|
| - |

3) Lancer la commande ci-dessous pour générer le document PDF :  

|>fop -xml [Chemin\_du\_document\_XML\nom du fichier XML] -xsl [Chemin\_de\_la\_feuille\_de\_style\_XSL\CDA-FO.xsl] -pdf [Chemin\_où\_générer\_le\_PDF]\[nom\_à\_donner\_au\_PDF].pdf|
| - |

4) Le fichier XSL appelé en ligne de commande est notre feuille de style créé avec XSL-FO.  

5) Un fichier PDF est généré en sortie après le lancement de la commande.  

## ***Historique des évolutions***  


|**Date de publication**|**Version**|**Modifications apportées**|
| :-: | :- | :- |
|07/04/2023|V0.1|Création|
