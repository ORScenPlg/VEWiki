# Setting up the Base Model

## Geography
Deciding the study area and the analysis years are critical to the initial development of any model, let alone a strategic model. The initial decision is to determine the model geography, or study area. Users set the model geography to match reporting regions and desired policy sensitivity.

VisionEval models all use the same nested geographic units, which are designed to largely align with US Census tracts and MPO boundaries. VE-RSPM operates with a zonal geography, using zones or districts at the most granular level. Note that the VE-State geography is similar to VE-RSPM, albeit at different scales. Essentially, VE-State is the state version of VE-RSPM with the primary zone structure being typically a county.

The VisionEval geography is comprised of several levels, detailed below.

![](images/VE_Geography.jpg){width:100%}


### Region
The region is the entire model study area, which varies by model. For example, for VE-State the region is the state. For VE-RSPM, the region can be as small as the MPO boundary or may add additional areas where the region might expand to accommodate growth by the future model year. Note that when choosing a region for VE-RSPM, the area should break along Census boundaries (typically a metropolitan classification). Large-scale characteristics that do not vary across the region are specified at the region level. Examples include fuel prices and the carbon intensities of fuels.

### Azones
Azones are large subdivisions of the region. In VE-State, counties are most typically used as the Azone level. Azones in VE-RSPM are optional and should be used to distinguish areas which may have different land use and transportation policies. For this reason, metropolitan boundaries are most commonly used as the Azone level in VE-RSPM. Note that in VE-RSPM, Azones should be relatively large, containing populations that are similar in size to those of counties or Census Public Use Microdata Areas (PUMA) (e.g., population greater than 50,000). 
* Azones are used to represent population and economic characteristics that vary across the region such as demographic forecasts of persons by age group and average per capita income. 
* Azones are the only level of geography that is required to represent actual geographic areas and may not be simulated.

### Bzones
Bzones are subdivisions of Azones and the smallest unit of geography in VisionEval. Bzones are used to represent neighborhood characteristics and policies that may be applied differently by neighborhood, such as population density. Bzones may correspond to actual geographic areas or may be simulated.

* In VE-RSPM, Bzones are ordinarily defined according to Census Tract boundaries (or Census Block Groups depending on data availability).

* In VE-State and VE-RPAT, Bzones are simulated. Bzone simulation greatly reduces model data requirements while still enabling the modeling of land-use-related policies and the effects of land use on various aspects of travel behavior. In rural areas, Bzones can be used to distinguish small cities from unincorporated areas.

### Mareas
Mareas are collections of Azones associated with an urbanized area either because a portion of the urbanized area is located in the Azone or because a substantial proportion of the workers residing in the Azone work at jobs located in the urbanized area. Metropolitan models typically only have one assigned Marea whereas state models may have several. The model system requires that each Azone may be associated with only one Marea. 

It is also required that all Azones be associated with an Marea. A special Marea named 'None' is used to apply to Azones that are not associated with any urbanized area. Mareas are used to specify and model urbanized area transportation characteristics such as overall transportation supply (transit, highways) and congestion. They are also used to specify large scale land-use-related characteristics and policies in models that use Bzone synthesis. Mareas are typically equivalent to a Census Urbanized Area.

Geographical relationships for a model are described in the "geography.csv" file contained in the "defs" directory. This file tabulates the names of each geographic unit (except for Region) and the relationships between them. Each row shows a unique relationship. Where a unit of geography is not explicitly defined (i.e., it will be simulated), "NA" values are placed in the table. It should be noted that there are no naming conventions for individual zones. The user is free to choose what conventions they will use.



## Model Analysis Years
Overview text



### Model Years

VisionEval models can be used to output any number of years between the
model base year and future year. Each model year takes time to run so
typically only the following two or three years are assigned:

-  Base year – starting year of the model, basis for data collection,
   calibration, and other runs

-  Reference year – a year further in the future than the base year with
   data available to validate the model

-  Future year – ending year of the model, longer time frames enable
   consideration of more visionary changes

As an example, the following years were modeled in the RSPM for
strategic assessments in Oregon:

-  2005 – back-cast to match the MPO GHG reduction target base year.

-  2010 - Base Year – basis for data collection, calibration, and other
   runs.

-  2035 – the date associated with MPO GHG reduction targets and is near
   the RTP forecast date.

