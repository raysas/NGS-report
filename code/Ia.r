setwd('../data/TP_DATA_PROG/')
install.packages('paramlink')
library(paramlink)
# Family number (identifier)•Individual number•Father's number (0 = no father in the sample analyzed)•Mother's number (0 = no mother in the sample analyzed)•Sex (1=male; 2 = female)•Disease status (1=not affected; 2 = affected; 0 = unknown)•Genotypes for the 13 markers (2 columns per marker; 1 allele  per column) -0 0 = unknown genotype
cols<-c('Family_number','Individual_number','Father_number','Mother_number', 'Sex', 'Disease_status','maerke1_1','maerke1_2','maerke2_1','maerke2_2','maerke3_1','maerke3_2','maerke4_1','maerke4_2','maerke5_1','maerke5_2','maerke6_1','maerke6_2','maerke7_1','maerke7_2','maerke8_1','maerke8_2','maerke9_1','maerke9_2','maerke10_1','maerke10_2','maerke11_1','maerke11_2','maerke12_1','maerke12_2','maerke13_1','maerke13_2')

fam<-read.table('I.a.Paramlink/fam.txt')
colnames(fam)<-cols
head(fam)

cols<-c('Family_number','Individual_number','Father_number','Mother_number', 'Sex', 'Disease_status','maerke1_1','maerke1_2','maerke2_1','maerke2_2','maerke3_1','maerke3_2','maerke4_1','maerke4_2','maerke5_1','maerke5_2','maerke6_1','maerke6_2','maerke7_1','maerke7_2','maerke8_1','maerke8_2','maerke9_1','maerke9_2','maerke10_1','maerke10_2','maerke11_1','maerke11_2','maerke12_1','maerke12_2','maerke13_1','maerke13_2')

fam<-read.table('I.a.Paramlink/fam.txt')
colnames(fam)<-cols
head(fam)
