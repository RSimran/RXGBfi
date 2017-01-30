# RXGBfi
This package provides a rough interface to XGBfi executable with R. It does this using the xgb.fi R function.
It calls the XGBfi executable with your data and presents the feature interaction in a Shiny Dashboard.

# Installation
Inorder to install this package the devtools R package is required. Once the devtools package is installed, RXGBfi can be installed using the following commands.

```r
library(devtools)
devtools::install_github("RSimran/RXGBfi")
```
The installation will install the following libraries if they are not installed:
* data.table
* dplyr
* DT
* shiny 
* xgboost
* openxlsx

During the initial function call, RXGBfi will check to see if XGBfi exists in the C:/xgbfi folder. If it does not, then the user will be prompted to download and install the XGBfi. If yes is chosen, then RXGBfi will download XGBfi from https://github.com/Far0n/xgbfi repository and install it in the C:/xgbfi folder. Then it will create two folders within the bin folder named EPPlus and NGenerics. These folders are required inorder for RXGBfi to run properly and should be created automatically.

# Demo
```r
library(xgboost)
library(Ecdat)
data(Icecream)
train.data <- data.matrix(Icecream[,-1])

bst <- xgboost(data = train.data, label = Icecream$cons, max.depth = 3, eta = 1, nthread = 2, nround = 2, objective = "reg:linear")


features <- names(Icecream[,-1])

xgb.fi(model = bst, features = features)
```

# Screenshot
![Alt text](https://raw.githubusercontent.com/RSimran/RXGBfi/master/RXGBfi.PNG)

