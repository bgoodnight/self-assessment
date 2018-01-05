library(knitr)
library(markdown)
library(rmarkdown)

survey = read.csv('data.csv', as.is = T)
survey = survey[-1,]
survey = survey[-1,]

group = "Project Officers"
aggregate <- subset(survey, grepl("1", survey$Q2.5))
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Science Officers"
aggregate <- subset(survey, grepl("2", survey$Q2.5))
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Evaluation Officers"
aggregate <- subset(survey, grepl("3", survey$Q2.5))
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "TA Coordinators"
aggregate <- subset(survey, grepl("4", survey$Q2.5))
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Science Coordinators"
aggregate <- subset(survey, grepl("5", survey$Q2.5))
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Communication Coordinators"
aggregate <- subset(survey, grepl("6", survey$Q2.5))
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Dedicated SME"
aggregate <- subset(survey, grepl("7", survey$Q2.5))
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Health Systems Team"
aggregate <- subset(survey, Q2.4 == 1)
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
                  )

group = "Opioid Overdose States Support Team"
aggregate <- subset(survey, Q2.4 == 2)
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Epidemiology and Surveillance Team"
aggregate <- subset(survey, Q2.4 == 3)
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Program Assistance and Coordination Team"
aggregate <- subset(survey, Q2.4 == 4)
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Violence and Injury Prevention Team"
aggregate <- subset(survey, Q2.4 == 5)
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "Evaluation and Integration Team"
aggregate <- subset(survey, Q2.4 == 6)
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "DUIP"
aggregate <- subset(survey, Q2.4 == 1 | Q2.4 == 2 | Q2.4 == 3 | Q2.4 == 4 )
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)

group = "DARPI"
aggregate <- subset(survey, Q2.4 == 5 | Q2.4 == 6 )
rmarkdown::render('groups.Rmd',
                  output_file =  paste(group, ' Aggregated Report ', Sys.Date(), ".pdf", sep='')
)