# DLCD Target Rule Models



**Proposed Approach for Metro RTP VisionEval GHG Analysis**

*ODOT/T. Weidner 1/26/23*

 

**INPUTS**

Each scenario has 2 sets of inputs with potentially multiple versions, as shown in the table below:

- **State led policies:** These are largely vehicle, fuels, and pricing policies (Metro only opted for PAYD). **STS** Vision were set in 2011 and evolved to VisionEval. Adopted Plans change over time, reflecting current plans and trends. **AP18-ish** inputs were shared with Metro in 2020, new **AP22** inputs reflects latest DEQ policies (e.g., HB2021 Electricity carbon intensity may not fully be represented until law is negotiated with utilities. )
- **Local policies:** These inputs are developed by Metro. Thaya developed the **Ref2020** inputs for PBOT work. **CSS** local policy inputs are from 2011 and may still be GreenSTEP files that need to be converted to VisionEval.



**Scenario Model Runs**

|                                                 | Scenario Planning for Target Rules | Reference Cases      |
| ----------------------------------------------- | ---------------------------------- | -------------------- |
| State Policies (Vehicles, Fuels, Pricing, etc.) | STS                                | AP22                 |
| Local Policies                                  | Local Scenario Plan                | Local Reference Case |

 

The State Policies are shaded in this reference file [VE-RSPM_File_Summary_20190708.xlsx](https://github.com/visioneval/visioneval/wiki/VERSPM-Training/VE-RSPM_File_Summary_20190708.xlsx) and included in the Table below. These are the CSVs that are in the Input directory within VisionEval. 

- | State Policy Inputs to the Regional Models |
   | :----------------------------------------- |
   | azone_carsvc_characteristics.csv           |
   | azone_charging_availability.csv            |
   | azone_fuel_power_cost.csv                  |
   | azone_hh_lttrk_prop.csv                    |
   | azone_hh_veh_mean_age.csv                  |
   | azone_hh_veh_own_taxes.csv                 |
   | azone_payd_insurance_prop.csv              |
   | azone_relative_employment.csv              |
   | azone_veh_use_taxes.csv                    |
   | azone_vehicle_access_times.csv             |
   | bzone_urban-mixed-use_prop.csv             |
   | deflators.csv                              |
   | marea_congestion_charges.csv               |
   | marea_speed_smooth_ecodrive.csv            |
   | model_parameters.json                      |
   | other_ops_effectiveness.csv                |
   | region_ave_fuel_carbon_intensity.csv       |
   | region_base_year_dvmt.csv                  |
   | region_carsvc_powertrain_prop.csv          |
   | region_co2e_costs.csv                      |
   | region_comsvc_lttrk_prop.csv               |
   | region_comsvc_powertrain_prop.csv          |
   | region_comsvc_veh_mean_age.csv             |
   | region_hh_driver_adjust_prop.csv           |
   | region_hvytrk_powertrain_prop.csv          |
   | region_prop_externalities_paid.csv         |
   | region_road_cost.csv                       |

 



**VisionEval Model Scenarios**

These inputs are combined to create 3 scenarios, once AP22 replaces AP18

- **Climate Smart Vision Scenario** (STS + CSS) –This is the preferred path that reaches the region’s required GHG reduction, used as a roadmap. It will not change. We can still get there if we go off this path, which is OK as long as we compensate to still reach the goal. 
- **Current Adopted Plans Scenario** (AP22 + Local Reference Case) – This is our best guess of our current path, both state & local actions. 
- **TargetRule Adopted Plans Scenario** (STS + Local Reference Case) – This is a hybrid scenario that will not happen, only used for tracking progress on the TargetRule. It allows us to isolate the gap in local policies. 

 

**ANALYSIS FRAMING**

To identify the gap in local policies. Compare Climate Smart Vision inputs with inputs in either Adopted Plans scenarios (same local policies). This would be level of transit service, level of parking coverage. Some policies may exceed the static vision, some may fall short. 

 

To show progress. We care about the net impact of these policies on GHG. Two ways to show progress on GHG relative to the Climate Smart Vision scenario, depending upon which Adopted Plans scenario is compared. 

- Comparing to **TargetRule Adopted Plans scenario** gives legal progress on Targetrule. Shows progress on Metro’s part of the statewide STS vision. Oregon would meet the statewide GHG targets if everyone did their part and we had the same conditions as 2011 (income, fuel price)
- Comparing to **Current Adopted Plans Scenario** gives actual progress in the region. It reflects actual progress on statewide actions under current conditions (income, fuel price).

 

Alternative Adopted Plans scenarios are also useful. 

- Sensitivity tests can identify the GHG impact of more ambitious local policies that fill the gap allowing the region to meet or exceed its legal TargetRule GHG reduction. 
- Resilience tests can identify the GHG impact where some policies are at risk of falling short of plans, or outcomes are uncertain.





 

