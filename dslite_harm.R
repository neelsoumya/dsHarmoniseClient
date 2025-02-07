library(DSLite)
dslite.server <- newDSLiteServer(tables=list(IPD=IPD))

builder <- DSI::newDSLoginBuilder()
builder$append(server="server1", url="dslite.server", table = "IPD", driver = "DSLiteDriver")
logindata <- builder$build()

datashield.logout(conns = connections)
connections <- datashield.login(logins=logindata, assign = TRUE)


data <- getDSLiteData(connections, "D")

# TODO: use ds.upload for IPD and use use plain dsBaseClient for harminization

# TODO: use ds.upload
#   https://github.com/lifecycle-project/ds-upload/blob/master/R/upload.R

# TODO: use datashield.login to upload this table
#   https://github.com/datashield/opal/blob/master/R/datashield.login.r
#   or dsloginbuilder
#   https://github.com/datashield/DSI/blob/master/R/DSLoginBuilder.R
