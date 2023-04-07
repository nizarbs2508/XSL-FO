|![](Aspose.Words.61f61232-83b2-473f-9708-78d507c6915f.001.png)|Procédure de génération de PDF – XSL-FO|07/04/2023|
| :-: | :-: | :-: |

![](Aspose.Words.61f61232-83b2-473f-9708-78d507c6915f.002.png)![](Aspose.Words.61f61232-83b2-473f-9708-78d507c6915f.003.png)




|<p><a name="ole_link1"></a><a name="ole_link2"></a>RÉFÉRENTIELS</p><p>Cadre d'interopérabilité des SIS - Couche Contenus</p><p>NOTICE</p><p>Feuille de style</p><p>**Procédure de Génération PDF avec XSL-FO et FOP**</p><p>07/04/2023</p>|
| - |

![](Aspose.Words.61f61232-83b2-473f-9708-78d507c6915f.004.png)

**Sommaire**

[1	Objet du document	3](#_toc131776339)

[2	Introduction	3](#_toc131776340)

[3	Solutions pour la génération d’un document PDF	3](#_toc131776341)

[4	Schéma de fonctionnement	4](#_toc131776342)

[5	Procédure de génération d’un fichier PDF	4](#_toc131776343)

[6	Historique des évolutions	5](#_toc131776344)


1. # **<a name="_toc131776339"></a>Objet du document**
Ce document décrit la procédure de génération d’un PDF à partir d’une feuille de style en utilisant XSL-FO
1. # <a name="_toc131776340"></a>**Introduction**
XSL-FO qui veut dire XSL Formatting Objects est un langage de mise en forme de documents XML pour tous les supports tel que sur un viewer pour l’affichage ou en PDF pour l’impression

Apache FOP (Formatting Objects Processor) est une API Java qui lit une arborescence d'objets de formatage et restitue les pages résultantes vers une sortie spécifiée.
1. # <a name="_toc131776341"></a>**Solutions pour la génération d’un document PDF**
La feuille de style de l’ANS contient deux mécanismes :

- **Un mécanisme pour l’affichage en mode WEB** qui permet d’afficher un document CDA à l’écran conformément à la feuille de style de l’ANS (qui est une adaptation de la feuille de style publiée par HL7).
- **Un mécanisme XSL-FO pour la génération d’un document PDF** (éventuellement pour impression) identique à l’affichage écran à partir du document CDA.

La feuille de style ANS est livrée avec un package qui contient les archives FOP ainsi que les archives utilisées pour l’affichage du Datamatrix INS.

La feuille de style de l’ANS utilise :

- **XSL-FO** pour construire et structurer la feuille de style
- **FOP** pour générer le fichier PDF 
- **RBarcode de J4L** pour générer le Datamatrix.

**Pour la génération du PDF :**

Plusieurs solutions permettent la génération du PDF : **XSL-FO + FOP, Saxon, Aspose, DOM, SAX**, **ALTOVA**, etc…

La feuille de style de l’ANS utilise **XSL-FO + FOP.**

**FOP** utilise aussi des archives Saxon. Saxon propose trois solutions : **Saxon-PE, Saxon-EE et Saxon-HE**. 

La feuille de style de l’ANS utilise une archive de **Saxon-HE.**

**Pour la génération du Datamatrix :**

Plusieurs solutions permettent la génération du datamatrix : **Barcode4J** d’Apache** et **Barcode Generator** d’Altenna House, etc…

La feuille de style de l’ANS utilise **Barcode4J**.

**Barcode4J** utilise quatre archives pour générer le Datamatrix : **rbarcode.jar, qrcode.jar, rbarcode-fop.jar** et **rbarcode-fop2.jar**.


1. # <a name="_toc131776342"></a>**Schéma de fonctionnement**

![Une image contenant diagramme

Description générée automatiquement](Aspose.Words.61f61232-83b2-473f-9708-78d507c6915f.005.jpeg)

1. # <a name="_toc131776343"></a>**Procédure de génération d’un fichier PDF**

<a name="_toc122352536"></a>Les étapes pour générer le PDF sont les suivantes :

1) Dézipper l’archive **fop-2.8-bin.zip** livrée avec la feuille de style ANS.
   - Le dossier FOP contient les archives de génération du datamatrix en plus de ceux pour la génération des PDF

1) Ouvrir l’invite de commande «cmd» et se positionner dans le dossier fop de fop-2.8 :


|<p>>cd [Chemin\_du\_dossier]\fop-2.8-bin\fop-2.8\fop</p><p></p>|
| - |

1) Lancer la commande ci-dessous pour générer le document PDF :

|<p>>fop -xml [Chemin\_du\_document\_XML\nom du fichier XML] -xsl [Chemin\_de\_la\_feuille\_de\_style\_XSL\CDA-FO.xsl] -pdf [Chemin\_où\_générer\_le\_PDF]\[nom\_à\_donner\_au\_PDF].pdf</p><p></p>|
| - |

1) Le fichier XSL appelé en ligne de commande est notre feuille de style créé avec XSL-FO.

1) Un fichier PDF est généré en sortie après le lancement de la commande.


1. # <a name="_toc131776344"></a>**Historique des évolutions**


|**Date de publication**|**Version**|**Modifications apportées**|
| :-: | :- | :- |
|07/04/2023|V0.1|Création|

**\*\*\* FIN DU DOCUMENT \*\*\***
Notice ***Feuille de style***		5 / 5
