# Visioneval – Developing a Model

VisionEval is the preferred strategic planning model for scenario planning. It enables numerous scenarios with a broad range of inputs and uncertainties. The model was used to set the regional GHG targets, and is best suited to track progress towards those goals.

## Model Geography and Inputs

All VisionEval models share a standard geography framework. Although models are applied at different scales, sharing a common geographic definition enables modules to be more readily shared between models and will inform the required input data. The standard geography framework specifies levels of geographical units, their names, their relative sizes, and the hierarchical relationships between them. It is flexible in that it allows geographical boundaries to be determined by the user.

VisionEval operates with a zonal geography, using zones or districts at the most granular level..

Following is the definition of the geographic structure of the VisionEval model system:

-   **Region level** is the entire model area. Large-scale characteristics that do not vary across the region are specified at the region level. For example, the carbon intensities of vehicle fuels are defined at the region level since they tend not to vary widely across a large geographic area. When choosing a region for VisionEval, the area should break along Census boundaries (typically a metropolitan classification).

-   **A-zones** are large subdivisions of the region level containing populations that are similar in size to those of counties or Census Public Use Microdata Areas (PUMA) (e.g., population greater than 50,000). A-zones are used to represent demographic and economic characteristics that vary across the region such as population forecasts of persons by age group and average per capita income. In Oregon metropolitan VisionEval models, this typically aligns with jurisdictions, i.e. city urban growth boundaries.

-   **B-zones** are subdivisions of A-zones and the smallest unit of geography in VisionEval. B-zones are nested within A-zones and provide more granularity on the intensity and nature of development. They are also used to apply neighborhood characteristics and policies that may be differently applied differently by neighborhood, such as population density. In Oregon metropolitan VisionEval models, B-zones may correspond to actual geographic areas. Examples of B-zone inputs include housing and population density. Common B-zone boundaries for VisionEval are TAZs, Census Tracts, or Census Block Groups. It is important to remember that several of the VisionEval models are estimated using nationally available data at the Census Block Group level and if the B-zones are smaller than that, the models may have inputs that fall outside of the expected ranges.

-   **M-areas** represent metropolitan urbanized areas. M-areas are represented in VisionEval as collections of A-zones associated with an urbanized area either because a portion of the urbanized area is located in the A-zone or because a substantial proportion of the workers residing in the A-zone work at jobs located in the urbanized area. Metropolitan models typically only have one assigned M-area. The model system requires that each A-zone may be associated with only one M-area. M-areas are used to specify and model urbanized area transportation characteristics such as overall transportation supply (transit, highways) and congestion.

Geographical relationships for a model are described in the "geo.csv" file contained in the "defs" directory. This file tabulates the names of each geographic unit (except for Region) and the relationships between them. Each row shows a unique relationship. Where a unit of geography is not explicitly defined (i.e., it will be simulated), "NA" values are placed in the table.

Figure 3 shows examples of the "geography.csv" file where only A-zones are specified and where A-zones and B-zones are specified. It should be noted that there are no naming conventions for individual zones. The user is free to choose what conventions they will use.

Figure : geographic levels

 ![A map of a neighborhood Description automatically generated](media/image1.jpeg)

### Location Types

Location Type is not a geography level but a categorical level that identifies whether households are urban, town, or rural in character (See Figure 4 for an example). Land in each district is inventoried (in acres) as one of three location types. Additional area types define the mix of activity density and community accessibility through population and employment data. The key consideration is to separate developed from undeveloped land to avoid diluting resulting population density calculations. Some data, such as roadway lane-miles and transit service is only provided in “urban” areas.

-   The "metropolitan" development type includes built-up, urbanized areas located within the primary city in the MPO. This is often best approximated by the city limits. These include “center” and “inner” area types which are primarily urban centers and suburban areas.

-   The "town" development type, is similar to the Metropolitan type, but outside the primary city (e.g. satellite communities). These also include “outer” are types or exurban areas. In Oregon these are typically cities with urban growth boundaries outside of Metropolitan Planning Areas.

-   The "rural" development type includes all remaining lands. These less developed lands located outside, often located outside of urban growth boundaries, ranging from resource lands to undeveloped urban land. “Fringe” area types are included in this category.

Figure : Land Development Types Example

![A map of a city Description automatically generated](media/image2.png)

