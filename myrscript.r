#read the input data
stat1_interactions_new <- read.csv("~/Documents/FAES programming workshop/Desktop/r/stat1_interactions.tsv",sep="\t")

#extract the first two and the last column
statsmallnew <- stat1_interactions_new[,c(1,2,15)]

#extract the interactions with more than 0.5 score
statsmallnewfiltered <- subset(statsmallnew, combined_score >= 0.5)

#write the filtered interactions in to a file
write.table(statsmallnewfiltered, "statsmallfiltered2.txt", sep = "\t", quote = FALSE, row.names = FALSE)

#print the score distribution graph
png('statsmallnew2.png')
plot(statsmallnew$combined_score)
dev.off()

message("Script ran successfully, all outputs are in the working director")