-  2050 – the date associated with statutory GHG reduction goals in the
   STS. The longer time frame enables consideration of more visionary
   changes that will take longer than the RTP time frame to occur
   
## Inputs
VE-RSPM inputs can be grouped into two categories, reflecting the
timeline when the data is required:

 - Land Use Inputs
 - Transportation Inputs

.. _header-n6:

### Land Use Inputs
These include data based on the geography and the base and future year
demographics and community design data used to establish the basic
households, their location and attributes, otherwise known as the
socio-economic data (SED). This data is needed early in the process to
set-up the model framework.

Other assumptions and transportation inputs for the base and future year
reflecting existing conditions and adopted local plans respectively.
These inputs require a mix of data and decisions by the metropolitan
area.

Some inputs must be provided and customized for the local area. In other
cases, inputs are noted as "default", indicating that default values are
available from ODOT's work with the OSTI, although local adjustment in
special cases is an option.

In introducing each group of inputs, a table is provided listing the
specific VE-RSPM filenames with a short description of their contents,
as well as the "geography" or spatial level of detail. Also listed is
whether or not ODOT default data is available for input as well as data
sources for those inputs that MPOs will need to develop. The table also
notes default inputs where local data could override default values.
This information provides MPO and local government staff and decision
makers with information to estimate the local/regional level of effort
required for setting up a local VE-RSPM model.

