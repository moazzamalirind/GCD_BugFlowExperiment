EQ13_SteadyFlow_Day(FlowPattern,d)$(Num_Days("Steady",d) gt 0)..               Release("Steady",d,"pHigh") =e= Release("Steady",d,"pLow");

EQ14_OffsetRel(FlowPattern)$((Num_days("HydroPeak","Weekday") gt 0) and (Num_Days("Steady","Sunday") gt 0))..          Release("Steady","Sunday","pLow")=e= Release("HydroPeak","Weekday","pLow")+ Weekend_Rel;
* EQ14_  finds the minimimum release value from the hydrograph plus additional release we desire on weekends above off-peak weekday release (i.e. Offset).

EQ15_OnPeak_Saturday(FlowPattern,d,p)$(Num_Days("HydroPeak","Saturday") gt 0).. Release("HydroPeak","Saturday","pHigh")=g= Release("HydroPeak","Weekday","pHigh")-2000;
EQ15a_offpeak_Saturday(FlowPattern,d,p)$(Num_Days("HydroPeak","Saturday") gt 0)..  Release("HydroPeak","Saturday","pLow")=e=  Release("HydroPeak","Weekday","pLow");

EQ16_OnPeak_Sunday(FlowPattern,d,p)$(Num_Days("HydroPeak","Sunday") gt 0)..    Release("HydroPeak","Sunday","pHigh")=g= Release("HydroPeak","Saturday","pHigh");
EQ16a_offpeak_Sunday(FlowPattern,d,p)$(Num_Days("HydroPeak","Sunday") gt 0)..  Release("HydroPeak","Sunday","pLow")=e= Release("HydroPeak","Weekday","pLow");

EQ17_Steady_Saturdays(FlowPattern,d,p)$(Num_Days("Steady","Saturday")gt 0)..   Release("Steady","Saturday",p)=e= Release("Steady","Sunday",p);
** Eq 18 assumes that steady weekday equals the steady sunday releases.
EQ18_Steady_Weekdays(FlowPattern,d,p)$(Num_Days("Steady","Weekday")gt 0)..     Release("Steady","Weekday",p)=e= Release("Steady","Sunday",p);

EQ19_OnPeak_UnsteadyDay(FlowPattern,d)$(Num_Days("HydroPeak",d)gt 0)..          Release("HydroPeak",d,"pHigh")=g= Release("HydroPeak",d,"pLow");
EQ20_EnergyGen_Max(FlowPattern,d,p)..                                          Energy_Gen(FlowPattern,d,p)=l= 1320*Duration(p);
*Maximum Energy Generation capacity of GCD (MWH).. Source https://www.usbr.gov/uc/rm/crsp/gc
EQ21_EnergyGen(FlowPattern,d,p)..                                              Energy_Gen(FlowPattern,d,p)=e= Release(FlowPattern,d,p)*Duration(p)*0.03715;
* Energy generation formula used in WAPA Execl model..

*==============================Objective Function======================================

EQ22_Unsteady_WeekdayRev(FlowPattern,d,p)$((Num_Days("Steady","Sunday") gt 0)and(Num_Days("Hydropeak","Weekday") gt 0))..                   Revenue("HydroPeak","Weekday",p)=e= [{ Nobugflow_Rel("Weekday",p)* Energy_Price("Weekday","Contract",p)+ (Release("HydroPeak","Weekday",p)- Nobugflow_Rel("Weekday",p))*Energy_Price("Weekday","Market",p)}*0.03715*Duration(p)]* Num_Days("HydroPeak","Weekday");
*=====================================================================================
* Defining the hydrograph for weekend (Onpeak lower than no bug flow and off-peak greater than no bug flow)
EQ23_Unsteady_SatRev_onpeak(FlowPattern,d,p)$(Num_Days("Hydropeak","Saturday") gt 0)..       Revenue("HydroPeak","Saturday","pHigh") =e=  [{ Release("HydroPeak","Saturday","pHigh")* Energy_Price("Saturday","Contract","pHigh")-(Nobugflow_Rel("Saturday","pHigh")-Release("HydroPeak","Saturday","pHigh"))*Energy_Price("Saturday","Market","pHigh")}*Duration("pHigh")*0.03715]* Num_Days("HydroPeak","Saturday");

*EQ24_Unsteady_SaturdayRev_offpeak(FlowPattern,d,p)$(Num_Days("Hydropeak","Saturday") gt 0)..      Revenue("HydroPeak","Saturday","pLow")=e=  [{ Nobugflow_Rel("Saturday","pLow")* Energy_Price("Saturday","Contract","pLow")+(Release("HydroPeak","Saturday","pLow")- Nobugflow_Rel("Saturday","pLow"))*Energy_Price("Saturday","Market","pLow")}*Duration("pLow")*0.03715]* Num_Days("HydroPeak","Saturday");

EQ24_Unsteady_SatRev_offpeak(FlowPattern,d,p)$(Num_Days("Hydropeak","Saturday") gt 0)..      Revenue("HydroPeak","Saturday","pLow")=e=  [{ Nobugflow_Rel("Saturday","pLow")* Energy_Price("Saturday","Contract","pLow")+(Release("HydroPeak","Saturday","pLow")- Nobugflow_Rel("Saturday","pLow"))*Energy_Price("Saturday","Market","pLow")}*Duration("pLow")*0.03715]* Num_Days("HydroPeak","Saturday");


EQ25_Unsteady_SundayRev_onpeak(FlowPattern,d,p)$(Num_Days("Hydropeak","Sunday") gt 0)..              Revenue("HydroPeak","Sunday","pHigh")=e=  [{ Release("HydroPeak","Sunday","pHigh")* Energy_Price("Sunday","Contract","pHigh")-(Nobugflow_Rel("Sunday","pHigh")-Release("HydroPeak","Sunday","pHigh"))*Energy_Price("Sunday","Market","pHigh")}*Duration("pHigh")*0.03715]* Num_Days("HydroPeak","Sunday");

EQ26_Unsteady_SundayRev_offpeak(FlowPattern,d,p)$(Num_Days("Hydropeak","Sunday") gt 0)..             Revenue("HydroPeak","Sunday","pLow")=e=  [{ Nobugflow_Rel("Sunday","pLow")* Energy_Price("Sunday","Contract","pLow")+(Release("HydroPeak","Sunday","pLow")- Nobugflow_Rel("Sunday","pLow"))*Energy_Price("Sunday","Market","pLow")}*Duration("pLow")*0.03715]* Num_Days("HydroPeak","Sunday");
*=====================================================================================


EQ27_Steadydays_Onpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..                                                                 Revenue("Steady",d,"pHigh")=e=  [{ Release("Steady",d,"pHigh")* Energy_Price(d,"Contract","pHigh")-(Nobugflow_Rel(d,"pHigh")-Release("Steady",d,"pHigh"))*Energy_Price(d,"Market","pHigh")}*Duration("pHigh")*0.03715]* Num_Days("Steady",d);
EQ28_Steadydays_Offpeak(FlowPattern,d,p)$(Num_Days("Steady","Sunday") gt 0)..                                                                 Revenue("Steady",d,"pLow")=e=  [{Nobugflow_Rel(d,"pLow")* Energy_Price(d,"Contract","pLow") + (Release("Steady",d,"pLow")- Nobugflow_Rel("Weekday","pLow"))*Energy_Price(d,"Market","pLow")}*Duration("pLow")*0.03715]* Num_Days("Steady",d);

EQ29_TotalRevenue..                            ObjectiveVal=e= Sum((FlowPattern,d,p),Revenue(FlowPattern,d,p));
