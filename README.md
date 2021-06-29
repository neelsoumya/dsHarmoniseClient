# dsHarmoniseClient

## Introduction

This is a package to perform harmonization of data in DataSHIELD. It assumes you have no access to the data.

## Prerequisite

* Follow the installation instructions on https://github.com/bonorico/gcipdr

On the system, you need dsBaseClient, DSI, DSOpal, DSLite, dsBase installed. It assumes you are using this DataSHIELD VM: https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/1658093595/RStudio+Server+based+Development+VM


* Install R Studio and the development environment as described below:

    * https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/12943461/Getting+started


* Install the virtual machines as described below:

    * https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/931069953/Installation+Training+Hub-+DataSHIELD+v6

    * https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/1657634881/Testing+100+VM

    * https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/1657634898/Tutorial+6.1.0+100+VM

## Structure

There are 3 files:

* `gauss_cop.R` which is a basic usage of the gcipdr functionality and install ation
* `data_gen.R` which uses DataSHIELD functions to regenerate a local simulation of the remote data
* `dslite_harm.R` the beginnings of how to write harmonisation code against the simulated data held in DSLite. This should be easy-ish because you can see the data, although you are constrained to DataSHIELD commands. The idea is then that you run your DataSHIELD harmonisation commands against the real data to generated your harmonised data. 
* `dsbase_harm.R` outline of code to do harmonization in dsBaseClient and dsBase


## Contact

* Soumya Banerjee and Tom Bishop
