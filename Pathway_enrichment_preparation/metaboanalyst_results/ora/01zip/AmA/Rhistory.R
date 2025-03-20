# PID of current job: 3933685
mSet<-InitDataObjects("conc", "msetora", FALSE)
cmpd.vec<-c("C00670","C00588","C00307","C00105","C00015","C00020","C00127","C00082","C19463","C20387","C00319","C04230","C02990","C11339","C02301","C21484","C00199","C01657","C00093","C03546","C05382","C00052","C00167","C00364","C00299","C03794","C00005","C00078","C03672","C00463","C07471","C00360","C00350","C00157","C00550","C00380","C02862","C00029","C00284","C02305","C00570","C14550","C00946","C05282","C00043","C00103")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "kegg");
mSet<-CreateMappingResultTable(mSet)
mSet<-Setup.HMDBReferenceMetabolome(mSet, "AmA.txt");
mSet<-SetMetabolomeFilter(mSet, T);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 72, width=NA)
mSet<-SaveTransformedData(mSet)
