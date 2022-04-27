_________________________________________________________________________________________________
## Bugs Buy Steady Releases from Hydropower Producers to Encourage more Synergistic Reservoir Management 
_________________________________________________________________________________________________

This study is part of my M.S. degree in Civil and Environmental Engineering at **Utah State University, Utah, USA**

The research is part of Future of the Colorado River Project and partially funded by Higher Education Commission (HEC) Pakistan

Corresponding Author: **Moazzam Ali Rind** (moazzamalirind@gmail.com)

Advised by: **Dr. David E. Rosenberg** (http://rosenberg.usu.edu/)

Starting Date: 6/1/2019

Lasted updated: 4/24/2022
_________________________________________________________________________________________________________________________________________________________________________________

## Project Summary: 

This study quantifies tradeoffs between the number of days of steady reservoir release and hydropower objectives. The steady flow day— constant releases throughout the day —helps aquatic invertebrates lay and hatch eggs. A Bug Flow Experiment for Glen Canyon Dam where weekend summer releases were kept low and steady has been executed since 2018. The overarching questions are:1) How does hydropower revenue vary as steady flow days expand from weekends to weekdays?                      2) How to use tradeoff results to suggest an ecosystem manager budget, number, and timing for promising days to purchase steady releases from hydropower producers? 
The optimization model with constraint method was used to calculate the tradeoffs. The model runs for one month with two sub-daily timesteps and is subjected to reservoir’s physical and managerial constraints. Estimates include scenarios that vary monthly release volume, weekend offset release, weekday on- and off-peak energy prices, and price type (market and contract). The results help design a program where ecosystem managers can purchase additional days of steady releases from hydropower producers and compensate the producers for the lost hydropower revenue.
	
________________________________________________________________________________________________________________________________________________________________________________
## Objectives

•	Quantify tradeoffs between ecosystem (number of steady low flow days) and traditional management (monthly hydropower revenue) objectives.

•	Factors influencing the shape and position of the tradeoff curve (e.g. price differential between on- and off-peak during weekdays, monthly release volume, offset releases, price type (Market and Contract), and days tempelate (Weekday-Weekday vs Saturday-Sunday-Weekday)).

•	Tradeoff variation across the months and how these tradeoffs can help hydropower producers and ecosystem managers better understand how to resolve the conflict between hydropower and ecosystem objectives.
_________________________________________________________________________________________________________________________________________________________________________________
## Features of the study

1. We have transformed a monthly linear hydropower objective with 744 hourly release decisions (24 hours *31 days) to a linear problem with only 6 sub-daily decisions i.e: 3 day type (Saturday, Sunday, and Weekday) and 2 periods per day.

2. The model can produce results for scenarios: monthly release volumes,on-and off-peaks energy pricing differential, offset release between off-peak weekday and weekend, and price type (market and contract).

3. Only two periodic releases per day and those releases remain constant for the month under similar flowpattern (Steady and hydropeak).

4. Concept of bugs buying water from hydropower producers by paying the losses. Tradeoffs of the months provide purchase price ($/day) of different day types during months, hence, ecosystem managers make informed purchase decisions. 

5. Example of trade-off analysis used for multi-objective decision making.

6. The study is replicable and adaptable to other sites and designer flow experiments (e.g. HFEs)

_________________________________________________________________________________________________________________________________________________________________________________
## Model Formulation


![image](https://user-images.githubusercontent.com/46287583/165018551-6ae1fef8-0059-4f9e-909e-1126a49c73b5.png)



_________________________________________________________________________________________________________________________________________________________________________________
**Details of Respository Contents**

Basically there are three distinct folders:
**a.** Months of 2018
**b.** Supporting Data
**c.** Documents

**a. Months of 2018:**
Each of the month folder has three sub-folders: Contract_Price_Model, Contract-Market_Price_Model, and Miscellaneous. There is also readme file which contains directions to run the model and reproduce results. 
For example: Folder " March 2018". The Contract_Price_model sub-folder has project file (.gpr), GAMS code file (.gms), and GAMS output files (e.g. .gdx, .xlxs, .lst, etc.). There are no input files because the code file has all the inputs defined. To run the model for scenarios, please update inputs in the code file. Also, it is not necessary to use the given project file (.gpr); instead you can create a new project in GAMS IDE and easily run the code file in that new project if you own a valid GAMS license.                                                                                                                                                      Similarly, Market-Contract_Price_Model subfolder has project file (.gpr), GAMS code file (.gms), and GAMS output files (e.g. .gdx, .xlxs, .lst, etc.) for the Market-Contract price model version. There are ample comments in the code files which are expected to help users understand and navigate easily. Finally, Miscellaneous sub-folder contains validation files, observed hydrographs, and Excel file comparing results from both model versions (Contract and Market-Contract price models).         

**b. Supporting Data**
This folder contains energy Rates used in the analysis and some gathered historical energy prices. Unfortunately, there are minimum details available related to energy prices. There are observed hydrographs from 2013 to 2021 and those excel files have some initial data analysis, visualization, and selections. Models Results Summary.xlxs file has compilation of results from model versions and scenarios. Hydropower fluctuation file has rough estimate of power variation from change in reservior storage level. Finally, there is a folder named "Weekend-Weekday" that has files from a model version with only 2 day types: Weekend-Weekday. We didn't focus this version of the model for analysis because it overshadows the importance of Saturday energy prices.
 
**c. Documents**
There are documents produced during this research including proposal and final thesis/article. There are also documents about different model version we reject due to various reasons. Mainly, thesis file will be sufficient to understand the overall study.
_________________________________________________________________________________________________________________________________________________________________________________
## Required Softwares

1. General Algebraic Modeling System (GAMS), which can be freely downloaded from (https://www.gams.com/download/). We used GAMS 30.3 version and acquired license to run the model.

2. Microsoft Excel. We used Office 2016 for this analysis.
________________________________________________________________________________________________________________________________________________________________________________
## Recommended Citation

Moazzam Ali Rind and David E. Rosenberg (2022). "Bugs Buy Steady Releases from Hydropower Producers to Encourage more Synergistic Reservoir Management". Utah State University, Logan, Utah. https://github.com/moazzamalirind/GCD_BugFlowExperiment

