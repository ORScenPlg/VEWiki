.. _topics-inputs:


Inputs
*****************


VE-RSPM inputs can be grouped into two categories, reflecting the timeline when the data is required:
 - Land Use Inputs
 - Transportation Inputs


Land Use Inputs
====================

These include data based on the geography and the base and future year demographics and community design data used to establish the basic households, their location and attributes, otherwise known as the socio-economic data (SED). This data is needed early in the process to set-up the model framework. 

Other assumptions and transportation inputs for the base and future year reflecting existing conditions and adopted local plans respectively.
These inputs require a mix of data and decisions by the metropolitan area. 

Some inputs must be provided and customized for the local area. In other cases, inputs are noted as “default”, indicating that
default values are available from ODOT's work with the OSTI, although local adjustment in special cases is an option. 

In introducing each group of inputs, a table is provided listing the specific VE-RSPM filenames with a short description of their contents, as well as the “geography” or spatial level of detail. Also listed is whether or not ODOT default data is available for input as well as data sources for those inputs that MPOs will need to develop. The table also notes default inputs where local data could override default values. This information provides MPO and local government staff and decision makers with information to estimate the local/regional level of effort required for setting up a local VE-RSPM model.

A detailed spreadsheet with the Oregon specific list of input files is also provided: [VE File Summary](https://github.com/ORScenPlg/VETechWiki/raw/main/resources/VE-RSPM_File_Summary_20190708.xlsx)

OREGON Income Index
----------------------------
Below table is the statewide income growth index to convert the input values for "azone_per_cap_inc.csv", based on their base year calculated values.

+-------------------------------------------+
|Index relative to 2010 for use in VE-RSPM  |
+====================+======================+
|2010                |1                     |
+--------------------+----------------------+
|2020                |1                     |
+--------------------+----------------------+
|2025                |1                     |
+--------------------+----------------------+
|2030                |1                     |
+--------------------+----------------------+
|2035                |1                     |
+--------------------+----------------------+


#
#-----------------
#|2015|	1.057915|
#-----------------
#|2020|	1.107752|
#-----------------
#|2025|	1.159942|
#|2030|	1.214563|
#|2035|	1.271811|
#|2040|	1.331726|
#|2045|	1.394463|
#|2050|	1.460142|


#+------------------------------------+
#|RSPM Demographic and Land Use Inputs|
#+====================================+
#|NAME |File |Description|
#|:----|:-------|:-----|
#|Demographics  |        |      | 
#|Population by age (HH & non-institutional Group Quarters)|azone_hh_pop_by_age.csv|Number of Household persons within 6 age groups by year by Azone|

see
https://github.com/VisionEval/VisionEval-Dev/blob/readme-dev/docs/tutorials/verspm/Inputs_and_Parameters.md#input-files


Transportation Inputs
========================

