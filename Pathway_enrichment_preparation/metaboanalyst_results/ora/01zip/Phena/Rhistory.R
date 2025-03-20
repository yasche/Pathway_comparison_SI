# PID of current job: 4086972
mSet<-InitDataObjects("conc", "msetora", FALSE)
cmpd.vec<-c("C03017","C07005","C00062","C00003","C00307","C00127","C00105","C00015","C00020","C02494","C20387","C01586","C02301","C11430","C16207","C22599","C00319","C00836","C02990","C00199","C05382","C00362","C03546","C00052","C00167","C00262","C00364","C00158","C03794","C00360","C10438","C00157","C01495","C00242","C02862","C00864","C02571","C00029","C00147","C00284","C02305","C00570","C05526","C00946","C05282","C00055","C00043","C00103")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "kegg");
mSet<-CreateMappingResultTable(mSet)
mSet<-Setup.HMDBReferenceMetabolome(mSet, "Phena.txt");
mSet<-SetMetabolomeFilter(mSet, T);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 72, width=NA)
mSet<-SaveTransformedData(mSet)
