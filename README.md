_________________________________________________________________________________________________
## Bugs Buy Steady Releases from Hydropower Producers to Encourage more Synergistic Reservoir Management 
_________________________________________________________________________________________________

This study is part of my M.S. degree in Civil and Environmental Engineering at **Utah State University, Utah, USA**

The research is part of Future of the Colorado River Project and partially funded by Higher Education Commission (HEC), Pakistan

Corresponding Author: **Moazzam Ali Rind** (moazzamalirind@gmail.com)

Advised by: **Dr. David E. Rosenberg** (http://rosenberg.usu.edu/)

Starting Date: 6/1/2019

Lasted updated: 1/28/2025
_________________________________________________________________________________________________________________________________________________________________________________
## Project Summary: 
This study quantifies tradeoffs between the number of days of steady reservoir release and hydropeaking objectives. The steady flow day— constant releases throughout the day —helps aquatic invertebrates lay and hatch eggs. A Bug Flow Experiment for Glen Canyon Dam where weekend summer releases were kept low and steady has been executed since 2018. The overarching questions are:1) How does hydropeaking value vary as steady flow days expand from weekends to weekdays? 2) How to use tradeoff results to suggest an ecosystem manager budget, number, and timing for promising days to purchase steady releases from hydropower producers? The optimization model with constraint method was used to calculate the tradeoffs. The model runs for one month with two sub-daily timesteps and is subjected to reservoir’s physical and managerial constraints. Estimates include scenarios that vary monthly release volume, weekend offset release, weekday on- and off-peak energy prices, and price type (market and contract). The results help design a program where ecosystem managers can purchase additional days of steady releases from hydropower producers and compensate the producers for the lost hydropower revenue.
________________________________________________________________________________________________________________________________________________________
## Objectives
•	Quantify tradeoffs between ecosystem (number of steady low flow days) and traditional management (monthly hydropeaking value) objectives.

•	Factors influencing the shape and position of the tradeoff curve (e.g. price differential between on- and off-peak during weekdays, monthly release volume, offset releases, price type (Market and Contract), and days template (Weekday-Weekday vs Saturday-Sunday-Weekday)).

•	Monthly Tradeoff variations and how these tradeoffs can help hydropower producers and ecosystem managers better understand and address the conflict between hydropower generation and ecosystem objectives.
_________________________________________________________________________________________________________________________________________________________________________________
## Features of the study
1. We have transformed a monthly linear hydropower objective with 744 hourly release decisions (24 hours *31 days) to a linear problem with only 6 sub-daily decisions i.e: 3 day type (Saturday, Sunday, and Weekday) and 2 periods per day.

2. The model can produce results for scenarios: monthly release volumes, on-and off-peaks energy pricing differential, offset release between off-peak weekday and weekend, and price type (market and contract).

3. Only two periodic releases per day and those releases remain constant for the month under similar flowpatterns (Steady and hydropeak).

4. Concept of bugs buying water from hydropower producers by paying the losses. Tradeoffs of the months provide purchase price ($/day) of different day types during months, hence, ecosystem managers make informed purchase decisions. 

5. Example of trade-off analysis used for multi-objective decision making.

