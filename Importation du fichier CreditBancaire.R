#####Importation des données du fichier CreditBancaire###
df<-read.csv("CreditBancaire.csv")

#####Calcul de la moyenne du crédit####
mean(df$Credit)

#####Calcul de la moyenne du nombre de jours de retard######
mean(df$Jours)

#### Calcul de la moyenne du nombre de jours de retard par type de crédit####
moycommerce<-mean(df$Jours[df$Type=="Commerce"])
moyconsommation<-mean(df$Jours[df$Type=="Consommation"])
moyproduction<-mean(df$Jours[df$Type=="Production"])

##Mettons les moyennes sous formes de matrices pour la réalisation du graphe#
Graphe<-cbind(moycommerce,moyconsommation,moyproduction)

####### Réalisation du graphique en bâton####
barplot(Graphe,main = "Graphique en bâtons",col = "dodger blue")
