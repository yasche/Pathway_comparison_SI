# PID of current job: 2275411
mSet<-InitDataObjects("mass_all", "mummichog", FALSE)
mSet<-SetPeakFormat(mSet, "rmp")
mSet<-UpdateInstrumentParameters(mSet, 5.0, "mixed", "yes", 0.02);
mSet<-Read.PeakListData(mSet, "Replacing_with_your_file_path");
mSet<-SanityCheckMummichogData(mSet)
mSet<-SetPeakEnrichMethod(mSet, "mum", "v2")
mSet<-SetMummichogPval(mSet, 0.01)
mSet<-PerformPSEA(mSet, "hsa_kegg", "current", 2 , 100)
mSet<-PlotPeaks2Paths(mSet, "peaks_to_paths_0_", "png", 72, width=NA)
mSet<-SaveTransformedData(mSet)