6. The study is replicable and adaptable to other sites and designer flow experiments (e.g. HFEs)
_______________________________________________________________________________________________________________________________________________________________________________
## Model Formulation
![image](https://github.com/moazzamalirind/GCD_BugFlowExperiment/blob/main/Supporting%20Data/Model_Structure.png)
________________________________________________________________________________________________________________________________________________________________________________
**Details of Respository Contents**

Basically there are three distinct folders:
**a.** Months of 2018
**b.** Supporting Data
**c.** Documents

**a. Months of 2018:**
Each of the month folder has three sub-folders: Contract_Price_Model, Contract-Market_Price_Model, and Miscellaneous. There is also readme file which contains directions to run the model and reproduce results. 
For example: Folder "March 2018". The Contract Price model sub-folder has project file (.gpr), GAMS code file (.gms), and GAMS output files (e.g. .gdx, .xlxs, .lst, etc.). The code file contains all predefined inputs and includes comments explaining the inputs and functions. This makes it adaptable for various scenarios by simply updating the inputs. The provided project file (.gpr) is only for convenience. Alternatively, users with a valid GAMS license can create a new project in the GAMS IDE and run the code file directly. Similarly, Market-Contract Price Model subfolder contains project file (.gpr), GAMS code file (.gms), and GAMS output files (e.g. .gdx, .xlxs, .lst, etc.) for the Market-Contract price model version. The code file includes sufficient comments to help users understand differences and navigate easily. Finally, Miscellaneous sub-folder contains validation files, observed hydrographs, and Excel file comparing results from both model versions (Contract_vs_Market-Contract Results.xlxs).

**b. Supporting Data**
This folder contains energy Rates used in the analysis and some gathered historical energy prices. Unfortunately, there are minimum details available related to energy prices. There are observed hydrographs from 2013 to 2021 and those excel files have some initial data analysis, visualization, and selections. Hydropower fluctuation file has rough estimate of power variation from change in reservior storage level.
Initially, we developed a model with two daytypes: Weekday and Weekend. However, this overlooked the importance of Saturday energy prices. To address this, we created an updated model with three daytypes (Weekday, Saturday, and Sunday) and performed preliminary comparisons and calculations to assess the improvement. These calculations, documented in "Model Results Summary.xlsx," are primarily for our reference and may not be easily understandable to users.

**c. Documents**
Throughout this project, we produced various documents, including the proposal, thesis, and article drafts. Details of our initial linear model are in "Rind_LinearModel_Final.docx." The thesis, along with the final article version "Final_Draft_JHI_2025.pdf", provides a comprehensive overview of the study. Both .docx and .pdf formats are included for user convenience.
_________________________________________________________________________________________________________________________________________________________________________________
## Required Softwares
1. General Algebraic Modeling System (GAMS), which can be freely downloaded from (https://www.gams.com/download/). We used GAMS version 30.3 and acquired license to run the model.

2. Microsoft Excel. We used Office 2016 for this analysis.
________________________________________________________________________________________________________________________________________________________
## Directions to Reproduce Results

First download folders name: Models and Supporting Data. Save those folder on your local machine at any desired drive location. For example: E:\GAMS\Models & E:\GAMS\Supporting Data.

**Figure 1**
1. Download 15 mins observed hydrograph of August 2018 from: https://waterdata.usgs.gov/usa/nwis/uv?09380000
2. Paste the downloaded data in the given Excel file. The Excel file named "Hydrographs_Observed_Used" is available in the Supporting Data folder (Supporting Data/Hydrographs_Observed_Used.xlsx). Move to the worksheet named "August_2018" and paste the downloaded release data against the time in the blue colored cells. You can visulaze the updated hydrograph in the worksheet named "August_2018 (Hydrograph)".

**Table 1**
1. Download folder named "Validation" available at GCD_BugFlowExperiment/Models/August 2018/Validation and save downloaded folder at your desired location. 
2. You will see number of files with different extensions (e.g. .gms, .log, .lst, .lxi, .xls, .gpr). These are input and output files of two validation models: a) Hourly model (hourly releases and  energy prices are model inputs) b) Saturday-Sunday-Weekday model (periodic releases and energy prices for different daytypes are model inputs). Note: Details of the hourly releases and energy prices, as well as, estimation of periodic releases and energy prices are present in excel file " Input_August2018.xlsx".
3. Now open GAMS IDE. Click start => gamside or if you have IDE icon on desktop double click that. A blank GAMS interface will show up. 
4. Either you can create a new project (File/Project/New Project) or you can open the given project "Validation.gpr" in the downloaded folder. Use only one method. In case you decided to create a new project, save that new project in the same folder where other downloaded files are located. Once you will be able to create or open a project then the top most bar will tell you the location of the project you are working in.
5. Now we have to bring the code file (.gms) into our project. Click File/Open. Open Window will appear. Set Files of type: Gams files (*.gms). Now if your project and files are saved in the same folder you will see two files: a) August18_Sat_Validation b) August2018_Validation(Hourly). Click one and click open. For instance, the first one we are opening is Saturday-Sunday-Weekday day model code so click August18_Sat_Validation. The code file contains all neccessary inputs and there is no need of modification or any external input file. All you have to do is run the model. There are couple of ways to run the model. A) Press F9 on your keyboard. B) Click the Run icon available in the icon bar (Hint: Point your mouse at each of the icons and it will tell you the functionality of that icon).
6. When the model will run another dialog window will appear showing status of the run. You will see "Status: Normal completion" after the run was completed. You should also check if the solution is optimal (Look for sentense saying: Optimal Solution found). You have successfully run the model and all the output files are updated. Note: We have used CPLEX Solver throughout our study (Line 158 in the .gms file). This is a linear model so it will work with any linear solver. 
Extra: In case to change the solver, comment out code Line 158 by placing * infornt of the line. Now Click File/Options. In the options window go to the Solvers tab and click any linear solver of your choice. Click Ok and your solver is now changed.
7. In similar manner you can run the Hourly model by opening "August2018_Validation(Hourly).gms" and run the model. This code requires external input file. So it's necessary that "Input_August2018.xlsx" should be available in the same project folder.
8. Now you can visulaze results either using GAMS platform or using MS-Excel output file (.xlsx). For instance, using GAMS IDE. Click File/Open. Change Files of type to GDX files (*.gdx). Now you will see two files: a) Valid_August2018(Hourly) b) Valid_SatModel_August. Open both files one at a time.
9. To understand what different Symbol represent, please refer the details given in the code files (.gms). Here, Click Released_vol and you will find the total released volume value (Level). The energy generated is represented by symbol Xstore. For example, adding values of d1 to d31 will give total monthly energy generation from the hourly model. In case of Saturday-Sunday-Weekday model, Xstore is giving periodic energy generation of different daytypes. The monthly energy generation will be summation of energy during daytype. Monthly energy generation=  15141.4 + 26211.3+ 15141.4 + 27691.6 + 89804.7 + 235298.9 = 409289.3.
10. % Error = 100* (Model-Observed) /Observed. E.g. %Error = 100* (409289 - 392938)/392938 = 4.2%.

