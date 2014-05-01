library(dsbaseclient)

# load logindata
load("~datashield/ecp/logindata.ecp.workshop.rda")
logindata <- logindata.ecp.workshop

# assign some variables
myvar <- list("PM_HIP_SIZE","PM_WEIGHT")
opals <- datashield.login(logins=logindata, assign=TRUE, variables=myvar)

# do some analysis
ds.class(opals,quote(D$PM_HIP_SIZE))
ds.class(opals,quote(D$PM_WEIGHT))

# free server resources
datashield.logout(opals)