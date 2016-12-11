url.out <- GetDODSDates("fnl",request.sleep = 1) # get model runs avaialble

latest.model <- head(url.out$url, 1) # select latest model run url
model.runs <- GetDODSModelRuns(latest.model) # call lastest model run 
latest.model.run <- tail(model.runs$model.run, 1)

model.info <- GetDODSModelRunInfo(latest.model, tail(model.runs$model.run, 1)) # some info on the model parameters
print(model.info)

#Download worldwide temperature data at 2 m
variable <- "tcdclcll"
time <- c(0,0) # analysis run, index starts at 0
lon <- c(0, 3071) # select all longitude points
lat <- c(0, 1535) # select all latitude points
model.data <- DODSGrab(latest.model, latest.model.run,
                       variable, time, lon, lat) # grab model data 

#Make it into a nice array and plot it
model.grid <- ModelGrid(model.data, c(0.5, 0.5))
image(model.grid$z[1,1,,])


model.urls <- GetDODSDates("gfs_0p50")
latest.model <- tail(model.urls$url, 1)
model.runs <- GetDODSModelRuns(latest.model)
latest.model.run <- tail(model.runs$model.run, 1)

model.info <- GetDODSModelRunInfo(latest.model, tail(model.runs$model.run, 1)) # some info on the model parameters
print(model.info)


variable <- "tmp2m"
time <- c(0, 0) #Analysis run, index starts at 0
lon <- c(0, 719) #All 720 longitude points
lat <- c(0, 360) #All 361 latitude points
model.data <- DODSGrab(latest.model, latest.model.run,
                       variable, time, lon, lat)