**Figure 4**
1. Within "Models" folder (you have already downloaded this folder in step before Figure 1) enter folder "August 2018". Next, open  "Contract Price Model" folder and then double click "Saturday_Sunday_Weekday.gpr" (Models/August 2018/Contract Price Model/Saturday_Sunday_Weekday.gpr). In case, the project is not saved at your desired location you can save it using "File/Save as". 
2. Import the code file using File/Open/August18_Sat_Sun_Weekday_Model.gms. Main window with model code will appear. You are only required to run the model (all inputs are defined in the code) and the output files will be generated/updated in the project's folder. 
3. After run completion, you will see "Status: Normal completion". You should check if the solution is optimal (Look for sentense saying: Optimal Solution found). Since there are multiple scenairos in this model run so it is difficult to verify the status of each run. Alternative is to verify status of each run within ".gdx file".
4. Click File/Open. Set the Files of type: GDX files (*.gdx). Open the file "Sat-Sun-Weekday_August". Scroll to Symbol "ModelResults". You be able to see ModStat and SolStat of each run. A value of 1 means optimal solution. For further details of ModStat and SolStat visit: https://www.gams.com/mccarlGuide/modelstat_tmodstat.htm
5. After verifying the optimality of the runs, the results can be visualized using provided Excel file "Graphs.xlsx" (Models/August 2018/Contract Price Model/Graphs.xlsx). 
6. Move to the worksheet "Tradeoff_Graph". You are required to update the values in the blue highligted cells. Those values can be found in the .gdx file or the output .xlsx file. Open "Sat-Sun-Weekday_August.xlsx" located in the project folder. Move to the worksheet "Fstore". You will see four populated columns (A-D). Figure 4 is for Zero offset (H1). So select only H1 in Offset column using the drop given drop down. 
7. Copy the Values from column D (Value) and paste those copied numbers in Tradeoff_Graph worksheet within the Graphs.xlsx. The trade-off graph available in the Graph_Tradeoff worksheet will be updated.

**Figure 5**
1. Within same Excel file "Graph.xlsx" you will see a worksheet named "Hydrograph_H0". This worksheet has hydrographs for different number of steady low flow days scenarios with 0.83 MAF (V2) release volume and zero offset release (H1).
2. You are only required to replace the values in the blue highlighted cells. Those values are releases that can be found in "Sat-Sun-Weekday_August.xlsx" under parameter RStore. You have to set Offset column to H1 and tot_vol to V2. 
3. Copy releases from the Value column and paste those in Hydrograph_H0 worksheet within the Graphs.xlsx. The hydrograph on the right will be updated.
Extra: Worksheet Hydrograph_H1000 is provided as example of Hydrographs with 1000 CFS offset release.

