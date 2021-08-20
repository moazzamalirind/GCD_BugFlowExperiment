

*------------------------------------------------------------------------------*

*Mass Balance Equation
EQ1_ResMassBal..                               storage =e= Initstorage + (Inflow*Convert*sum(p,Duration(p))*Totaldays)- Released_vol - evap;
*                                                                          CFS * conversion factor from cfs to ac-ft/hr and multiplied by 24 (total duration in a day) then multiplied by total day in the month
*=======================Physical Constraints=====================================
EQ2_reqpowerstorage..                          storage =g= minstorage;
EQ3_maxstor..                                  storage =l= maxstorage;

EQ4_MaxR(FlowPattern,d,p)$(Num_Days(FlowPattern,d) gt 0)..                     Release(FlowPattern,d,p)=l= maxRel;

EQ5_MinR(FlowPattern,d,p)$(Num_Days(FlowPattern,d) gt 0)..                     Release(FlowPattern,d,p)=g= minRel;

EQ6_ZeroFlowDays(FlowPattern,d,p)$(Num_Days(FlowPattern,d) eq 0)..             Release(FlowPattern,d,p)=e=0;

EQ7_Rel_Range(FlowPattern,d)$(Num_Days(FlowPattern,d) gt 0)..                  Release(FlowPattern,d,"pHigh")- Release(FlowPattern,d,"pLow")=l=Daily_RelRange;

EQ8_AlternativeDays_Relrange$(Num_days("HydroPeak","Sunday") gt 0)..           Release("HydroPeak","Saturday","pHigh")- Release("HydroPeak","Sunday","pLow")=l=Daily_RelRange;
EQ9_AlternativeDays_Relrange$(Num_days("HydroPeak","Saturday") gt 0) ..        Release("HydroPeak","Weekday","pHigh")- Release("HydroPeak","Saturday","pLow")=l=Daily_RelRange;
EQ10_AlternativeDays_Relrange..                                                Release("HydroPeak","Sunday","pHigh")- Release("HydroPeak","Weekday","pLow")=l=Daily_RelRange;


*EQ11_  constraining the overall monthly released volume..
EQ11_Monthtlyrel..                                                              TotMonth_volume=e= Released_vol;

EQ12_RelVolume..                                                                Released_vol=e= sum(FlowPattern,sum(d, sum(p, Release(FlowPattern,d,p)*Convert*Duration(p))*Num_Days(FlowPattern,d)));

*======================Managerial Constraints===================================================

EQ13_SteadyFlow_Day(FlowPattern,d)$(Num_Days("Steady",d) gt 0)..               Release("Steady",d,"pHigh") =e= Release("Steady",d,"pLow");

EQ14_OffsetRel(FlowPattern)$((Num_days("HydroPeak","Weekday") gt 0) and (Num_Days("Steady","Sunday") gt 0))..          Release("Steady","Sunday","pLow")=e= Release("HydroPeak","Weekday","pLow")+ Weekend_Rel;
* EQ14_  finds the minimimum release value from the hydrograph plus additional release we desire on weekends above off-peak weekday release (i.e. Offset).

EQ15_OnPeak_Saturday(FlowPattern,d,p)$(Num_Days("HydroPeak","Saturday") gt 0)..   Release("HydroPeak","Saturday","pHigh")=g= Release("HydroPeak","Weekday","pHigh")-2000;

EQ16_OnPeak_Sunday(FlowPattern,d,p)$(Num_Days("HydroPeak","Sunday") gt 0)..       Release("HydroPeak","Sunday","pHigh")=g= Release("HydroPeak","Saturday","pHigh");


EQ17_Steady_Saturdays(FlowPattern,d,p)$(Num_Days("Steady","Saturday")gt 0)..   Release("Steady","Saturday",p)=e= Release("Steady","Sunday",p);
** Eq 18 assumes that steady weekday equals the steady sunday releases.
EQ18_Steady_Weekdays(FlowPattern,d,p)$(Num_Days("Steady","Weekday")gt 0)..     Release("Steady","Weekday",p)=e= Release("Steady","Sunday",p);

