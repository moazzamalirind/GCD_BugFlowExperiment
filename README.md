_________________________________________________________________________________________________
## Bugs Buy Steady Releases from Hydropower Producers to Reduce Hydropeaking Ecosystem Conflict 
_________________________________________________________________________________________________

This study is part of my M.S. degree in Civil and Environmental Engineering at **Utah State University, Utah, USA**

The research is part of Future of the Colorado River Project and partially funded by Higher Education Commission (HEC), Pakistan

Corresponding Author: **Moazzam Ali Rind** (moazzamalirind@gmail.com)

Advised by: **Dr. David E. Rosenberg** (http://rosenberg.usu.edu/)

Starting Date: 6/1/2019

Lasted updated: 2/10/2025
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
The following instructions will help users reproduce the results in "Final_Draft_JHI_2025.pdf ([Documents/Final_Draft_JHI_2025.pdf](https://github.com/moazzamalirind/GCD_BugFlowExperiment/blob/recovery3/Documents/Final_Draft_JHI_2025.pdf)

First download folder name "Months of 2018". Save the folder on your local machine at any desired drive location. For example: E:\GAMS\Models

**Figure 1** This location map was created using ArcMap 10.8 (GIS).

**Figure 2**
1. Download 15 mins observed hydrograph of August 2018 from: https://waterdata.usgs.gov/usa/nwis/uv?09380000
2. Paste the downloaded data into the "Hydrographs_Observed_Used.xlsx" file located in the Supporting Data folder. In the "August_2018" worksheet, paste the release data into the blue-colored cells corresponding to the time. The Saturday-Sunday-Weekday model release values are the observed releases average over the on- and off-peak periods and then averaged over the month for the daytypes. In other words, these are observed values which are just formated in the Saturday-Sunday-Weekday model template. View the updated hydrograph in the "August_2018 (Hydrograph)" worksheet.

**Figure 3** We developed this conceptual model in Microsoft PowerPoint 2016 to illustrate how contract and market pricing may affect the release schedule.

**Figure 4** The figure estimates tradeoffs between hydropeaking values and steady low-flow days, based on a three-daytype model (Saturday, Sunday, Weekday) with zero-offset releases and contract energy pricing. 

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
These are observed releases from August 2018 at USGS 09380000 Colorado River at Lees Ferry, AZ. Refer to Hydrographs_Observed_Used (location: GCD_BugFlowExperiment/Supporting Data/Hydrographs_Observed_Used.xlsx) and then move to August_2018(Hydrograph). The release data acquired was 15min time step (observed), then we averaged that to hourly time step (Hourly) and again averaged over the on and off-peak periods during different daytypes over the month (Saturday-Sunday-Weekday model). We expect the user to only acquire the 15 mins time step release data and paste those releases in August_2018 worksheet (GCD_BugFlowExperiment/Supporting Data/Hydrographs_Observed_Used.xlsx). The updated hydrograph can be seen in the "August_2018 (Hydrograph)" worksheet.

**Figure S7**
For August 2018, we compared observed daily energy generated from model using controlled hourly and saturday-sunday-weekday releases from Figure S6. 
1. Download the daily energy generated at Glen Canyon Dam (https://www.usbr.gov/uc/rm/crsp/gc/index.html). You can also find this observed data in GCD_BugFlowExperiment/Supporting Data/Models Results Summary.xlsx within "Data_Summary" spreadsheet.
2. In the "Engery_Validation_2018" spreadsheet we only expect user to update the blue highlighted columns. "Observed" values can be obtained from previous step (i.e., Figure S7, step 1).
3. Hourly energy values can be generated using the hourly validation code (GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/August2018_Validation(Hourly).gms). The code require an input file "Input_August2018.xlsx" (GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/Input_August2018.xlsx). The user must keep this input file in the project folder for GAMS IDE to detect it. The file contains observed releases at various time steps, which are fed directly into the model, requiring only the estimation of energy generation and hydropeaking values. The output energy generation values can be found using Valid_August2018.gdx or Valid_August2018.xlsx under Energy_Gen spreadsheet. It should be noted that Energy_Gen from the model is at an hourly time step. The user must sum the hourly values for each day (e.g., sum all for d1, then d2, etc.) and enter only the daily totals in the "Energy_Validation_2018" spreadsheet under the "hourly" column (GCD_BugFlowExperiment/Supporting Data/Models Results Summary.xlsx).
4. Like step 3, generate energy values for the Saturday-Sunday-Weekday model template. The GAMS code file is at: GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/August18_Sat_Validation.gms. This file includes predefined releases, so no input file is needed, and it can be run directly in the GAMS IDE. The output can be found in GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/Valid_SatModel_August.gdx or GCD_BugFlowExperiment/Months of 2018/August 2018/Validation/Valid_SatModel_August.xlsx under XStore spreadsheet. Copy the three energy generation values and paste them into column O (highlighted in red). The graph will update automatically.

**Table S1** This table compiles outputs from validation runs and compares them with observed data, including the % error between modeled and observed energy generation. It also displays the energy prices used for each month. We outline steps to reproduce results for a single month (e.g. March 2018), expecting users to apply them for all other months. All results should be entered in the "Validation_Results" sheet of Models Results Summary.xlsx (GCD_BugFlowExperiment/Supporting Data/Models Results Summary.xlsx). 

1. Download folder named "Validation" available at GCD_BugFlowExperiment/Months of 2018/Months of 2018/March 2018/Miscellaneous/Weekend-Weekday/Validation and save at your desired location. Within this folder you will find files with extensions like, .gms, .log, .lst, .lxi, .xlsx, .gpr. User can open .gpr file by double clicking and it should open a blank GAMS IDE project. The alternative is to create a new project in GAMS. Steps for new project involve: Click start => gamside or if you have IDE icon on desktop double click that. A blank GAMS interface will show up. Create a new project (File/Project/New Project), give it a preferred name while saving the project at your desired location. Only one from .gpr or new project methods is required.
2. You are given two code files (March2018_Validation(Hourly).gms and March2018_validation(2periods).gms) in the validation folder. You are required to run both codes individually. a) Hourly model (hourly releases and energy prices are model inputs) b) Weekend-Weekday model (only two daytypes i.e. weekend and weekday. and pricing also follow the two daytypes pattern).To the run the code, you require input file (e.g., Input_March_2018.xlsx) to be available in the same project folder.
Note: The .xlsx file includes additional datasets and analysis methods (e.g., pricing, evaporation). Users can find details in the code file. Full understanding of all calculations in the .xlsx file is not expected.
3. To bring the code file (.gms) you can these steps. Within gamside interface, click File/Open. Open Window will appear. Set Files of type: Gams files (*.gms). Now if your project and files are saved in the same folder you will see two files e.g, : a) March2018_Validation(2periods) b) March2018_Validation(Hourly). Select one and open. For instance, we open Weekend-Weekday day model code so select March2018_Validation(2periods). The code requires the input excel file "Input_March_2018.xlsx" (https://github.com/moazzamalirind/GCD_BugFlowExperiment/blob/main/Months%20of%202018/March%202018/Miscellaneous/Weekend-Weekday/Validation/Input_March_2018.xlsx), which should be saved in the project folder. The code includes sufficient comments for navigation and does not require modifications to run. There are couple of ways to run the model. A) Press F9 on your keyboard. B) Click the Run icon available in the icon bar (Hint: Point your mouse at each of the icons and it will tell you the functionality of that icon).
When the model will run another dialog window will appear showing status of the run. You will see "Status: Normal completion" after the run was completed. You should also check if the solution is optimal (Look for sentense saying: Optimal Solution found). You have successfully run the model and all the output files are updated.

_Note:_ We used the CPLEX Solver throughout our study, as our model is linear and CPLEX was well-suited for this analysis. Users can switch solvers by commenting out the line "option LP= CPLEX" (add * at the beginning of the line). Available solvers can be found under File > Options. In the Options window, navigate to the Solvers tab, select a linear solver of your choice, click OK, and the solver will be updated.
4. The outputs will be available in Valid_March2018(2Periods).gdx or Valid_March2018(2Periods).xlsx files. Move to the worksheet "Scalar", the value of "TotMonth_volume" parameter represents released volume (Ac-ft/Month). In the same worksheet (Scalar), the sum of parameters XStore_Steady + XStore_unsteady produce the total monthly energy generated (MWh).
5. The %error is generated using the formula % Error = 100* (Model-Observed) /Observed. For example, %Error = 100* (375426 - 363797)/375426 = 3.2%.
6. The parameter FStore in the same worksheet (Scalar) captures the total monthly hydropeaking value ($). 
We believe the user can replicate the above steps for the hourly code (March2018_Validation(Hourly)) and produce the required outputs. 
7. For the Saturday-Sunday-Weekday model, a separate validation folder is available under Contract Price (e.g., GCD_BugFlowExperiment/Months of 2018/March 2018/Contract Price Model/Validation). Users should replicate the steps used for the 2-periods code, run the March18_Sat_Validation.gms, and generate all required outputs.
8. Here, we have outlined the steps to reproduce results for March. However, the same steps apply to all months from April to October. Once all results are entered into Results Summary.xlsx, you will have a completed Table S1.

**Figure S8** This figure presents hydrograph estimates from the Saturday-Sunday-Weekday model for August 2018, showing a snapshot with a 0.83 MAF release volume and a zero-offset release scenario.
1. Move to Graphs.xlsx file available at GCD_BugFlowExperiment/Months of 2018/August 2018/Contract Price Model. Hover to worksheet "Hydrograph_H0".
2. Update only the blue-highlighted cells; the hydrograph will update automatically. The value can be obtained by running the code file at GCD_BugFlowExperiment/Months of 2018/August 2018/Contract Price Model/August18_Sat_Sun-Weekday_Model.gms.
3. At this stage, users should be familiar with running GAMS code in GAMS IDE. If not, refer to previous figures and tables for instructions.
4. After successful simulation, we expect the user to collect outputs from Sat-Sun-Weekday_August.xlsx (GCD_BugFlowExperiment/Months of 2018/August 2018/Contract Price Model/August18_Sat_Sun-Weekday_August.xlsx). Move to RStore worksheet. Filter the Offset to H1 and tot_vol to V2. Copy releases from the Value column.
5. Paste the copied values in Hydrograph_H0 worksheet within Graphs.xlsx (GCD_BugFlowExperiment/Months of 2018/August 2018/Contract Price Model/Graphs.xlsx). The hydrograph on the right will be updated.
Extra: Worksheet Hydrograph_H1000 is provided as example of Hydrographs with 1000 CFS offset release.

**Figure S9** The figure illustrates the impact of price differentials between on- and off-peak periods on weekends only. It presents extreme release volume scenarios with a zero-offset release.
1. Import the August18_PriceDiff.gms code file (GCD_BugFlowExperiment/Months of 2018/August 2018/Contract Price Model/August18_PriceDiff.gms) into GAMS IDE. Within the code file, we have compiled all three price difference scenarios, allowing users to select and generate the respective results from a single common code file.
2. For example, in the Current Price Differential scenario, uncomment the relevant section of the code by placing * in front of $ontext and $offtext (e.g., Table "Energy_Rate(Days,p)" starting lines 97 to 103) to define pricing for this scenario. Ensure that the adjacent pricing templates (Half Price Differential and Zero Price Differential) remain deactivated. Once activated, the prices will change from gray to green in the code. Next, scroll to the bottom of the code where it states:"Following part of the code creates GDX and Excel output files..". Activate only the relevant section of the code based on the pricing scenario selected above. You are now ready to run the code. You are now ready to run the code.
4. Repeat the steps to run Half and zero pricing scenarios seperately.
5. After successful model run completion, you can check the output within gamside using .gdx files. Open .gdx files for each of the runs: "Sat-Sun-Weekday_Current.gdx", "Sat-Sun-Weekday_Half.gdx", and "Sat-Sun-Weekday_Zero.gdx". File>open then change files of types to GDX files. The alternative method is to use .xlsx output files which we have explained multiple types in previous steps. 
6. Hover to "Fstore" and copy the values. Within Fstore in .gdx, you can move the dimensions around e.g., bring cases on the vertical axis and Volume (V) and Offset (H) to the horizontal axis. Copy the values for H1 and paste those in the blue highlighted cells in Graphs.xlsx (GCD_BugFlowExperiment/Months of 2018/August 2018/Contract Price Model
/Graphs.xlsx ) and "Price_Differential" worksheet. The graph on the same worksheet at the bottom will be updated. 
*Note:* Don't confuse with any of the additional calculations in the worksheet. Those are additional computations which maybe used for possible extension and better understandings of the system. 
 
**Figure S10** The figure depicts the effect of offset releases on hydropeaking and the frequency of steady low-flow days.

*Note* We will use the same Graphs.xlsx file as in Figure S9, but this time, the Offset worksheet. This file will compile all relevant results to reconstruct the tradeoff graph.

1. Run the code "August18_Sat_Sun-Weekday_Model.gms" in gamside. The results will be available in Sat-Sun-Weekday_August.gdx or Sat-Sun-Weekday_August.xlsx. For example, open Sat-Sun-Weekday_August.gdx in gamside and navigate to FStore. Copy all FStore values, adjusting the cases as needed to match the input format required in Graphs.xlsx under the Offset worksheet.

2. In the Offset worksheet, locate the blue-highlighted cells. These are preformatted to control calculations across the worksheet, ensuring that the tradeoff curves update automatically.

**Table S2** This table estimates hydropower generation changes based on reservoir elevation variations.
1. Refer the excel file "Hydropower_Fluctuations (2018).xlsx" at GCD_BugFlowExperiment/Supporting Data
/Hydropower_Fluctuations (2018).xlsx.
2. The Excel file is self-explanatory, using observed start and end-of-month elevation and release values, assumptions, an energy generation formula, and estimated monthly energy generation difference.

**Table S3** This table compiles hydropeaking values from the Market-Contract Price Model results for 2018 Months. Market-Contract price model for each month can be found at (GCD_BugFlowExperiment/Months of 2018/).  
1. This table is an exact copy of Table 1 in the main document. Refer back to the Table 1 reproducibility instructions and repeat all the steps, but this time for PriceScen 2 ($30/MWh).
2. After collecting all the required values, paste them in excel file Market_Price_Summary_Table1.xlsx (located at GCD_BugFlowExperiment/Supporting Data/Market_Price_Summary_Table1.xlsx) under the Market_Price_Table1_30MWh worksheet.
 
**Table S4** The table illustrates a calculation for estimating slope hydropeaking, incorporating steady low-flow days. It uses the Market-Contract Price Model with a 0.83 MAF release volume and an H1000 offset release.
1. Refer excel file Market_Price_Summary_Table1.xlsx (located at GCD_BugFlowExperiment/Supporting Data/Market_Price_Summary_Table1.xlsx) and Slope_Sat_Sun_Week_Model worksheet.
2. Look for blue-colored cells, which contain slope values from the Market-Contract Price Model runs for each month. We have previously discussed the steps for running the model code and retrieving the results.

**Still require help? Contact us at moazzamalirind@gmail.com**
Enjoy working with GAMS!
________________________________________________________________________________________________________________________________________________________________________________

### Recommended Citation

Moazzam Ali Rind and David E. Rosenberg (2025). "Bugs Buy Steady Releases from Hydropower Producers to Reduce Hydropeaking Ecosystem Conflict". Utah State University, Logan, Utah. https://github.com/moazzamalirind/GCD_BugFlowExperiment