A detailed spreadsheet with the Oregon specific list of input files is
also provided: [VE File
Summary](https://github.com/ORScenPlg/VETechWiki/raw/main/resources/VE-RSPM_File_Summary_20190708.xlsx)

.. _header-n12:



see
https://github.com/VisionEval/VisionEval-Dev/blob/readme-dev/docs/tutorials/verspm/Inputs_and_Parameters.md#input-files

#### RSPM DEMOGRAPHIC AND LAND USE INPUTS

+--------------------------------------------+----------------------------------+----------------------------------------------------+
| Demographics                               | File                             | Description                                        |
+============================================+==================================+====================================================+
|                                            |                                  |                                                    |
| Population by age                          | azone_hh_pop_by_age.csv          | Number of   Household persons within 6 age groups  |
| (HH & non-institutional Group Quarters)    |                                  | by year by Azone                                   |
+--------------------------------------------+----------------------------------+----------------------------------------------------+
|                                            |                                  |                                                    |
|                                            | azone_gq_pop_by_age.csv          | Number of Non-Institutional Group Quarters         |
|                                            |                                  |  persons by 6 age groups by year by Azone          |
+--------------------------------------------+----------------------------------+----------------------------------------------------+
|                                            |                                  |                                                    |
|                                            | azone_hhsize_targets.csv         | Average household size & share of 1-person         |
| Average Household size,                    |                                  |  households by year by Azone                       |
| %1-person households                       |                                  |                                                    |
|                                            |                                  |                                                    |
+--------------------------------------------+----------------------------------+----------------------------------------------------+
|                                            |                                  |                                                    |
|                                            |                                  | Licensed share of   driving age persons in 5 age   |
|                                            | region_hh_driver_adjust_prop.csv | groups relative to model estimation year           |
| Licensure drivers rate (optional)          |                                  | (2001 NHTS) by year                                |
|                                            |                                  |                                                    |
|                                            |                                  |                                                    |
+--------------------------------------------+----------------------------------+----------------------------------------------------+
|                                            |                                  |                                                    |
|                                            | azone_per_cap_inc.csv            | Annual Per Capita                                  |
| Average Per Capita Income                  |                                  | Income by type (HH, GQ) by Year by Azone           |
|                                            |                                  |                                                    |
|                                            |                                  |                                                    |
+--------------------------------------------+----------------------------------+----------------------------------------------------+
|                                            |                                  |                                                    |
|                                            | azone_relative_employment.csv    | (optional) Employed share of Household workers     |
| Employed share of HH workers               |                                  | in 5 age groups relative to model estimation year  |
|                                            |                                  | (2001 NHTS) by year by Azone                       |
+--------------------------------------------+----------------------------------+----------------------------------------------------+


#### Land Use Inputs

+------------------------------------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+
|                                                            |                                |                                                                                                                          |
|                                                            | bzone_employment.csv           | Number of Total,   Retail, and Service employment by year by Bzone                                                       |
| Employment by type (Total, Retail, Service)                |                                |                                                                                                                          |
|                                                            |                                |                                                                                                                          |
+============================================================+================================+==========================================================================================================================+
|                                                            |                                |                                                                                                                          |
|                                                            | bzone_dwelling_units.csv       | Number of Dwelling   Units by type (SF, MF, GQ) by Year by Bzone                                                         |
| Dwelling Units by type (SF, MF);                           |                                |                                                                                                                          |
|                                                            |                                |                                                                                                                          |
+------------------------------------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+
|                                                            |                                |                                                                                                                          |
|                                                            | bzone_hh_inc_qrtl_prop.csv     | Share of Dwelling   Units (HHs) in Per Capita Income quartiles by year by BZone                                          |
| Income Quartiles (for allocating households to DUs)        |                                |                                                                                                                          |
|                                                            |                                |                                                                                                                          |
+------------------------------------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+
|                                                            |                                |                                                                                                                          |
|                                                            | bzone_urban-mixed-use_prop.csv |                                                                                                                          |
| Share of households in Urban Mixed Use areas (optional)    |                                | Share of HHs in Urban   Mixed Use Neighborhoods by Year and Bzone                                                        |
|                                                            |                                |                                                                                                                          |
+------------------------------------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+
|                                                            |                                |                                                                                                                          |
| Built Form Ds (Design & Transit)                           | bzone_network_design.csv       | Design D (D3bpo4,   pedestrian-oriented network measure as defined by EPA Smart Location   Database) by year by Bzone    |
+------------------------------------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+
|                                                            |                                |                                                                                                                          |
|                                                            | bzone_unprotected_area.csv     | Land Area (water and large protected lands removed)   by location type (Urban, Town, Rural) by year by Bzone             |
+------------------------------------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+
|                                                            |                                |                                                                                                                          |
|                                                            | bzone_lat_lon.csv              | Bzone Centroid   Latitute/Longitude by year by Bzone                                                                     |
| Acres, Centroid Lat-Lon                                    |                                |                                                                                                                          |
|                                                            |                                |                                                                                                                          |
+------------------------------------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+




azone_per_cap_inc.csv

Used in the PredictIncome step of the VESimHouseholds module.
This file contains information on regional average per capita household (HHIncomePC) and group quarters (GQIncomePC) income by forecast year in year 2010 dollars. The data can be obtained from the U.S. Department of Commerce Bureau of Economic Analysis for the current year or from regional or state sources for forecast years. In order to use current year dollars just replace 2010 in column labels with current year. For example, if the data is obtained in year 2015 dollars then the column labels in the file shown below will become HHIncomePC.2015 and GQIncomePC.2015.

AZONE_PER_CAP_INC.CSV Layout

+----------+---------+--------------------+--------------------+
|          |         |                    |                    |
| Geo      | Year    | HHIncomePC.2010    | GQIncomePC.2010    |
+==========+=========+====================+====================+
|          |         |                    |                    |
| RVMPO    | 2010    | 32164              | 7500               |
+----------+---------+--------------------+--------------------+
|          |         |                    |                    |
| RVMPO    | 2038    | 43334              | 10000              |
+----------+---------+--------------------+--------------------+



OREGON Income Index
+++++++++++++++++++++
The Oregon VE-State model assumed per capita income by county. For Oregon MPO RSPM models, locals estimate base year per capita income by MPO using census data. Forecast percent improvement is the same regardless of starting value.

Below table is the statewide income growth index to convert the input
values for "azone\ *per*\ cap_inc.csv", based on their base year
calculated values.


+------------------------------------------------+
|                                                |
| Index relative to 2010   for use in VE-RSPM    |
+======================+=========================+
|                      |                         |
| 2010                 | 1                       |
+----------------------+-------------------------+
|                      |                         |
| 2015                 | 1.057915                |
+----------------------+-------------------------+
|                      |                         |
| 2020                 | 1.107752                |
+----------------------+-------------------------+
|                      |                         |
| 2025                 | 1.159942                |
+----------------------+-------------------------+
|                      |                         |
| 2030                 | 1.214563                |
+----------------------+-------------------------+
|                      |                         |
| 2035                 | 1.271811                |
+----------------------+-------------------------+
|                      |                         |
| 2040                 | 1.331726                |
+----------------------+-------------------------+
|                      |                         |
| 2045                 | 1.394463                |
+----------------------+-------------------------+
|                      |                         |
| 2050                 | 1.460142                |
+----------------------+-------------------------+

Oregon Specific information:
These updated values should be used in the MPO Reference scenario.
 - Manual changes to replace 2010 Transit & Design Ds from EPA SLD.
 - Unprotected acres from Place Type input file (PlaceType_Acreage.xlsx).
 - Income growth should be calculated to match statewide assumptions per Appendix A.






.. _header-n21:



### Transportation Inputs



+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                                                                                                                                                                                                                                                                          |
| Actions                                                                                                                                                                                                                                                                                                                                                                                                  |
+============================================================================+=====================================================================================+=======================================================================================================================================================================================================================================+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Single occupancy vehicle (SOV) diversion                                   | azone_prop_sov_dvmt_diverted.csv                                                    | Bike,   Personal Electric Vehicle. Etc. diversion of Single Occupancy vehicle tours   by year by Azone.[In VE-State, applies to "urban" and   "town" but not "rural" loc types within the AZone]                                      |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Car   service characteristics                                              | azone_carsvc_characteristics.csv                                                    | Car   Service Rate ($/mile) by level (high, low, ave), average Car service vehicle   age, and limits on shifting to car service (LtTruck, Auto) by Year by Azone                                                                      |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | bzone_carsvc_availability.csv                                                       |                                                                                                                                                                                                                                       |
| Car   service availability                                                 |                                                                                     | Car   Service Level of service (High, Low) by Year by Bzone for RSPM (Azone by Area   Type for VE-State)                                                                                                                              |
|                                                                            | (azone_carsvc_availability.csv)                                                     |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Car   service access times                                                 | azone_vehicle_access_times.csv                                                      | Minutes   to call-up vehicles by type (owned, High/Low CarSvc) by year by Azone                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| ITS   operations                                                           | marea_operations_deployment.csv                                                     | Deployment   (0-1,1=100%VMT coverage) of operations programs on Fwy (Ramp metering,   Incident Response) and Arterials (Signal Coordination, Access Mgmt) programs   by year by Marea                                                 |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | marea_speed_smooth_ecodrive.csv                                                     | Deployment   (0-1,1=100%VMT coverage) of Speed Smoothing (Fwys, Arterials) and Eco-Driving   (LDV, HD Trucks) programs by year by Marea                                                                                               |
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| % VMT   covered by Drivers in Eco-Drive programs                           |                                                                                     |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | other_ops_effectiveness.csv                                                         | Delay   reduction (0-1) anticipated with full deployment of user-defined other   operations program by road type (Fwy, Art), congestion type (Reoccurring, non-reoccuring)   by 5 congestion levels by year by Azone                  |
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| ITS   speed smoothing (Freeway ATM, Art Signal optimization) (optional)    |                                                                                     |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | bzone_parking.csv                                                                   |                                                                                                                                                                                                                                       |
| Parking   restrictions                                                     |                                                                                     | Parking   restrictions:Free spaces per dwelling unit type (SF, MF, GQ), share of workers   paying for parking and in cashout program, and average parking fee by Year by   Bzone (Marea by Area Type for VE-State)                    |
|                                                                            | (marea_parking-avail_by_area_type.csv   and marea_parking-cost_by_area_type.csv)    |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Road   lane-miles                                                          | marea_lane_miles.csv                                                                | Freeway   and arterial lane-miles by Year and metropolitan area                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | bzone_travel_demand_mgt.csv                                                         |                                                                                                                                                                                                                                       |
| Demand   management                                                        |                                                                                     | Share of   participants in home Individualized Marketing programs (HHs) and work-based   Transportation Demand Management programs (workers) by year by Bzone (Azone   and Marea by Area Type for VE-State)                           |
|                                                                            | (azone_travel_demand_mgt.csv   and marea_travel_demand_mgt_by area_type.csv)        |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | marea_transit_service.csv                                                           | Annual   Transit Service revenue-miles by service mode (demand responsive, bus, rail,   etcl) by year, and Marea.                                                                                                                     |
|                                                                            +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Transit   service                                                          |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | bzone_transit_service.csv                                                           |                                                                                                                                                                                                                                       |
|                                                                            |                                                                                     | Transit D   (D4c, accessible hourly PM peak service frequency as defined by EPA Smart Location   Database) by year and Bzone                                                                                                          |
|                                                                            | (NA for   VE-State)                                                                 |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | marea_transit_fuel.csv                                                              | Option   1(mix) 1of2: Fuel mix (share of GGE) for Transit Vehicles (Van, Bus, Rail)   for ICE/HEV(diesel, gas, CNG -- no rail CNG) by stock year                                                                                      |
|                                                                            +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Transit   fuels and powertrains                                            | marea_transit_biofuel_mix.csv                                                       | Option   1(mix) 2of2: Biofuels share of Transit fuels (ethanol, biodiesel, RNG) by   stock year and Marea                                                                                                                             |
|                                                                            +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
|                                                                            | marea_transit_powertrain_prop.csv                                                   | Powertrain   mix (share of ICE, HEV, EV DVMT) for Transit Veh (Van, Bus, Rail) by stock   year and Marea                                                                                                                              |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Transit   fuel carbon intensity                                            | marea_transit_ave_fuel_carbon_intensity.csv                                         | Option2(CI   direct): Carbon Intensity of composite Transit Fuel (g/MJ) by stock year and marea                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Pricing                                                                    |                                                                                     |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Congestion   charges                                                       | marea_congestion_charges.csv                                                        | Congestion   Charges ($/mile) by road type (Fwy, Arterial) by 5 congestion levels by year   by Marea                                                                                                                                  |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Proportion   of external costs paid                                        | region_prop_externalities_paid.csv                                                  | Share of   Social Externalities covered in household fees (carbon, other) by year   modelwide                                                                                                                                         |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Carbon   pricing (social recovery cost) (optional)                         | region_co2e_costs.csv                                                               | Environmental   and social cost of CO2e emissions per metric ton carbon by year modelwide.                                                                                                                                            |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| PAYD   insurance participation                                             | azone_payd_insurance_prop.csv                                                       | Shareof   HHs in Pay-as-you-Drive Auto Insurance programs by Year by Azone                                                                                                                                                            |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Vehicle   related taxes                                                    | azone_hh_veh_own_taxes.csv                                                          | Annual   auto ownership fees (fixed and sales tax rate) by Year by Azone                                                                                                                                                              |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| VMT tax   or road usage charge                                             | azone_veh_use_taxes.csv                                                             | Mileage   Based Fee by type (fuel tax, VMT fee, Ev surcharge) by year by Azone                                                                                                                                                        |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Retail   costs for fuel                                                    | azone_fuel_power_cost.csv                                                           | Vehicle   energy costs for fuel ($/gallon), electricity ($/kwhr) by year by Azone (exclusive   of taxes)                                                                                                                              |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Road   costs                                                               | region_road_cost.csv                                                                | Infrastructure   costs (BaseModernization, PreservationOpsMtncc, Other, Arteraial per LnMi,   Fwy per LnMi) used to estimate LDV VMT fee to fully recover road costs.                                                                 |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Vehicles and Fuels                                                         |                                                                                     |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Charging infrastructure                                                    | azone_charging_availability.csv                                                     | Availability   (0-1) of vehicle charging by dwelling typ (SF, MF, GQ) by stock year by azone                                                                                                                                          |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Electricity   carbon intensity                                             | azone_electricity_carbon_intensity.csv                                              | Carbon   Intensity of Electricity (g/MJ) by stock year by azone                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Car   service powertrains                                                  | region_carsvc_powertrain_prop.csv                                                   | LDV-Carservice   Vehicle (Auto/LightTruck) powertrain (Ice/Hev/Phev/Bev) shares by stock year   by marea.                                                                                                                             |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Commercial   service powertrains                                           | region_comsvc_powertrain_prop.csv                                                   | LDV-ComSvc   Vehicle (Auto/LightTruck) powertrain (Ice/Hev/Bev) shares by stock year by   marea                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Heavy   truck powertrains                                                  | region_hvytrk_powertrain_prop.csv                                                   | HD Truck   powertrain (ICE, HEV, EV) shares by stock year                                                                                                                                                                             |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| % of light   trucks in household fleet                                     | azone_hh_lttrk_prop.csv                                                             | Share of   household LDV that   are Light Trucksby year by Azone                                                                                                                                                                      |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| % of   light trucks in car service fleet                                   | region_carsvc_lttrk_prop.csv                                                        | Share   of CarSvc LDV that are Light Trucksby year by Azone                                                                                                                                                                           |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| % of   light trucks in commercial service fleet                            | region_comsvc_lttrk_prop.csv                                                        | LDV-ComSvc   share of vehicles that are Light Truck by stock year by Azone                                                                                                                                                            |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Mean age   of household vehicles                                           | azone_hh_veh_mean_age.csv                                                           | Mean Age   of household vehicles by type (auto, light truck) by year by Azone.                                                                                                                                                        |
|                                                                            |                                                                                     |    [NOTE: CarSvc age is in azone_carsvc_characteristics.csv]                                                                                                                                                                          |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Mean age   of commercial service vehicles                                  | region_comsvc_veh_mean_age.csv                                                      | Mean Age   of household vehicles by type (auto, light truck) by year by Azone                                                                                                                                                         |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Avergae   fuel carbon intensity                                            | region_ave_fuel_carbon_intensity.csv                                                | LDV (HH,   CarSvc, ComSvc, Van) + HD (Truck, Bus, Rail) composite carbon Intensity of Fuel (g/MJ) by stock year by marea                                                                                                              |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Base year set up                                                           |                                                                                     |                                                                                                                                                                                                                                       |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Base year   urban VMT                                                      | marea_base_year_dvmt.csv                                                            | Marea   DVMT by type (LDV, HD Truck) overwrite of base year 2010 Hwy Statistics   default (NA recommended for VE-RSPM) and urbanized area name                                                                                        |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Base year   DVMT split by functional class                                 | marea_dvmt_split_by_road_class.csv                                                  | Starting   share of DVMT by type (LDV, HvyTrk, Bus) by road type (Fwy,Arterial, other),   LDV share is adjusted by congestion model.                                                                                                  |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                            |                                                                                     |                                                                                                                                                                                                                                       |
| Base year   VMT                                                            | region_base_year_dvmt.csv                                                           | Region   Freight Vehicle DVMT growth rates-basis (ComSvc-Pop or Inc, HHdvmt;   HvyTrk-Pop or Inc) and overwrite of base year 2010 Hwy Statistics default of   region Heavy Truck DVMT (NA recommended for VE-RSPM) and state name.    |
+----------------------------------------------------------------------------+-------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

## Calibration & Validation

### Regional Validation Targets 

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
 
## Analyzing & Visualizing Outputs
Both RSPM and VE-RPAT have the built-in scenario viewers, which allows
for assessing a large numbers of future scenarios, each with a different
combination of prioritizations, policy decisions, and constraints. The
VEScenarios module provides the capability to quickly set up, run, and
visualize large numbers of VE-RPAT and RSPM scenarios using a baseline
scenario combined with multiple changes to model inputs. VE-State does
not yet compatible with the VEScenarios module but it is a goal of
future work on VisionEval project.

The scenario viewer will open automatically after a multi-scenario run
of RSPM or VE-RPAT is complete. The scenario viewer can also be opened
manually once the scenarios have been run, by opening the VE-RPAT.html
file in a web browser.

Each directory is essentially a copy of RSPM or VE-RPAT base model, with
inputs modified as specified in the scenario_inputs directory. Each
scenario directory contains the results of a model run with its own
inputs, datastore, and log file.

.. _header-n6:

### Example - VERPAT Scenario Viewer

.. figure:: https://github.com/ORScenPlg/VETechWiki/blob/main/media/VERPAT_ScenarioViewer.jpg
   :alt: 

The Viewer is broken into three parts - the Inputs (vertical bar charts)
along the top row. The Outputs (vertical bar charts) just under the
inputs, and the scenario data table is at the very bottom.

.. _header-n9:

### Inputs


The top of the scenario viewer shows scenario input levels by
categories. Categories combine changes to multiple input files to help
simplify a large number of scenarios. Categories can be defined by the
user in the “category_config.json” file. [ screen shot of the folder
structure] The default categories are the following:

**Policy Factors:** These categories represent factors within local and
state control.

-  Community Design Policies that seek to enable shorter trips and
   alternate modes such as promotion of mixed use land use, transit
   service, bicycling, and parking management.

-  Marketing & Incentives Policies that improve driving efficiency such
   as ecodriving,and Intelligent Transportation System efforts, as well
   as programs that reduce auto demand such as carsharing, and home or
   work-based transportation demand management.

-  Pricing Policies that move towards true cost pricing such as road
   user fees to pay for the cost of operating, maintaining and improving
   roads, pay-as-you-drive (PAYD) insurance, and environmental impact
   fees such as a carbon tax.

-  Vehicles & Fuels Factors representing the anticipated changes to
   future vehicles and fuels, in addition to those resulting from
   existing federal and state laws, including market changes such as the
   shift to electric vehicles or more fuel efficient vehicles, reduced
   carbon intensity of fuels, pace of vehicle turnover, and the light
   truck share of vehicles. Since these shifts would primarily result
   from additional federal and state policies promoting market changes,
   these scenarios assume supportive local actions that advocate for
   more ambitious policies along with local efforts, such as installing
   charging stations and using landfill captured gases (renewable
   natural gas) to fuel buses.

**Context Factors:** These categories represent factors outside our
control, but help evaluate the robustness of policies in the face of
uncertain future conditions.

-  Fuel Price The assumed market price of gasoline and other fuels
   (exclusive of fuel taxes).

-  Income Growth The assumed growth of average per capita income,
   representing the health of the economy.

The default settings for the scenario viewer define several levels for
each of the categories. These levels are numbered to indicate the amount
of change from a reference case which represents the continuation of
adopted local plans, policies and trends.

-  Level 1: Corresponds to the reference case.

-  Level 0: Is often used to represents a retreat from current plans
   (such as lower parking fees or less bicycling than anticipated), or
   lower context forecasts (i.e., lower fuel price or lower income).

-  Levels 2-3: Representing more ambitious policies or higher context
   forecasts (i.e., higher fuel price or higher income).

The levels are displayed in category bar charts, one for each Category.
Note that the scenario viewer is also interactive. The user can select
on or multiple of the scenario input levels to filter out their
corresponding scenarios and data.

.. _header-n36:

Outputs

Given the chosen category inputs, the web page also shows future year
outcomes for the several performance measures. Unlike the scenario level
inputs, these performance measures are hard-coded into the scenario
viewer and cannot be easily changed. The performance measures in the
scenario viewer are the following:

-  GHG Target Reduction: 2005-2038 percentage reduction in light-duty
   vehicle GHG emissions (beyond what is anticipated to occur due to
   baseline assumptions regarding improvements to vehicles and fuels).
   RVMPO has a 2005 - 2035 state-set GHG reduction target of 19%

-  DVMT Per Capita: daily vehicle miles of travel of residents divided
   by population.

-  Bike Travel Per Capita: annual miles of resident bike travel (not
   including recreational travel) divided by population.

-  Walk Travel Per Capita: annual residents' walk trips (not including
   recreation or walk to transit) divided by population.

