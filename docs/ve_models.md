# VisionEval Overview
VisionEval (http://visioneval.org) is a collaborative project funded by a federal pooled funds initiative led by FHWA to integrate the [GreenSTEP family of models](https://github.com/ORScenPlg/VETechWiki/wiki/History-of-Strategic-Models) for performance-based transportation planning into a single open-source programming framework. The common framework shared between VisionEval models enables new features to be added in a ‘plug-and-play’ fashion so they can be easily shared among models.

Three models are currently available in the VisionEval framework: VE-RSPM, VE-RPAT, and VE-State. The VE-RSPM and VE-RSPM models are functionally the same as the RSPM and RPAT models, respectively.  VE-State is the newest addition to the VisionEval project. 

**VE-RSPM** models the region in zones (in a manner similar to traditional travel model zones), which results in improved spatial resolution of outputs, but which also increases the data development burden. The selection of the right tool therefore depends on a number of factors – available of data, project resources, desired spatial output detail, etc. 

**VE-State** is essentially a state level version of VE-RSPM. Like VE-RSPM, this model operates at the zonal level, but the zones are larger than their VE-RSPM counterparts.

**VE-RPAT** operates primarily at the region level and therefore requires inputs at the region or place type level. As shown below, place types are defined as a combination of area type and development type. Area type (or regional role) describes the interdependencies of each neighborhood compared to the rest of the region, e.g., how centered is it to jobs in the region. Development type (or neighborhood character) is used to describe the physical characteristics of each neighborhood in isolation. Operating at the place type level simplifies the input data requirements and the spatial precision of outputs while still capturing the effects of the different place types in the region. 

[insert picture of VisionEval Handout, or link handout directly in sidebar]

# VisionEval Modeling Framework

All VisionEval models share a common framework composed of eight modeling steps. Each step includes several calculations, each determined through the statistical analysis of several data sources such as the National Household Travel Survey and the Census, that operate on the input data and the results of the previous calculation step. The steps define households and associated policies, characterize vehicle ownership of those households, calculate vehicle miles traveled (VMT) and emissions, balance VMT with travel costs, and finally estimate non-household travel and emissions (e.g., from commercial trucks or rail).

The model framework disaggregates travel demand impacts at an individual household level. Modeling at the household level makes it possible to evaluate the relationships between travel, emissions and the characteristics of households, land use, transportation systems, vehicles, and other factors. In addition, household level analysis makes it possible to evaluate the equitability of the costs and benefits of different strategies.

The model iterates through the last couple of steps to balance household travel with costs. The iterative process to balance the VMT with travel costs allows congestion and other costs introduced at this step influence the amount of travel. This step balances the amount of household travel with the cost of travel and recalculates household VMT, fuel use, and GHG emissions in the process. The primary outputs of VE-RSPM are household travel, fuel and power consumption, and GHG emissions calculations, but other information is produced for households and commercial vehicles as well. The amount of commercial (light‐duty) and freight (heavy duty) travel is calculated as well as associated fuel, power consumption and GHG emissions for those vehicles.

<p align="center">
<img src="https://github.com/ORScenPlg/VETechWiki/blob/main/media/VE-RSPM%20Model%20Schematic.png" alt="VE-RSPM Model Schematic" width="600" height="" >
</p>

VisionEval models, particularly the more robust VE-RSPM and VE-State models, consider a large number of factors which affect the performance of transportation systems and their effects on people and the environment. The models were made with the intention of estimating and forecasting the effects of various policies and other influences on the amount of vehicle travel, the types of vehicles and fuels used, and the resulting GHG emissions among other outcomes.

The VE-RSPM models can assess the following situations (not exhaustive):
* Changes in population demographics (age structure);
* Changes in personal income;
* Relative amounts of development occurring in metropolitan, urban and rural areas;
* Metropolitan, other urban, and rural area densities;
* Urban form in metropolitan areas (proportion of population living in mixed use areas with a well interconnected street and walkway system);
* Amounts of metropolitan area transit service;
* Metropolitan freeway and arterial supplies;
* Auto and light truck proportions by year;
* Average vehicle fuel economy by vehicle type and year;
* Vehicle age distribution by vehicle type;
* Electric vehicles (EVs), plug-in hybrid electric vehicles (PHEVs)
* Light-weight vehicles such as bicycles, electric bicycles, electric scooters, etc.;
* Pricing – fuel, vehicle miles traveled (VMT), parking;
* Demand management – employer-based and individual marketing;
* Car-sharing;
* Effects of congestion on fuel economy;
* Effects of incident management on fuel economy;
* Vehicle operation and maintenance – eco-driving, low rolling resistance tires, speed limits;
* Carbon intensity of fuels, including the well to wheels emissions; and
* Carbon production from the electric power that is generated to run electric vehicles.