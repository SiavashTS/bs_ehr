source(file="convert.R")

mypatients <- subset(subset(patients,subset = ETHNICITY=="english"),subset = GENDER=="M")["ID"]
myarray <- observations[,c("PATIENT","DESCRIPTION","VALUE","UNITS")]