Geography is important in VisionEval and treated differently than in traditional urban travel models. Importantly, different model inputs are developed at different geography levels. A list of VE-RSPM inputs by geography level can be found on [GitHub](https://github.com/VisionEval/VisionEval/wiki/VERSPM-Training/VE-RSPM_Inputs_by_Geo.pdf). Geography is also a significant factor in how the model calculates travel supply and travel behavior or demand:

-   VE-RSPM predicts household travel based on the characteristics of the geographic area where a household resides including population density and housing type(s).

-   Inputs can vary by geographic area and therefore can be tailored to represent the differing characteristics of an urban pattern. For example, the proportion of mixed-use development is likely to be higher in districts near the city core than in those in the urban fringe. Household in mixed use areas tend to have fewer travel fewer vehicle miles.

-   By measuring land use details at the zonal level, VE-RSPM captures the relationship of each household to the land use characteristics in the whole neighborhood around it (i.e., local land use influences and informs household travel behavior).

-   By altering the mix of development types within a B-zone, the effects of different population and activity densities around the metropolitan area can be assessed in VisionEval. For example, modeling a scenario which allocates a larger proportion of households to lower density districts will produce higher VMT forecasts than modeling a scenario which allocates more households to higher density urban districts.

### Place Types

\[ placeholder for adding more information for the Oregon place types and the latest tool update \]

\[ include instructions on how the Place Type tool can help inform elements of VisionEval models \]

## Set up Base Model

VisionEval is a household-based model, which involves an initial setup and calibration of the base year and future year households. These steps establish and locate the households in the region’s various districts and align with existing population forecasts. After this, the model is run to estimate travel in base and future reference years. These setup steps form the basis for alternative scenarios which can be developed through an automated sensitivity testing approach or through a more participatory approach where group consensus is pursued on all aspects of a scenario.

Input requires a mix of data and decisions within the metropolitan area. The inputs are a mix of local or regional inputs and others that are influenced or controlled by statewide assumptions that are provided by others. Once the geography of VisionEval has been confirmed (Chapter 3.1) the inputs can be created. Inputs for VisionEval cover a wide variety of topics. It is essential that inputs are provided for each of the analysis years.

VisionEval inputs can be grouped into two categories, reflecting the timeline when the data is required:

-   Local land use inputs – These include data based on the geography and the base and future year demographics and community design data used to establish the basic households, their location and attributes, otherwise known as the socio-economic data (SED). This data is needed early in the process to set-up the model framework.

-   Other assumptions and transportation inputs for the base and future year reflecting existing conditions and adopted local plans respectively.

-   Oregon-specific STS input files, which can be viewed here: [VE File Summary](https://github.com/VisionEval/VisionEval/wiki/VERSPM-Training/VE-RSPM_File_Summary_20190708.xlsx)

These inputs require a mix of data and decisions by the metropolitan area. Local inputs are combined with statewide assumptions provided by others.

This section covers the nature of the land development patterns that need to be entered into the models for all analysis years.

### Socio-economic and Land Use 

One of the strengths of VisionEval is the rich detail on individual households. This allows for household specific policies, travel behavior can respond to specific household costs and attributes, and outputs can be mined for differences by population groups. The approach of building on a synthesized set of households borrows from the state of the practice in activity-based travel demand models. The data includes:

**Households:** Includes population by age, automobile ownership, household size, per capita household income, drivers and vehicle ownership. Base year totals for the household population can be obtained from Census. Future year forecasts should be consistent with but may need to be extrapolated beyond adopted regional plans (e.g., Regional Transportation Plan, County and City Transportation System Plans), ultimately matching the PSU Population Resource Center’s official forecast (population by age by jurisdiction). Per capita income can be obtained from either the Census or Bureau of Economic Analysis.

**Land use and employment:** B-zones are attributed with land use attributes (location type, built form ‘D’ values, urban mixed use, and employment by type). The five dimensions considered in designing efficient and sustainable cities include density, design, destination access, distance to transit, and diversity of the built environment such as the information featured in the [Oregon Place Types tool](https://www.oregon.gov/lcd/cl/pages/place-types.aspx).

Household members who are workers are assigned a B-zone work location as a function of the distribution of jobs in the model area. Each home and work location is tied to a specific B-zone with its associated land use and employment attributes.

A mixed use development or neighborhood is one that includes residential and non-residential land uses in close proximity to one another, allowing for pedestrian access to many desired goods and services. In VisionEval the proportion of each zone that is identified as “mixed use” is typically calculated by the program, where VisionEval randomly samples from an asserted distribution is used to define whether a household is in a mixed-use area. The share of household in mixed use areas can also be specified explicitly by the user to represent more ambitious policy actions.

Zonal employment estimates in VisionEval are made for retail, service, and total employment categories. The delineation of retail and service employment is typically by the two-digit sectors in the North American Industrial Classification System (NAICS), data available from the U.S. Census, which is also used in employment classification in the regional travel models. This employment helps to determine if the area is mixed use, and provides work locations for modeled households.

Table : RSPM Demographic and Land Use Inputs

| Description Error! Reference source not found.                                                                                 | File                                 | module used                        |
|--------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|------------------------------------|
| **Demographics**                                                                                                               |                                      |                                    |
| Number of Household persons within 6 age groups by year by A-zone                                                              | azone\_hh\_pop\_by\_age.csv          | VESimHouseholds, CreateHouseholds  |
| Number of Non-Institutional Group Quarters persons by 6 age groups by year by A-zone                                           | azone\_gq\_pop\_by\_age.csv          | VESimHouseholds, CreateHouseholds  |
| Average household size & share of 1-person households by year by A-zone                                                        | azone\_hhsize\_targets.csv           | VESimHouseholds, CreateHouseholds  |
| Licensed share of driving age persons in 5 age groups relative to model estimation year (2001 NHTS) by year (optional)         | region\_hh\_driver\_adjust\_prop.csv | VEHouseholdVehicles, AssignDrivers |
| Annual Per Capita Income by type (HH, GQ) by Year by A-zone                                                                    | azone\_per\_cap\_inc.csv             | VESimHouseholds, PredictIncome     |
| Employed share of Household workers in 5 age groups relative to model estimation year (2001 NHTS) by year by A-zone (optional) | azone\_relative\_employment.csv      | VESimHouseholds, PredictWorkers    |
| **Land Use**                                                                                                                   |                                      |                                    |
| Number of Total, Retail, and Service employment by year by B-zone                                                              | bzone\_employment.csv                | VELandUse, PredictHousing          |
| Number of Dwelling Units by type (SF, MF, GQ) by Year by B-zone                                                                | bzone\_dwelling\_units.csv           | VELandUse, PredictHousing          |
| Share of Dwelling Units (HHs) in Per Capita Income quartiles by year by B-zone                                                 | bzone\_hh\_inc\_qrtl\_prop.csv       | VELandUse, PredictHousing          |
| Share of HHs in Urban Mixed Use Neighborhoods by Year and B-zone (optional)                                                    | bzone\_urban-mixed-use\_prop.csv     | VELandUse, AssignLocTypes          |
| Design D (D3bpo4, pedestrian-oriented network measure as defined by EPA Smart Location Database) by year by B-zone             | bzone\_network\_design.csv           | VELandUse, Calculate4DMeasures     |
| Land Area (water and large protected lands removed) by location type (Urban, Town, Rural) by year by B-zone                    | bzone\_unprotected\_area.csv         | VELandUse, Calculate4DMeasures     |
| B-zone Centroid Latitute/Longitude by year by Bzone                                                                            | bzone\_lat\_lon.csv                  | VELandUse, LocateEmployment        |

Source: <https://github.com/VisionEval/VisionEval/wiki/VERSPM-Training/VE-RSPM_File_Summary_20190226.xlsx>

#### Input Calculation Example: azone\_per\_cap\_inc.csv

Used in the PredictIncome step of the VESimHouseholds module.

This file contains information on regional average per capita household (HHIncomePC) and group quarters (GQIncomePC) income by forecast year in year 2010 dollars. The data can be obtained from the U.S. Department of Commerce Bureau of Economic Analysis for the current year or from regional or state sources for forecast years. In order to use current year dollars just replace 2010 in column labels with current year.

For example, if the data is obtained in year 2015 dollars then the column labels in the file shown below will become HHIncomePC.2015 and GQIncomePC.2015 (as opposed to 2010).

Table : AZONE\_PER\_CAP\_INC.cSV Layout

| Geo   | Year | HHIncomePC.2010 | GQIncomePC.2010 |
|-------|------|-----------------|-----------------|
| RVMPO | 2010 | 32164           | 7500            |
| RVMPO | 2038 | 43334           | 10000           |

The Oregon VE-State model assumed per capita income by county. For metropolitan VisionEval models, locals first estimate base year per capita income for their area using census data. It is recommended that the forecast percent future income growth be consistent with the state (the same regardless of starting value), unless there are local assumptions to use in its place.

Table 6 shows the statewide income growth index to convert the input values for "azone\_per\_cap\_inc.csv", based on their base year calculated values.

Table : Oregon Income Index (confirm with ODOT)

| Index relative to 2010 for use in VisionEval |          |
|----------------------------------------------|----------|
| 2010                                         | 1        |
| 2015                                         | 1.057915 |
| 2020                                         | 1.107752 |
| 2025                                         | 1.159942 |
| 2030                                         | 1.214563 |
| 2035                                         | 1.271811 |
| 2040                                         | 1.331726 |
| 2045                                         | 1.394463 |
| 2050                                         | 1.460142 |

### Transportation Data

Metropolitan area freeway, arterial and public transit supply levels are important inputs to the household vehicle ownership and travel models and to fuel efficiency models. For larger metropolitan areas, these values are reported annually to the FHWA in the Highway Performance Monitoring system.

-   A metropolitan area freeway supply (lane-miles per capita) and transit supply (annual revenue miles per capita) are significant predictors of metropolitan household vehicle ownership and travel.

-   Arterial supply (lane-miles per capita) is not a significant predictor of vehicle ownership or travel, but along with freeway supply, is important for estimating the traffic congestion levels. Traffic congestion affects average trip speeds, vehicle fuel economy, and emissions.

Other transportation input data includes:

-   Household multimodal travel

-   Transport supply

-   Household travel calculations

-   Single Occupancy Vehicle (SOV) diversion

-   Daily Vehicle Miles Traveled (DVMT)

-   Vehicles, fuels and emissions

-   Transport investments (freeway and arterial lane miles, transit service, bike/ light vehicle usage)

-   Pricing inputs (parking, pay-as-you-drive (PAYD) insurance, per mile fees)

-   Vehicle/ Fuels technology inputs (vehicle age, fuel economy, and congestion, vehicle fuel technology, truck share of personal + fleet autos, electric emissions rate, transit vehicles/ fuels)

-   Marketing/ ITS-Operations management (Workplace TDM programs, individualized marketing program, eco driving practices for autos and trucks, low rolling resistance tires, car sharing, ITS-Ops degree of deployment, household vehicle use optimization)

-   Many of these values can be obtain for both base and future year from the region’s travel demand model, or pulled for the specific region from the Statewide VisionEval scenarios.

#### Inputs

VisionEval inputs are shown in Table 7. In Oregon, since a statewide model is maintained, starter values for the region can be pulled form the statewide VisionEval scenarios, both a reference “Plans & Trends” scenario, and a “STS Vision” scenario. As such Table 7 notes inputs for both the state and regional VisionEval models (VE-State file name is given in parenthesis). Since the B-zones are simulated in the statewide VisionEval model the geography is often different geography.

Table : RSPM and VE-State Transportation INputs

[TABLE]

### Base Year Run Script and VE Packages

The base years being run for calibration and validation will require specific data for the vehicles, powertrains, and fuels used within the fleet. These are largely federal and state led policies and programs, so the assumptions are maintained and provided by the state for use in all Oregon regional VisionEval models.

ODOT has coordinated with the Oregon Department of Environmental Quality to develop two different packages for use in Oregon VisionEval models.

-   VEPowertrainsAndFuelsAP2022, is the latest version of the package to be used for the reference case models. The Adopted Plans (AP) scenario reflects the vehicle and fuel regulations passed in Oregon as of 2022, such as the Advanced Clean Cars II and the Advanced Clean Trucks rules.

-   VEPowertrainsAndFuelsSTS that is used for the future scenarios associated with the state GHG Target Rule. It was developed in 2013 with the Statewide Transportation Strategy (STS) and used when setting the metropolitan GHG targets.

Both the AP2022 and the STS packages are readily available and can be used simply by changing the R script to point the models to the appropriate package. There shouldn’t be any need to update these for most uses.

Appendix B includes additional information on these packages and updating inputs within them.

## Model Calibration and Validation 

Once the model inputs are produced and the models can run using the correct packages and model parameters the model requires calibration to an observed base year and validation to other historical years. The calibration and validation of VisionEval is required ensure the model is reflecting expected or existing conditions in a way stakeholders will understand and use.

It is important that the model be ready for analysis both for historical year and future years. The process for establishing whether the model is suitable and fit for use is to calibrate to a historical year and then validate to other historical years.

Strategy for calibration and validation:

-   2010 or 2020 base year for calibrating the model. The term “base year” is an important year in VE modeling because all financial outputs and analysis converted to base year values. The base year may not necessarily be the earliest modeled year.

-   2005, 2010, 2015, 2020 years for validating the model. The validation year should be based on a year where there is available data to compare the VE results to. Often this is the year for a network travel demand model calibration.

In all cases, the historical years provide the opportunity to use observed data to inform the VE model inputs and evaluate the VE model outputs to empirical observations.

Validation of the VE-RSPM is documented on VisionEval GitHub website, based on March 2019 VE Training notes (see [*here*](https://github.com/gregorbj/Archive-VisionEval/blob/develop/api/VE_Training_March_13-14_2019/VE_Training.md#10-calibration-and-validation)).

### VE-RSPM Validation Process

**Regional Validation Targets**: Local datasets can provide further validation targets to check VE model results. To better match these targets, relevant outputs should be checked against the target, and additional changes made as needed to inputs to improve alignment. Other key outputs of the model should be confirmed and/or checked for reasonableness, even if not specific regional target is available.

The validation targets should be checked in the order listed, as changes to earlier items will affect outputs of items further down the list.

-   **Population & Households**: Confirm VE outputs match MPO total population inputs (*bzone\_household\_pop\_by\_age.csv, bzone\_group\_quarters\_pop\_by\_age.csv*). Population by Location Types (Metropolitan, Town, Rural) should match official [*Oregon* *Population Resource Center*](https://www.pdx.edu/prc/opfp) forecasts (except for Portland Metro) for the Urban Growth Boundary (loctype=”metropolitan”) and overall County. VisionEval models create households from input population, with households assigned to certain districts based on the dwelling unit inputs. Inputs on dwelling units and household size can be adjusted (*bzone\_dwelling\_units.csv, azone\_hhsize\_targets.csv*).

-   **Household Income**: MPO Per Capita Income is an important driver of travel. Confirm outputs match inputs (*azone\_per\_cap\_inc.csv*), developed as instructed using statewide income growth forecasts. Note that outputs are in baseyear dollars and may need to be converted to other year be make comparable (*/defs/deflators.csv*).

-   **Density**: Activity density is an important driver of travel. Outputs should be checked for reasonableness, and can be roughly compared to EPA’s 2010 [*Smart Location* *Database*](https://www.epa.gov/smartgrowth/smart-location-database-technical-documentation-and-user-guide) block group data,”D1D” density variable. Adjustments can be made to inputs for population, dwelling units, workers, as well as unprotected acres. Note that UGBs often contain areas that can’t be developed such as water bodies and large parks. ODOT has guidance for removing these undevelopable areas with GIS methods, as part of its instructions for building Oregon Place Types from TAZ data.

-   **Vehicle Miles Travelled** (VMT): The VE model system accounts for the miles traveled by the household regardless of where the travel occurred. Two primary sources of data to validate the VE model include: BTS LATCH data and link based HPMS data.

    -   BTS LATCH data is empirically modeled data developed by the NHTS to estimate VMT and other per household transportation metrics such as person trips or person miles traveled. This data is estimated at the Census Tract level, and an empirically valid data source to use for model validation. Note that current Latch data is estimated for 2017. Therefore, it is advised to compare the closest reference year data estimated in the VE model such as 2020.

    -   HPMS provides MPO-level vehicle miles traveled for historic years. Note that HPMS definition of VMT differs from that of VE. VE reports on all household travel regardless of where it occurs and adds Commercial vehicle and Heavy Duty Truck and Bus travel on MPO roads. HPMS reports vehicular travel of all modes on roads within the MPO boundary. HPMS is most valuable at the overall state level to compare total linked based VMT to the entire model region boundary.

-   **MPG:** Overall fuel efficiency of light duty passenger and Commercial Service, as well as transit and heavy trucks are output by the model. The combined fuel efficiencies of registered passenger and commercial service can be obtained from DMV data and used to check for reasonableness in the base year.

-   **Statewide Fuel consumed**: Fuel sales are rarely tracked at the sub-state level, but may be available if there is a local gas tax. Even if available, the purchase location is not an accurate indicator of where fuel was used, so use caution when comparing.

-   **Sensitivity Testing**: Sensitivity tests should be performed to evaluate the reasonableness (eg. Correct direction and magnitude) of the VisionEval output estimates. More or less ambitious policy actions can be tested, and the change in various output metrics reviewed for reasonableness. These tests are a standard part of the Oregon MPO Strategic Assessment process, and running many scenarios is built into VisionEval.

-   **Comparable communities**: VE output results can be compared to prior VE scenario results in the same or other Oregon locations. Reports for all Oregon Strategic Assessment/Scenario Planning efforts can be found on this [*OSTI website*](https://www.oregon.gov/ODOT/Planning/Pages/Strategic-Assessment.aspx). CAMPO & RVMPO Strategic Assessment reports include Reference Case (typically early report table) and sensitivity test results (typically in appendices) that provide good comparable estimates.

### Sample MPO Validation Targets for VE

### Calibration variables and sources of data

The following Validation Target Datasets are provided by ODOT for use in Albany (AAMPO). Note that some come from the VE-State model, with most from outside datasets:

#### VMT

The table below shows the HPMS data available from ODOT (and from FHWA) with link volumes for the AAMPO metro region. Each metro region can be selected from the data to obtain a link by link analysis. Mindful that VE uses Freeway (Interstate, Other Freeways & Expressways), and Arterials (Other Principal Arterial) as the key inputs. The other lane miles can be ignored in the VE model given the models were estimated only with those two inputs.

Figure 5: HPMS VMT (miles of all modes on roads within MPO boundary)

> ![A screenshot of a computer Description automatically generated](media/image3.png)

Source: 1999-2016 VMT\_Miles history.xlsx (\\\\s6000e\\6420only\\Statewide\\Tools\\GreenSTEP\\ModelBuild\\\_Data\\Local\_Plans\\Roads\\HPMS\_data)

#### Light Duty Vehicles

The following data light duty vehicle data is collected from the DMV. Light Duty DMV vehicles are classified as follows:

Table : light duty vehicles

| vehicle groups                   | vehicle types                    | powertrains                                           |
|----------------------------------|----------------------------------|-------------------------------------------------------|
| CV: Commercial Vehicle           | Auto                             | ICE: Internal Combusiton Engine                       |
| HH: Personal (Household) Vehicle | LT: Light truck (including SUVs) | HEV: Hybrid Electric Vehicle                          |
|                                  |                                  | PHEV: Plug-in Hybrid Electric Vehicle                 |
|                                  |                                  | EV: Full Battery Electric Vehicle (also known as BEV) |

Source: STS-Monitoring\_DMV2016.xlsx

\\\\s6000e\\6420only\\Statewide\\Tools\\GreenSTEP\\ModelBuild\\\_Data\\Vehicles\_Fuels\\DMV\\

Table : 2016 Oregon DMV Registered Vehicles by MPO

![A screenshot of a computer Description automatically generated](media/image4.png)

Table : 2016 Oregon DMV Registered Vehicle Average Age by MPO

![A screenshot of a computer Description automatically generated](media/image5.png)

Table : 2016 Oregon DMV Registered Vehicle Powertrains by MPO (All LDV)

![A screenshot of a data Description automatically generated](media/image6.png)

Table : 2016 Oregon DMV Registered Vehicle MPG (Statewide, All LDV)

![A screenshot of a computer Description automatically generated](media/image7.png)

#### Population & Households

VE outputs were confirmed to match MPO total population inputs (*bzone\_household\_pop\_by\_age.csv, bzone\_group\_quarters\_pop\_by\_age.csv).* No Group Quarters were assumed. Population by Location Types (Metropolitan, Town, Rural) matches official forecasts (except for Portland Metro) for the Urban Growth Boundary and overall County. VisionEval models create households from input population, aided by input household size (*azone\_hhsize\_targets.csv*).

: ve-state historic validation – LDV fuel gallons

![A screenshot of a spreadsheet Description automatically generated](media/image8.png)

### Base Year Outputs

The primary outputs of the VisionEval model used to evaluate the calibration and validation of the model include the following:

-   Household size and age

-   Workers and employment

-   Household life cycle

-   Income

-   Housing Typology

-   Employment Locations

-   Location Type

-   Population, employment, and activity density

-   Neighborhood type

-   Parking

-   TDM programs

-   Available car services

-   Transit services

-   Freeway Lane Miles

-   Drivers

-   Vehicle Ownership

-   Vehicle type

-   Vehicle age

-   Daily VMTs

-   Alternate mode trips

-   Single-occupancy vehicles

-   Vehicle powertrains and fuels

-   Road performance

-   Energy and Emissions, etc.
