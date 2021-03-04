.. _tech-basemodel:

============================
Setting up the Base Model
============================


Deciding the study area and the analysis years are critical to the initial development of any model, let alone a strategic model. The initial decision is to determine the model geography, or study area. Users set the model geography to match reporting regions and desired policy sensitivity.

VisionEval models all use the same nested geographic units, which are designed to largely align with US Census tracts and MPO boundaries. VE-RSPM operates with a zonal geography, using zones or districts at the most granular level. Note that the VE-State geography is similar to VE-RSPM, albeit at different scales. Essentially, VE-State is the state version of VE-RSPM with the primary zone structure being typically a county.

The VisionEval geography is comprised of several levels, detailed below.


.. figure:: /media/VE_Geography.jpg



Region
----------
The region is the entire model study area, which varies by model. For example, for VE-State the region is the state. For VE-RSPM, the region can be as small as the MPO boundary or may add additional areas where the region might expand to accommodate growth by the future model year. Note that when choosing a region for VE-RSPM, the area should break along Census boundaries (typically a metropolitan classification). Large-scale characteristics that do not vary across the region are specified at the region level. Examples include fuel prices and the carbon intensities of fuels.
### Azones
Azones are large subdivisions of the region. In VE-State, counties are most typically used as the Azone level. Azones in VE-RSPM are optional and should be used to distinguish areas which may have different land use and transportation policies. For this reason, metropolitan boundaries are most commonly used as the Azone level in VE-RSPM. Note that in VE-RSPM, Azones should be relatively large, containing populations that are similar in size to those of counties or Census Public Use Microdata Areas (PUMA) (e.g., population greater than 50,000). 
* Azones are used to represent population and economic characteristics that vary across the region such as demographic forecasts of persons by age group and average per capita income. 
* Azones are the only level of geography that is required to represent actual geographic areas and may not be simulated.
Bzones
---------
Bzones are subdivisions of Azones and the smallest unit of geography in VisionEval. Bzones are used to represent neighborhood characteristics and policies that may be applied differently by neighborhood, such as population density. Bzones may correspond to actual geographic areas or may be simulated.

* In VE-RSPM, Bzones are ordinarily defined according to Census Tract boundaries (or Census Block Groups depending on data availability).

* In VE-State and VE-RPAT, Bzones are simulated. Bzone simulation greatly reduces model data requirements while still enabling the modeling of land-use-related policies and the effects of land use on various aspects of travel behavior. In rural areas, Bzones can be used to distinguish small cities from unincorporated areas.

Mareas
---------
Mareas are collections of Azones associated with an urbanized area either because a portion of the urbanized area is located in the Azone or because a substantial proportion of the workers residing in the Azone work at jobs located in the urbanized area. Metropolitan models typically only have one assigned Marea whereas state models may have several. The model system requires that each Azone may be associated with only one Marea. 

It is also required that all Azones be associated with an Marea. A special Marea named 'None' is used to apply to Azones that are not associated with any urbanized area. Mareas are used to specify and model urbanized area transportation characteristics such as overall transportation supply (transit, highways) and congestion. They are also used to specify large scale land-use-related characteristics and policies in models that use Bzone synthesis. Mareas are typically equivalent to a Census Urbanized Area.

Geographical relationships for a model are described in the "geography.csv" file contained in the "defs" directory. This file tabulates the names of each geographic unit (except for Region) and the relationships between them. Each row shows a unique relationship. Where a unit of geography is not explicitly defined (i.e., it will be simulated), "NA" values are placed in the table. It should be noted that there are no naming conventions for individual zones. The user is free to choose what conventions they will use.


=========================
Model Analysis Years
=========================
Overview text



Model Years
-----------

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

-  2010 Base Year – basis for data collection, calibration, and other
   runs.

-  2035 – the date associated with MPO GHG reduction targets and is near
   the RTP forecast date.

-  2050 – the date associated with statutory GHG reduction goals in the
   STS. The longer time frame enables consideration of more visionary
   changes that will take longer than the RTP time frame to occur

