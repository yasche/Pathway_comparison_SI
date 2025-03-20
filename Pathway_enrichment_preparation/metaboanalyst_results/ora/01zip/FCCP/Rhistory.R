# PID of current job: 4025436
mSet<-InitDataObjects("conc", "msetora", FALSE)
cmpd.vec<-c("C07005","C00307","C00127","C00105","C05635","C02301","C00319","C00836","C04100","C02990","C03546","C00052","C00158","C03889","C19434","C02862","C00029","C02305","C00570","C00167","C05526","C00103")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "kegg");
mSet<-CreateMappingResultTable(mSet)
mSet<-Setup.HMDBReferenceMetabolome(mSet, "FCCP.txt");
mSet<-SetMetabolomeFilter(mSet, T);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 72, width=NA)
mSet<-SaveTransformedData(mSet)
