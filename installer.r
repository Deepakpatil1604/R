# Install BiocManager if missing
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

# ---- CRAN packages ----
install.packages(c(
  "tidyverse",
  "data.table",
  "ggplot2",
  "pheatmap",
  "EnhancedVolcano",
  "RColorBrewer",
  "factoextra",
  "cluster",    # for K-means clustering
  "gridExtra"   # for arranging plots
))

# ---- Bioconductor packages ----
BiocManager::install(c(
  "limma",
  "Biobase",
  "edgeR",
  "genefilter",
  "marray",
  "GOstats",
  "clusterProfiler",
  "org.Hs.eg.db",
  "GOSemSim",
  "GO.db"
), ask = FALSE, update = FALSE, force = TRUE)


# ---- Load packages to check if installed ----
cran_pkgs <- c("tidyverse","data.table","ggplot2","pheatmap",
               "EnhancedVolcano","RColorBrewer","factoextra","cluster","gridExtra")
bioc_pkgs <- c("limma","Biobase","edgeR","genefilter","marray",
               "GOstats","clusterProfiler","org.Hs.eg.db","GOSemSim","GO.db")

for (pkg in c(cran_pkgs, bioc_pkgs)) {
  if (suppressWarnings(require(pkg, character.only = TRUE))) {
    message("✅ Loaded: ", pkg)
  } else {
    message("❌ Failed: ", pkg)
  }
}
