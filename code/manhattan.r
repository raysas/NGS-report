install.packages('qqman')
library(qqman)
setwd('../data/TP_DATA_PROG/II.a.Plink')

gwas_results <- read.table("res_allelic.assoc", header = TRUE)

manhattan(gwas_results, 
          chr = "CHR", 
          bp = "BP", 
          p = "P", 
          snp = "SNP",
          col = c("black", "gray"),  
          suggestiveline = -log10(0.05),  
          genomewideline = -log10(1.45e-6),  
          ylim = c(0, 10),  
          lwd.suggestiveline = 1, 
          lwd.genomewideline = 1
)
abline(h = -log10(0.05), col = "red", lwd = 3, lty = 2)  
abline(h = -log10(1.45e-6), col = "blue", lwd = 3, lty = 1) 


gwas_results_2 <- read.table("res_geno.assoc.logistic", header = TRUE)

manhattan(gwas_results_2, 
          chr = "CHR", 
          bp = "BP", 
          p = "P", 
          snp = "SNP",
          col = c("black", "gray"), 
          suggestiveline = -log10(0.05), 
          genomewideline = -log10(1.45e-6), 
          ylim = c(0, 10),  
          lwd.suggestiveline = 1,  
          lwd.genomewideline = 1  
)

abline(h = -log10(0.05), col = "red", lwd = 3, lty = 2)  
abline(h = -log10(1.45e-6), col = "blue", lwd = 3, lty = 1) 


###########



# par(mfrow = c(1, 2), mar = c(5, 4, 4, 2) + 0.1) 