EQ19_OnPeak_UnsteadyDay(FlowPattern,d)$(Num_Days("HydroPeak",d)gt 0)..          Release("HydroPeak",d,"pHigh")=g= Release("HydroPeak",d,"pLow");
EQ20_EnergyGen_Max(FlowPattern,d,p)..                                          Energy_Gen(FlowPattern,d,p)=l= 1320*Duration(p);
*Maximum Energy Generation capacity of GCD (MWH).. Source https://www.usbr.gov/uc/rm/crsp/gc
EQ21_EnergyGen(FlowPattern,d,p)..                                              Energy_Gen(FlowPattern,d,p)=e= Release(FlowPattern,d,p)*Duration(p)*0.03715;
* Energy generation formula used in WAPA Execl model..

*==============================Objective Function======================================


EQ22_Unsteady_WeekdayRev(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..                   Revenue("HydroPeak","Weekday",p)=e= [{ Nobugflow_Rel("Weekday",p)* Energy_Price("Weekday","Contract",p)+ (Release("HydroPeak","Weekday",p)- Nobugflow_Rel("Weekday",p))*Energy_Price("Weekday","Market",p)}*0.03715*Duration(p)]* Num_Days("HydroPeak","Weekday");
*=====================================================================================
* Defining the hydrograph for weekend
EQ23_Unsteady_SaturdayRev_onpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..           Revenue("HydroPeak","Saturday","pHigh") =e=  [{ Release("HydroPeak","Saturday","pHigh")* Energy_Price("Saturday","Contract","pHigh")-(Nobugflow_Rel("Saturday","pHigh")-Release("HydroPeak","Saturday","pHigh"))*Energy_Price("Saturday","Market","pHigh")}*Duration("pHigh")*0.03715]* Num_Days("HydroPeak","Saturday");

EQ24_Unsteady_SaturdayRev_offpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..          Revenue("HydroPeak","Saturday","pLow")=e=  [{ Nobugflow_Rel("Saturday","pLow")* Energy_Price("Saturday","Contract","pLow")+(Release("HydroPeak","Saturday","pLow")- Nobugflow_Rel("Saturday","pLow"))*Energy_Price("Saturday","Market","pLow")}*Duration("pLow")*0.03715]* Num_Days("HydroPeak","Saturday");

EQ25_Unsteady_SundayRev_onpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..             Revenue("HydroPeak","Sunday","pHigh")=e=  [{ Release("HydroPeak","Sunday","pHigh")* Energy_Price("Sunday","Contract","pHigh")-(Nobugflow_Rel("Sunday","pHigh")-Release("HydroPeak","Sunday","pHigh"))*Energy_Price("Sunday","Market","pHigh")}*Duration("pHigh")*0.03715]* Num_Days("HydroPeak","Sunday");

EQ26_Unsteady_SundayRev_offpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..             Revenue("HydroPeak","Sunday","pLow")=e=  [{ Nobugflow_Rel("Sunday","pLow")* Energy_Price("Sunday","Contract","pLow")+(Release("HydroPeak","Sunday","pLow")- Nobugflow_Rel("Sunday","pLow"))*Energy_Price("Sunday","Market","pLow")}*Duration("pLow")*0.03715]* Num_Days("HydroPeak","Sunday");
*=====================================================================================

EQ27_Steadydays_Onpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..                                                                 Revenue("Steady",d,"pHigh")=e=   [{ Release("Steady",d,"pHigh")* Energy_Price(d,"Contract","pHigh")-(Nobugflow_Rel(d,"pHigh")-Release("Steady",d,"pHigh"))*Energy_Price(d,"Market","pHigh")}*Duration("pHigh")*0.03715]* Num_Days("Steady",d);
EQ28_Steadydays_Offpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..                                                                 Revenue("Steady",d,"pLow")=e=  [{Nobugflow_Rel(d,"pLow")* Energy_Price(d,"Contract","pLow") + (Release("Steady",d,"pLow")- Nobugflow_Rel("Weekday","pLow"))*Energy_Price(d,"Market","pLow")}*Duration("pLow")*0.03715]* Num_Days("Steady",d);

EQ29_TotalRevenue..                            ObjectiveVal=e= Sum((FlowPattern,d,p),Revenue(FlowPattern,d,p));

*------------------------------------------------------------------------------*

MODEL Model1 Find value of hydropower revenue using LP/ALL/;
*This model is for all cases of steady flow days. But the results of zero steady low flow days scenario are incorrect so we need seperate model for that.

Loop((Offset,tot_vol,Nu_SteadyDays),

Weekend_Rel= Diff_Release(Offset);
TotMonth_volume = Vol_monthlyrelease(tot_vol);
Num_Days(FlowType,Days)= Days_Distribution(FlowType,Days,Nu_SteadyDays)+ EPS;

option LP= CPLEX;

Solve Model1 using LP MAXIMIZE ObjectiveVal;

*----------------------------------------------------------------------------------------------------------------------
*----------------------------------------------------------------------------------------------------------------------
* All the following lines of code are saving values for different parameters

  FStore(Offset,tot_vol,Nu_SteadyDays)= ObjectiveVal.L;

* XStore store the energy generated (Mwh/day) during different types of days
   XStore(Offset,tot_vol,Nu_SteadyDays,FlowType,Days)= sum (p,Energy_Gen.L(FlowType,Days,p))+ EPS;

* RStore store the reservoir releases (cfs) during different types of days and scenarios.
   RStore(Offset,tot_vol,Nu_SteadyDays,FlowType,Days,p)= Release.L(FlowType,Days,p)+ EPS;

*Sstore store the end of month reservoir storage (ac-ft)
   Sstore(Offset,tot_vol,Nu_SteadyDays)= storage.L + EPS;

Rev(Offset,tot_vol,Nu_SteadyDays,FlowType,Days,p)=  Revenue.L(FlowType,Days,p) +EPS;

*Saving the model status for different scenarios.
   ModelResults(Offset,tot_vol,Nu_SteadyDays,"SolStat")= Model1.solvestat;
   ModelResults(Offset,tot_vol,Nu_SteadyDays,"ModStat")= Model1.modelstat;

  option clear=ObjectiveVal,clear=Release,clear=Energy_Gen;
);


*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
* Model for Zero steady Low flow day scenario.

Equation
EQ21_ZeroBugDays_Revenue                         Revenue generated from all flowpatterns daytypes and periods with zero steady low flow days($)
;

EQ21_ZeroBugDays_Revenue$(Num_Days("Steady","Weekday") eq 0)..            Revenue_zeroSteadyFlow =e= sum(FlowPattern,sum(d, sum(p,Energy_Gen(FlowPattern,d,p)*Energy_Price(d,"Contract",p))*Num_Days(FlowPattern,d)));

*------------------------------------------------------------------------------*

MODEL Model0 Find value of hydropower revenue at zero steady flow days using LP/ALL/;
*This model is for zero steady low flow days only


Num_Days(FlowType,Days)= Days_Distribution(FlowType,Days,"Case1")+ EPS;

Loop((Offset,tot_vol),

Weekend_Rel= Diff_Release(Offset);
TotMonth_volume = Vol_monthlyrelease(tot_vol);


option LP= CPLEX;

Solve Model0 using LP MAXIMIZE Revenue_zeroSteadyFlow;


* All the following lines of code are saving values for different parameters
  FStore(Offset,tot_vol,"Case1")=Revenue_zeroSteadyFlow.L;

* XStore store the energy generated (Mwh/day) during different types of days
   XStore(Offset,tot_vol,"Case1",FlowType,Days)= sum (p,Energy_Gen.L(FlowType,Days,p))+ EPS;

* RStore store the reservoir releases (cfs) during different types of days and scenarios.
   RStore(Offset,tot_vol,"Case1",FlowType,Days,p)= Release.L(FlowType,Days,p)+ EPS;

*Sstore store the end of month reservoir storage (ac-ft)
   Sstore(Offset,tot_vol,"Case1")= storage.L;


*Saving the model status for different scenarios.
   ModelResults(Offset,tot_vol,"Case1","SolStat")= Model0.solvestat;
   ModelResults(Offset,tot_vol,"Case1","ModStat")= Model0.modelstat;
);


DISPLAY FStore,XStore,RStore,Sstore;

*------------------------------------------------------------------------------*

*Following part of code creates  gdx and excel output file..

* Dump all input data and results to a GAMS gdx file
Execute_Unload "Pricing_Model.gdx";
* Dump the gdx file to an Excel workbook
Execute "gdx2xls Pricing_Model.gdx"