-  Air Pollution Emissions: daily metric tons of pollutants emitted from
   all light-duty vehicle travel (including hydrocarbons, carbon
   monoxide, nitrogen dioxide, and particulates).

-  Annual Fuel Use: annual million gallons of gasoline and other fuels
   consumed by all light-duty vehicle travel.

-  Annual Household Vehicle Cost: average annual household cost
   (thousand dollars) for owning and operating light-duty vehicles
   (including gas, taxes, parking, registration, depreciation,
   maintenance, and financing).

-  Truck Delay: daily vehicle-hours of delay for heavy truck travel on
   area roads.

Each performance measure is illustrated in a bar chart showing the range
of outcome values for the selected scenarios. The bar height indicates
the number of selected scenarios with that outcome value.

The model output bar charts are also interactive, and the user can
select a range of values within one performance measure to see which
policy choices and land use inputs result in desired outcomes. Figure 10
2 shows how a selection of the low end of the GHG emissions updates how
many scenarios result in this outcome, as well as the respective
categories of those scenarios.

The scenario data table at the bottom (not shown) also updates to show
only the scenarios resulting in the selected outcome.

.. figure:: https://github.com/ORScenPlg/VETechWiki/blob/main/media/VERPAT_ScenarioViewer_selectoutput.jpg
   :alt: 