**Figure 6**
1. Import the August18_PriceDiff.gms file into GAMS IDE (same procedure as defined in Figure 4). Now within the code you have to set different energy prices i.e. only active one pricing set for "Energy_Rate" parameter and save its results. In the code move down to line: 94 "Energy_Rate(Days,p)". You will see three energy price sets (Current, Half, and Zero). Your task is to active only pricing set by placing *infront of $ontext and $offtext. When the set will be actived then you will see the prices turned into green from gray color. The next is to scroll down at the bottom of the code where it says "following part of code creates gdx and excel output file..". You have to only active the chunk of code depending on which pricing set you have activated above. Run the model for each set of pricing (Current, Half, and Zero) seperately. 
2. Open .gdx files for each of the runs: "Sat-Sun-Weekday_Current.gdx", "Sat-Sun-Weekday_Half.gdx", and "Sat-Sun-Weekday_Zero.gdx". 
3. Open Graphs.xlsx and move to "Price_Differential" worksheet. Your job is you copy the hydropower power revenue values from .gdx file (go to "Fstore" symbol and copy the values). Within Fstore you can move the dimensions around e.g. bring cases to the vertical axis and Volume (V) and Offset (H) to the horizontal axis. Copy the values for H1 and paste those in the blue highlighted cells in Price_Differential worksheet against respected pricing set.  
4. The graph at the bottom will be updated. Note: Don't confuse with any of the additional calculations in the worksheet. Those are additional computations which can be useful at later stages. 

**Figure 7**
1. We need results from both Contract Price and Market-Contract Price models. You have already acquired Contract Price (Saturday-Sunday-Weekday) Model results in Figure 4 above. You are required to run Market-Contract Price model whose code is available within folder: GCD_BugFlowExperiment/Models/August 2018/Market-Contract Price Model/August18_Market pricing.gms. 
2. You are required to run the model code similar to previous figures. After successful completion of the run, the output files will be updated. 
3. Go to: GCD_BugFlowExperiment/Models/August 2018/Miscellaneous/Contract_vs_Market-Contract Results.xlsx. You are required to update values of the blue highlighted cells. For Saturday-Sunday-Weekday model, use values of Fstore symbol from Sat-Sun-Weekday_August.gdx or from Sat-Sun-Weekday_August.xlsx (Location:GCD_BugFlowExperiment\Models\August 2018\Contract Price Model). The results of the Market-Contract price model can be found from Fstore within Pricing_Model.gdx or Pricing_Model.gdx (Location: GCD_BugFlowExperiment\Models\August 2018\Market-Contract Price Model).
4. The updated values will updated the tradeoff graph in the worksheet. Note: Additional calculations in the worksheet are for later stages.

**Table 2**
This table compiles hydropower revenue results of months of 2018. Here, you are required to use monthly models available in the Models folder (Location: GCD_BugFlowExperiment\Models).
1. You are required to run model for each of the months seperately and gather results in Excel file named "Models Results Summary" (location: GCD_BugFlowExperiment\Supporting Data\Models Results Summary.xlsx) and worksheet "Market Price_Summary". 
2. As an example, we are only mentioning process to reproduce results for March 2018. You are required to replicate the same procedure for other months and reproduce Table 2.
3. Move to March 2018 folder within Models folder. Enter Market-Contract Price Model folder and get the March18_Market Pricing.gms. Now follow the same procedure i.e. either import the Code (.gms) file within the given project file "Market_Price.gpr" or create a new project in GAMS IDE and import the code file.
4. Code file has all the required inputs and you are only expected to run the model by pressing F9 or Run button. Successfull run will update the output files (e.g. .gdx, .xlsx, etc.) within project folder.
5. Open Pricing_Model (Location: GCD_BugFlowExperiment\Models\March 2018\Market-Contract Price Model\Pricing_Model.xlsx) and move to FStore Worksheet. 
6. Table 2 is for H4 (i.e. 1000 CFS offset release) and V2 (0.83 MAF) release volume. Set H4 in column A, V1 and V2 in Column B. Copy the values of V1 and V2 and paste those in "Models Results Summary.xlsx" (location: GCD_BugFlowExperiment\Supporting Data\Models Results Summary.xlsx ) and Market Price_Summary worksheet. You will see blue highlighted cells. Paste the copied values in the highlighted cells. Be careful with placing the values on their respective positions. 
7. Values of Table 2 are given in green highlighted cells. 
8. Repeat same procedure for Months of 2018. 





________________________________________________________________________________________________________________________________________________________________________________

## Recommended Citation

Moazzam Ali Rind and David E. Rosenberg (2022). "Bugs Buy Steady Releases from Hydropower Producers to Encourage more Synergistic Reservoir Management". Utah State University, Logan, Utah. https://github.com/moazzamalirind/GCD_BugFlowExperiment

