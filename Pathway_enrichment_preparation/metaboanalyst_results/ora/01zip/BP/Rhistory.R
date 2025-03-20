# PID of current job: 3972407
mSet<-InitDataObjects("conc", "msetora", FALSE)
cmpd.vec<-c("C02301","C00062","C05526","C00307","C00127","C00020","C00144","C05635","C20387","C01586","C05551","C00319","C04230","C04100","C02990","C21484","C05382","C00052","C00105","C00158","C00360","C00157","C06525","C00550","C00380","C02862","C00864","C00029","C00147","C00284","C00570","C14550","C00946")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "kegg");
mSet<-CreateMappingResultTable(mSet)
mSet<-Setup.HMDBReferenceMetabolome(mSet, "BP.txt");
mSet<-SetMetabolomeFilter(mSet, T);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 72, width=NA)
mSet<-SaveTransformedData(mSet)
