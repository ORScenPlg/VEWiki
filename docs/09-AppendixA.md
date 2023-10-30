
# Appendix A: VE-State Validation {#appendixA}

Between late 2018 and Spring 2020, ODOT working with Consultant and GreenSTEP/RSPM/VisionEval author Brian Gregor to implement the first VE-State model nationwide in Oregon. This pilot effort iteratively ran through roughly 50 scenarios, and put the model through significant real-world testing which led to corrections in a number of places in the original code, particularly related to the VE-State B-zone synthesis process.

During the process, the VE-State outputs validated to a number of Oregon target data, as discussed below. To better match these targets, relevant inputs were checked, and changes made to inputs. In some cases, where there was no comparable data, key outputs were confirmed to match inputs and/or checked for reasonableness and trends over time. The order of the validation targets as listed below was important, as changes to earlier items affected outputs further down the list. Below is a summary of VE-State validation to historical targets. The resulting validation files are a mix of A-zone (county) and region (statewide) inputs. (*azone_relative_employment.csv, azone_hh_ave_veh_per_driver.csv, region_hh_ave_driver_per_capita.csv*).

**The validated VE-State files should be used without change in future VE-State and VE-RSPM applications in Oregon.** Validation should be revisited at least every 2-3 years or when there are significant changes in the model, policy changes new data sources or changes in statewide VMT that warrant review. It should be noted that VE-State provides many of the inputs for the MPO VE-RSPM modules within Oregon, including vehicle and fuel inputs.

## VE-State Validation

Although this documentation is focused on VE-RSPM, this chapter provides a summary of the differences that VE-State requires for comparison.

-   VE Oregon customization: Sample inputs with the standard VE installer (visioneval.org) contain the Oregon census PUMS data in the VESimHousehold source package. VE uses this data to build synthetic populations that reflect Oregon-specific demographic and land use characteristics.

-   VE self-calibration: Several VisionEval modules automatically adjust calculations to match input values, including the Hwy Statistics VMT values when the following files are properly configured. In other cases (e.g., where more recent MPOs cannot use NAs, or VE-State found exogenous values more accurate), exogenous values are provided from HPMS (by roadway class) and ODOT Highway Cost Allocation Study (by vehicle group) data. (*region_base_year_dvmt.csv,marea_base_year_dvmt.csv, marea_uza_profile_names.csv, marea_dvmt_split_by_road_class, region_base_year_dvmt*)

-   **Check any exogenous VMT values in these VE-State provided files for reasonableness:** *region_base_year_dvmt* -- HvyTrkDvmt (same as UrbanHvyTrkDvmt below) *marea_base_year_dvmt.csv* -- UrbanLdvDvmt, UrbanHvyTrkDvmt for Albany & Grants Pass *marea_dvmt_split_by_road_class* -- Especially Bus VMT by functional class.

Several files have been modified during validation of the Oregon statewide VE-State model. They include workers (QCEW trends over time), drivers (DMV), number of vehicles (DMV), vehicle fuel efficiency (DMV) and most importantly statewide VMT (HPMS) and fuel consumption (ODOT fuel sales records).

Since VE focuses on household-based travel it is hard to measure VMT and fuel sales for a small geographic area, but can reasonably be compared statewide.

The resulting validation files are a mix of A-zone (county) and region (statewide) inputs (*azone_relative_employment.csv, azone_hh_ave_veh_per_driver.csv, region_hh_ave_driver_per_capita.csv*). These VE-State file adjustments should be used without changes in VE-RSPM.

The resulting validation files are a mix of A-zone (county) and region (statewide) inputs. (*azone_relative_employment.csv, azone_hh_ave_veh_per_driver.csv, region_hh_ave_driver_per_capita.csv*). These VE-State file adjustments should be used without changes in VE-RSPM.

