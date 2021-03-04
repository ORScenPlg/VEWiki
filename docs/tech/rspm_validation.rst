.. _topics-validation:


Calibation & Validation
***************************

Regional Validation Targets 

Local datasets can provide further validation targets to check VE model results. To better match these targets, relevant outputs should be checked against the target, and additional changes made as needed to inputs to improve alignment. Other key outputs of the model should be confirmed and/or checked for reasonableness, even if not specific regional target is available. The validation targets should be checked in the order listed, as changes to earlier items will affect outputs of items further down the list.

 - Population & Households: Confirm VE outputs match MPO total population inputs (bzone_household_pop_by_age.csv, bzone_group_quarters_pop_by_age.csv). Population by Location Types (Metropolitan, Town, Rural) should match official Oregon Population Resource Center forecasts (except for Portland Metro) for the Urban Growth Boundary (loctype=”metropolitan”) and overall County. VisionEval models create households from input population, with households assigned to certain districts based on the dwelling unit inputs. Inputs on dwelling units and household size can be adjusted (bzone_dwelling_units.csv, azone_hhsize_targets.csv).

 - Household Income: MPO Per Capita Income is an important driver of travel. Confirm outputs match inputs (azone_per_cap_inc.csv), developed as instructed using statewide income growth forecasts. Note that outputs are in baseyear dollars and may need to be converted to other year be make comparable (/defs/deflators.csv).

 - Density: Activity density is an important driver of travel. Outputs should be checked for reasonableness, and can be roughly compared to EPA’s 2010  [Smart Location Database](https://www.epa.gov/smartgrowth/smart-location-mapping#SLD) block group data,"D1D" density variable. Adjustments can be made to inputs for population, dwelling units, workers, as well as unprotected acres. Note that UGBs often contain areas that can’t be developed such as water bodies and large parks. ODOT has guidance for removing these undevelopable areas with GIS methods, as part of its instructions for building Oregon Place Types from TAZ data.

 - Vehicle Miles Travelled (VMT): HPMS provides MPO-level vehicle miles traveled for historic years. Note HPMS definition of VMT differs from that of VE. VE reports on all household travel regardless of where it occurs, and adds Commercial vehicle and Heavy Duty Truck and Bus travel on MPO roads. HPMS reports vehicular travel of all modes on roads within the MPO boundary. The best comparison is at the statewide level.

o	See example from Albany MPO

 - MPG: Overall fuel efficiency of light duty passenger and Commercial Service, as well as transit and heavy trucks are output by the model. The combined fuel efficiencies of registered passenger and commercial service can be obtained from DMV data and used to check for reasonableness in the base year.
		* > > See example from Albany MPO

 - Statewide Fuel consumed: Fuel sales are rarely tracked at the sub-state level, but may be available if there is a local gas tax. Even if available, the purchase location is not an accurate indicator of where fuel was used. So use caution when comparing.

 - Total Emissions: The overall GHG emissions is an important output. Of particular interest may be its use in GHG reduction targets, such as:

		* > > Statewide mandate of 75% Total GHG reduction 1990-2050
		* > > MPO mandate of Percent Total LDV GHG reduction 2005-20XX, beyond vehicles and fuels per OAR 660.044 (see SPG Tech Appendix p.110+ for calculation method and ODOT provided example calculation XLS)
		* > > Note: GHG emission rates reported in the Oregon MPO GHG Target Rule (OAR 660.044 grams per mile by year), reflect emissions prior to DEQ re-baselining of fuel carbon intensity. As such, emission rates using the provided “TargetRule fileset” differ from those in more current Oregon scenarios.
		* > > Local jurisdictions may have their own climate mandates and definitions

 - Sensitivity Testing: Sensitivity tests should be performed to evaluate the reasonableness (eg. correct direction and magnitude) of the VE-RSPM output estimates. More or less ambitious policy actions can be tested, and the change in various output metrics reviewed for reasonableness. These tests are a standard part of the Oregon MPO Strategic Assessment process, and running many scenarios is built into VisionEval.

 - Comparable communities: VE output results can be compared to prior VE scenario results in the same or other Oregon locations. Reports for all Oregon Strategic Assessment/Scenario Planning efforts can be found on this OSTI website. CAMPO & RVMPO Strategic Assessment reports include Reference Case (typically early report table) and sensitivity test results (typically in appendices) that provide good comparable estimates
