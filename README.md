# Génération PDF avec XSL-FO et FOP


## Introduction
XSL-FO est XSL Formatting Objects et peut être utilisé pour formater des données XML.

Apache FOP (Formatting Objects Processor) est une application Java qui lit une arborescence d'objets de formatage et restitue les pages résultantes vers une sortie spécifiée.
## Comment ça fonctionne

![](https://github.com/nizarbs2508/XSL-FO/blob/main/img.jpeg)


## Solutions pour la génération d’un document PDF
La feuille de style créé par l’ANS contient deux mécanismes :

- Un mécanisme qui génère la feuille de style standard pour afficher les documents CDA en mode web avec un désigne qui correspond au désigne de HL7.
- Un mécanisme XSL-FO pour afficher le document CDA avec le même désigne HL7 mais en mode PDF.

Nous allons expliquer dans notre document la procédure de génération du document PDF (développer avec XSL-FO) avec le projet Apache FOP.

La feuille de style ANS est livrée avec un package qui contient les .jar de FOP ainsi que les .jar utilisés pour l’affichage de la Datamatrix.

Plusieurs solutions sont mis en place soit pour la génération du PDF soit pour la génération de la Datamatrix. Parmi les différentes solutions trouvées sur le marché pour générer un document PDF on trouve **Saxon, XSL-FO + FOP, Aspose, DOM, SAX, ALTOVA**. FOP utilise aussi des jars Saxon pour créer le document PDF. Saxon présente trois solutions, deux payantes (**Saxon-PE et Saxon-EE**) et une solution gratuite (**Saxon-HE**). La solution Saxon-HE possède des jars commerciaux gratuites qui peuvent être intégrer au package FOP pour générer gratuitement un document FOP développer avec XSL-FO.    

Les autres projets aussi tels que Aspose et ALTOVA sont payantes.

D’autres jars ont été utilisé pour afficher la Datamatrix dans le document PDF. 

Dans notre cas nous avons utilisé une solution payante, c’est le projet **J4L**. 

J4L utilise quatre fichiers jars pour générer la Datamatrix ou même un code à barre. C’est trois jars sont rbarcode.jar, qrcode.jar, rbarcode-fop.jar et rbarcode-fop2.jar. Cette solution est payante.

` `D’autres solutions sont présentent sur le marché tel que **Barcode4J de Apache et Barcode Generator de Altenna House**. 

Notre solution est basé alors sur **XSL-FO** pour construire et structurer la feuille de style, **FOP** pour générer le fichier PDF et  **RBarcode de J4L** pour générer la Datamatrix.

## Procédure de génération d’un fichier PDF

- Dézipper le fichier fop-2.8.zip livré avec la feuille de style ANS. Nous avons utilisé la version 2.8 de FOP pour la génération du PDF. 

Le dossier FOP contient mise à part ces fichiers jar, les quatre jars mentionné précédemment pour l’affichage de la Datamatrix.



- Ouvrir l’invite de commande « cmd » et se positionner dans le dossier fop de fop-2.8 :


|<p># cd path\_to\_fop\_folder\fop-2.8-bin\fop-2.8\fop</p><p></p>|
| :- |


- Lancer la commande ci-dessous pour générer le document PDF :

|<p># fop -xml \path\_to\_xml\_file\ANEST-CR-ANEST\_2022.01.xml -xsl \path\_to\_xsl\_file\CDA-FO.xsl -pdf \path\_to\_output\_pdf\_file\output.pdf</p><p></p>|
| :- |

- Le fichier XSL appelé en ligne de commande est notre feuille de style créé avec XSL-FO.

- Un fichier PDF est généré en sortie après le lancement de la commande.

## Conclusion

Toutes les solutions de génération de fichier PDF avec XSL sont maintenable et facile à implémenté avec des bonnes connaissance en XSLT et XSL-FO. Notre choix a été fait sur XSL-FO + FOP vu que 

XSL-FO une est un langage open source compatible avec Apache FOP qui est aussi un projet open source.




