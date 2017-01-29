# RXGBfi

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


