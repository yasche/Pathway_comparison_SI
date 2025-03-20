# PID of current job: 4056286
mSet<-InitDataObjects("conc", "msetora", FALSE)
cmpd.vec<-c("C02301","C00670","C00062","C00003","C00307","C00127","C00105","C00015","C00020","C00051","C05635","C02990","C00257","C00199","C01657","C14785","C00362","C05382","C00052","C00043","C00167","C00130","C00158","C03794","C00360","C02862","C00029","C00147","C02305","C00570","C05526","C00118","C00946","C05282","C00055","C00864","C00103")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "kegg");
mSet<-CreateMappingResultTable(mSet)
mSet<-Setup.HMDBReferenceMetabolome(mSet, "Mena.txt");
mSet<-SetMetabolomeFilter(mSet, T);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 72, width=NA)
mSet<-SaveTransformedData(mSet)
