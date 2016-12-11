# Inspecting +130M records (21Gb) of birth in the USA: 1969:2008

library(bigrquery)
project <- dsotm-rsa


sql <- "SELECT plurality,
/* Finds average and standard deviation */
AVG(weight_pounds) baby_weight,
STDDEV(weight_pounds) baby_weight_stdev,
AVG(mother_age) mother_age,
AVG(gestation_weeks) gest_weeks
FROM
[publicdata:samples.natality]
/* Group the result values by */
/* number of babies at birth  */
GROUP BY  plurality"


result<-query_exec(sql, project = project)

par(mfrow=c(1,3))
with(result,plot(plurality,baby_weight))
with(result,plot(plurality,gest_weeks))
with(result,plot(plurality,mother_age))
