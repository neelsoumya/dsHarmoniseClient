#library(DSLite)
library(dBaseClient)
require('DSI')
require('DSOpal')
require('dsBaseClient')

builder <- DSI::newDSLoginBuilder()

builder$append(server = "study1", 
               url = "http://192.168.56.100:8080/", 
               user = "administrator", password = "datashield_test&", 
               table = "test.meat_country1_harmonized", driver = "OpalDriver")
               
builder$append(server = "study2", 
               url = "http://192.168.56.100:8080/", 
               user = "administrator", password = "datashield_test&", 
               table = "test.meat_country2_harmonized", driver = "OpalDriver")               


logindata <- builder$build()

connections <- DSI::datashield.login(logins = logindata, assign = TRUE, 
                                     symbol = "D")

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
