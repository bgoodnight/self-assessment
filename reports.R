library(knitr)
library(markdown)
library(rmarkdown)

survey = read.csv('data.csv', as.is = T)
survey = survey[-1,]
survey = survey[-1,]

for (individual in unique(rownames(survey))){
  rmarkdown::render('combined.Rmd',  # file 2
                    output_file =  paste("report_", survey[individual,'Q2.2'], survey[individual,'Q2.1'], '_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = '~\Reports')
}

