# PID of current job: 415387
mSet<-InitDataObjects("conc", "msetora", FALSE)
cmpd.vec<-c("C03017","C00307","C00127","C02990","C02301","C05284","C07074","C21484","C14635","C01657","C00051","C03672","C00468","C09633","C10598","C00147","C00170","C19670","C02571","C00570")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "kegg");
mSet<-CreateMappingResultTable(mSet)
mSet<-Setup.HMDBReferenceMetabolome(mSet, "Comp.txt");
mSet<-SetMetabolomeFilter(mSet, T);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_2_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_2_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_3_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_3_", "png", 72, width=NA)
mSet<-SaveTransformedData(mSet)