-   **Statewide Fuel consumed**: Fuel sales are rarely tracked at the sub-state level, but may be available if there is a local gas tax. Even if available, the purchase location is not an accurate indicator of where fuel was used. So use caution when comparing.

-   **Population & Households**: Confirm VE outputs match MPO total population inputs (*bzone_household_pop_by_age.csv, bzone_group_quarters_pop_by_age.csv*). Population by Location Types (Metropolitan, Town, Rural) should match official [Oregon Population Resource Center]{.underline} forecasts (except for Portland Metro) for the Urban Growth Boundary (loctype="metropolitan") and overall County. VisionEval models create households from input population, with households assigned to certain districts based on the dwelling unit inputs. Inputs on dwelling units and household size can be adjusted (*bzone_dwelling_units.csv, azone_hhsize_targets.csv*).

**Figure 24: VE-State Historic Validation - Population**

![](media/validation_population.png)

-   **Household Income**: MPO Per Capita Income is an important driver of travel. Confirm outputs match inputs (*azone_per_cap_inc.csv*), developed as instructed using statewide income growth forecasts.Note that outputs are in baseyear dollars and may need to be converted to other year be make comparable (*/defs/deflators.csv*).

**Figure 25: VE-State Historic Validation - Per Capita Income**

![](media/validation_income.png)

