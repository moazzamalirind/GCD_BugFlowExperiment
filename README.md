_________________________________________________________________________________________________
## Bugs Buy Steady Releases from Hydropower Producers to Reduce Hydropeaking Ecosystem Conflict 
_________________________________________________________________________________________________

This study is part of my M.S. degree in Civil and Environmental Engineering at **Utah State University, Utah, USA**

The research is part of Future of the Colorado River Project and partially funded by Higher Education Commission (HEC), Pakistan

Corresponding Author: **Moazzam Ali Rind** (moazzamalirind@gmail.com)

Advised by: **Dr. David E. Rosenberg** (http://rosenberg.usu.edu/)

Starting Date: 6/1/2019

Lasted updated: 2/7/2025
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
![image](https://github.com/moazzamalirind/GCD_BugFlowExperiment/blob/recovery/Supporting%20Data/Model_Structure.png)

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
The following instructions will help users reproduce the results in "Final_Draft_JHI_2025.pdf.

First download folder name "Months of 2018". Save the folder on your local machine at any desired drive location. For example: E:\GAMS\Models

**Figure 1** This location map was created using ArcMap 10.8 (GIS).

**Figure 2**
1. Download 15 mins observed hydrograph of August 2018 from: https://waterdata.usgs.gov/usa/nwis/uv?09380000
2. Paste the downloaded data into the "Hydrographs_Observed_Used.xlsx" file located in the Supporting Data folder. In the "August_2018" worksheet, paste the release data into the blue-colored cells corresponding to the time. The Saturday-Sunday-Weekday model release values are the observed releases average over the on- and off-peak periods and then averaged over the month for the daytypes. In other words, these are observed values which are just formated in the Saturday-Sunday-Weekday model template. View the updated hydrograph in the "August_2018 (Hydrograph)" worksheet.

**Figure 3** We developed this conceptual model in Microsoft PowerPoint 2016 to illustrate how contract and market pricing may affect the release schedule.

**Figure 4**
1. Within "Months of 2018" folder (you have already downloaded this folder in a step before Figure 1) enter folder "August 2018". Open "Contract Price Model" folder and then double click "Saturday_Sunday_Weekday.gpr" (Months of 2018/August 2018/Contract Price Model/Saturday_Sunday_Weekday.gpr). If the project is not saved in your desired location, use "File > Save As" in GAMS IDE to save.
2. Import the code file using File/Open/August18_Sat_Sun_Weekday_Model.gms. Main window with model code will appear. You are only required to run the model (all inputs are defined in the code) and the output files will be generated/updated in the project's folder. 
3. After successful run, you will see "Status: Normal completion". You should check if the solution is optimal (Look for sentense saying: Optimal Solution found). Since there are multiple scenairos in this model run so it is difficult to verify the status of each run. Alternative is to verify status of each run within ".gdx file".
4. Click File/Open. Set the Files of type: GDX files (*.gdx). Open the file "Sat-Sun-Weekday_August". Scroll to Symbol "ModelResults". You be able to see ModStat and SolStat of each run. A value of 1 means optimal solution. For further details of ModStat and SolStat visit: https://www.gams.com/mccarlGuide/modelstat_tmodstat.htm
5. After verifying the optimality of the runs, the results can be visualized using provided Excel file "Graphs.xlsx" (Months of 2018/August 2018/Contract Price Model/Graphs.xlsx). 
6. Move to the worksheet "Tradeoff_Graph". You are required to update the values in the blue highligted cells. Those values can be found in the .gdx file or the output .xlsx file.
7. Open "Sat-Sun-Weekday_August.xlsx" located in the project output folder. Move to the worksheet "Fstore". You will see four populated columns (A-D). Figure 4 is for Zero offset (H1). So select only H1 in Offset column using filter function.  
8. Copy the values from column D (Value) and paste them into the Tradeoff_Graph worksheet in Graphs.xlsx. The trade-off graph in Graph_Tradeoff will update automatically.

**Figure 5**  The figure compares two model versions (contract-only vs. market-contract pricing) and illustrates how varying price increases affect trade-offs.
1. For the contract-only model, enter the same folder as in Figure 4 (Months of 2018/August 2018/Contract Price Model).
2. Since you’ve already run the code in Figure 4, rerunning the model is unnecessary. You just have to use the output which is available in "Sat-Sun-Weekday_August.xlsx". Move to the worksheet "Fstore" and use the filter function to select only the values for H4 (1000 CFS offset). This information will be used in the next step.
3. Move to the Market-Contract Price Model (Months of 2018/August 2018/Market-Contract Price Model). You can use the GAMS project using Market_Pricing.gpr or create a new one similar to Figure 4.
4. Open the code file (August18_MarketPricing_Updated.gms) within the GAMS IDE. The code takes care of both market pricings (+$5/MWh and +$30/MWh) and produce all the required results. The user is not required to change the code unless you want to test different scenarios.
5. You are required to paste all the required hydropeaking values in the Graphs_August.xlsx (Months of 2018/August 2018/Market-Contract Price Model/Graphs_August.xlsx). The values are required to be pasted in the Tradeoff_Final_Compare worksheet. There are clear instructions about where to paste the values.
6. The values should come from either .gdx files (Months of 2018/August 2018/Market-Contract Price ModelPricing_Model_Updated.gdx and Months of 2018/August 2018/Contract Price Model/Sat-Sun-Weekday_August.gdx) or the excel output files (Months of 2018/August 2018/Market-Contract Price Model/Pricing_Model_Updated.xlsx and Months of 2018/August 2018/Contract Price Model/Sat-Sun-Weekday_August.xlsx).
Note: The process for acquiring Fstore values is the same as in Figure 4, but now you should only select data for the H4 offset scenario.

**Table 1**
The table compiles loss in hydropeaking value within Market-Contract pricing model version. The comparison is between zero steady low flow days (no bugflow experiment) vs addition of number of steady low flow days. 
1. Run the Market-Contract Price Model separately for each month. All required codes are in the monthly subfolders within GCD_BugFlowExperiment\Months of 2018.
2. As a demonstration, we’ll reproduce the results for March 2018. You can follow the same procedure for other months. 
3. Move to March 2018 folder within Months of 2018 folder. Enter Market-Contract Price Model folder and get the March18_Market Pricing_Updated.gms. Now follow the same procedure i.e. either import the Code (.gms) file within the given project file "Market_Price.gpr" or create a new project in GAMS IDE and import the code file.
4. Code file has all the required inputs and you are only expected to run the model by pressing F9 or Run button. Successfull run will update the output files (e.g. .gdx, .xlsx, etc.) within project folder.
5. Now collect the Fstore value either from .xlsx or .gdx files. For example, open Pricing_Model_Updated.gdx (Location: Months of 2018/March 2018/Market-Contract Price Model/Pricing_Model_Updated.gdx) and move to FStore tab. You can open .gdx file within the GAMS IDE.
6. Lookout for only for  H4 (i.e. 1000 CFS offset release) and V2 (0.83 MAF) release volume values.
Note: Fstore values are also available within Pricing_Model_Updated.xlsx. Use the filter function in the Fstore worksheet as discussed earlier.
7. The table needs slope values which you can get from Graphs_XXX.xlsx file. For example, March slope values can be found in Graph_March.xlsx (Months of 2018/March 2018/Market-Contract Price Model/Graphs_March.xlsx). In that file, use the worksheet "Tradeoff_Graphs_Updated". There are PriceScen 1 ($5/MWh) and PriceScen 2 ($30/MWh) in that worksheet. Follow the provided instructions and paste the Fstore values in the suggested columns. The column with Difference is your required slope. For table 1, we are using PriceScen 1 ($5/MWh) only.
8. All the copied values will be pasted in the file Market_Price_Summary_Table1.xlsx (location: GCD_BugFlowExperiment/Supporting Data/Market_Price_Summary_Table1.xlsx). Look for Market Price_Table1_5MWh worksheet and insert the fstore values of each months in the designated places. Find the Market Price_Table1_5MWh worksheet and insert the Fstore values for each month in the designated cells. For example, place March slope values in row 7 (cleared cells). Gray-shaded cells represent the percentage change from the zero steady low flow days value and will be calculated automatically.
11. Repeat this procedure for all 2018 months to fully populate Table 1.

### Supplemantary Section
**Figure S1**
We received hourly energy prices from WAPA and compiled them in Energy Rates_2014.xlsx (GCD_BugFlowExperiment/Supporting Data/Energy Rates_2014.xlsx). For example, the August worksheet in Energy Rates_2014.xlsx contains observed energy prices for August.

**Figure S2, S3, and S4**
These observed releases were obtained from USGS 09380000 Colorado River at Lees Ferry, AZ (https://waterdata.usgs.gov/nwis/uv?site_no=09380000&legacy=1)). Refer Hydrographs_Observed_Used (location: GCD_BugFlowExperiment/Supporting Data/Hydrographs_Observed_Used.xlsx).

**Figure S5**
We created the model structure flow diagram in Microsoft PowerPoint.

**Figure S6**
These are observed releases from August 2018 at USGS 09380000 Colorado River at Lees Ferry, AZ. Refer to Hydrographs_Observed_Used (location: GCD_BugFlowExperiment/Supporting Data/Hydrographs_Observed_Used.xlsx) and then move to August_2018(Hydrograph). The release data acquired was 15min time step (observed), then we averaged that to hourly time step (Hourly) and again averaged over the on and off-peak periods during different daytypes over the month. We only expect the user to acquire the 15 mins time step release data and paste those releases in August_2018 worksheet (GCD_BugFlowExperiment/Supporting Data/Hydrographs_Observed_Used.xlsx). The updated hydrograph can be seen in the "August_2018 (Hydrograph)" worksheet.

**Figure S7**
For August 2018, we compare observed daily genergy generated with model estimates using hourly and saturday-sunday-weekday releases from Figure S6. 
1. Download the daily energy generated at Glen Canyon Dam (https://www.usbr.gov/uc/rm/crsp/gc/index.html). You can also find this observed data in GCD_BugFlowExperiment/Supporting Data/Models Results Summary.xlsx and within "Data_Summary" spreadsheet.
2. In the "Engery_Validation_2018" spreadsheet we only expect user to update the blue highlighted columns. "Observed" values can be obtained from previous step (i.e., Figure S7, step 1).
3. Hourly energy values can be generated using the hourly validation code (GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/August2018_Validation(Hourly).gms). The code require an input file "Input_August2018.xlsx" (GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/Input_August2018.xlsx). The user must keep this input file in the project folder for GAMS IDE to detect it. The file contains observed releases at various time steps, which are fed directly into the model, requiring only the estimation of energy generation and hydropeaking values. The output energy generation values can be found using Valid_August2018.gdx or Valid_August2018.xlsx under Energy_Gen spreadsheet. It should be noted that Energy_Gen from the model is at an hourly time step. The user must sum the hourly values for each day (e.g., sum all for d1, then d2, etc.) and enter only the daily totals in the "Energy_Validation_2018" spreadsheet under the "hourly" column (GCD_BugFlowExperiment/Supporting Data/Models Results Summary.xlsx).
4.Like step 3, generate energy values for the Saturday-Sunday-Weekday model template. The GAMS code file is at: GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/August18_Sat_Validation.gms. This file includes predefined releases, so no input file is needed, and it can be run directly in the GAMS IDE. The output can be found in GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/Valid_SatModel_August.gdx or GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/Valid_SatModel_August.xlsx under XStore spreadsheet. Copy the three energy generation values and paste them into column O (highlighted in red). The graph will update automatically.

**Table S1**



**Figure 7**
1. We need results from both Contract Price and Market-Contract Price models. You have already acquired Contract Price (Saturday-Sunday-Weekday) Model results in Figure 4 above. You are required to run Market-Contract Price model whose code is available within folder: GCD_BugFlowExperiment/Models/August 2018/Market-Contract Price Model/August18_Market pricing.gms. 
2. You are required to run the model code similar to previous figures. After successful completion of the run, the output files will be updated. 
3. Go to: GCD_BugFlowExperiment/Models/August 2018/Miscellaneous/Contract_vs_Market-Contract Results.xlsx. You are required to update values of the blue highlighted cells. For Saturday-Sunday-Weekday model, use values of Fstore symbol from Sat-Sun-Weekday_August.gdx or from Sat-Sun-Weekday_August.xlsx (Location:GCD_BugFlowExperiment\Models\August 2018\Contract Price Model). The results of the Market-Contract price model can be found from Fstore within Pricing_Model.gdx or Pricing_Model.gdx (Location: GCD_BugFlowExperiment\Models\August 2018\Market-Contract Price Model).
4. The updated values will updated the tradeoff graph in the worksheet. Note: Additional calculations in the worksheet are for later stages.



**Figure XXX**
1. We need results from both Contract Price and Market-Contract Price models. You have already acquired Contract Price (Saturday-Sunday-Weekday) Model results in Figure 4 above. You are required to run Market-Contract Price model whose code is available within folder: GCD_BugFlowExperiment/Models/August 2018/Market-Contract Price Model/August18_Market pricing.gms. 
2. You are required to run the model code similar to previous figures. After successful completion of the run, the output files will be updated. 
3. Go to: GCD_BugFlowExperiment/Models/August 2018/Miscellaneous/Contract_vs_Market-Contract Results.xlsx. You are required to update values of the blue highlighted cells. For Saturday-Sunday-Weekday model, use values of Fstore symbol from Sat-Sun-Weekday_August.gdx or from Sat-Sun-Weekday_August.xlsx (Location:GCD_BugFlowExperiment\Models\August 2018\Contract Price Model). The results of the Market-Contract price model can be found from Fstore within Pricing_Model.gdx or Pricing_Model.gdx (Location: GCD_BugFlowExperiment\Models\August 2018\Market-Contract Price Model).
4. The updated values will updated the tradeoff graph in the worksheet. Note: Additional calculations in the worksheet are for later stages.

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

.

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


________________________________________________________________________________________________________________________________________________________________________________

### Recommended Citation

Moazzam Ali Rind and David E. Rosenberg (2025). "Bugs Buy Steady Releases from Hydropower Producers to Reduce Hydropeaking Ecosystem Conflict". Utah State University, Logan, Utah. https://github.com/moazzamalirind/GCD_BugFlowExperiment

