library(isdparser)

path <- ('3391047210197dat.txt')
reader.in<-isd_parse(path,progress = TRUE)


ftp://ftp.ncdc.noaa.gov/pub/data/gsod/2016/ # ftp of aggregated daily ISD data for 9000 stations
  ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite # ftp of lite version of entire ISD dataset..
ftp://ftp.ncdc.noaa.gov/pub/data/noaa # full version of  ISD data