-   **Density**: Activity density is an important driver of travel. VE-State uses a complex sampling process to simulates Bzones and their associated built form characteristics (Ds) including density, pivoting from EPA’s 2010 Smart Location Database block group data,"D1D" density variable for each MPO, and adjusting it based on inputs related to population growth allocations and urbanized land inputs. During the pilot, significant changes were made to the VE-State Bzone synthesis code, and the following refinements were made to VE inputs. Beyond the summary below, the final values for each input are documented in the modelbuild XLS files.

    - Resolving inconsistencies in historic and forecast population geographies, and allocation by location type (metropolitan=MPO UGBs, Town = other UGBs, and Rural).
    - Previous GreenSTEP assumptions had shifted inputs to put multi-county MPO solely in their primary county. VE inputs allow multi-county inputs as long as there is no more than one MPO per county (adjustments made to small overlaps in Grants Pass and Albany.
    - Land area with UGBs were adjusted to remove unprotected acres, which proved especially significant in removing waterways along the coast and Columbia River, and large parks in Portland and Rogue Valley.
    - Resulting densities have no comparable value, but the resulting relative densities of the 8 MPOs was checked for reasonableness.

**Figure 26: VE-State Historic Validation - Population Density**

![](media/validation_density.png)

-   **Workers**: Worker targets (workers that live in the model area) were approximated from LEHD and QCEW data for historic years. Neither source is ideal. LEHD data captures the home end of the commute trip, but it was found to be consistently low statewide. QCEW are employer reported jobs (work end) and may misrepresent workers that don’t work close to where they live, and skip non-covered employment such as agriculture and self-employed workers.2 Given the target-model mismatch, the validation approach was to match the QCEW jobs historical growth pattern and the VE workers over time, retaining the latest year factor into the future. A factor of 1.0784 was generated (*azone_relative_employment.csv*). The model ends up with roughly 35% more workers than Oregon QCEW data in all years. This factor was used for all age groups and all counties (see early •	“hh_driver_adj” scenario).

**Figure 27: VE-State Historic Validation - Workers**

![](media/validation_workers.png)

-   **Drivers:** Number of drivers (by age group) was obtained from DMV by county and national datasources were also consulted VE drivers licensing rate by age group was adjusted to match historic DMV statewide trends over time, prompting adjustments to the VE parameter files to enable drivers per vehicle by county differences across the state, pulled from the DMV data. The units of the driver adjustment were also changed to more intuitively align with the target data. VE tended to underestimate drivers, and most age groups were pushed to nearly 100% licensure rates. However following the data trends, young/millennials rates were dropped in 2010 and fully restored by 2020. Drivers per vehicle by county was a simple DMV calculation of all LDV from 2016Q4, boosted by 10% to reduce and better match VE vehicles. (*region_hh_ave_driver_per_capita.csv, azone_hh_ave_veh_per_driver.csv*).

**Figure 28: VE-State Historic Validation - Drivers**

![](media/validation_drivers.jpg)

-   **Light duty vehicles:** DMV provides records of light duty vehicles registered in the state. VE-State was significantly high, driver per vehicle was increased (see above) to assist. VE ends up to be roughly 10-12% higher than DMV consistent over historic years.

**Figure 28: VE-State Historic Validation - Drivers**

![](media/validation_vehicles.png)

-   **Vehicle Miles Travelled** (VMT): HPMS provides with HCAS vehicle type split, provides LDV and total vehicle miles traveled for historic years. Note HPMS definition of VMT differs from that of VE. VE reports on all household travel regardless of where it occurs, and adds Commercial vehicle and Heavy Duty Truck and Bus travel on MPO roads. HPMS reports vehicular travel of all modes on roads within the MPO boundary. The differences are expected to be minimal at a statewide level. Drivers and Vehicles adjustments noted above were used to help get VMT to a reasonable level, and successfully track the recession era dip in VMT that was difficult with GreenSTEP.

    -   BTS LATCH data is empirically modeled data developed by the NHTS to estimate VMT and other per household transportation metrics such as person trips or person miles traveled. This data is estimated at the Census Tract level, and an empirically valid data source to use for model validation.

    -   HPMS provides MPO-level vehicle miles traveled for historic years. Note HPMS definition of VMT differs from that of VE. VE reports on all household travel regardless of where it occurs, and adds Commercial vehicle and Heavy Duty Truck and Bus travel on MPO roads. HPMS reports vehicular travel of all modes on roads within the MPO boundary. HPMS is most valuable at the overall state level to compare total linked based VMT to the entire model region boundary.
    
    -   Heavy Truck VMT was also checked, and found that Highway Statistics defaults produced significantly different VMT, so exogenous VMT from HPMS/HCAS were used in (*region_base_year_dvmt.csv*).

**Figure 29: VE-State Historic Validation - VMT**

![](media/validation_vmt.jpg)

-   **MPG:** Overall fuel efficiency of light duty passenger and Commercial Service, as well as transit and heavy trucks are output by the model. The combined fuel efficiencies of registered passenger and commercial service can be obtained from DMV data and used to check for reasonableness in the base year. ODOT has augmented the DMV data to distinguish household from commercial vehicles, vehicle powertrain, and added EPA data such as MPG. This allows summarizing MPG of licensed household and ComService vehicles (no odometer readings on actual use) that were compared to statewide VE estimates for historical years. VE outputs are the average of the fleet, calculated by dividing total miles by total gallons. Given most of the LDV vehicle and fuel inputs are taken from DMV data it was not surprising that the MPG lined up well. To improve the match and respond to previous multi-agency recommendation, an adjustment of the DMV ICE MPG data used in PowertrainsAndFuel package was adjusted down by 6% to account for on-road MPG being less than EPA estimates. ODOT’s Economic unit RUC model forecasts do not account for on-road factor nor actual miles driven (no odometer), as in VE, and uses MPGe rather than VE’s miles divided by gallons; this is reflected in differences between the assumptions in these 2 models.

**Figure 30: VE-State Historic Validation - MPG**

![](media/validation_mpg.png)

-   **Fuel consumed:** Oregon tracks fuel sales at the statewide level. While fuel purchase location is not an accurate indicator of its use, it was assumed that statewide fuel sales cover a large enough area to limit this source of error. VE-State total LDV gallons output was validated to statewide gasoline fuel gallons sales (not including diesel fuel). This is a check on the combined effect of VMT and MPG.

**Figure 31: VE-State Historic Validation - LDV Fuel Consumed**

![](media/validation_fuel.png)
