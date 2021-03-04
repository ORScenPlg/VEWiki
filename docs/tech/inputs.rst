.. _header-n2:

Inputs {#topics-inputs}
=======================

VE-RSPM inputs can be grouped into two categories, reflecting the
timeline when the data is required:

 - Land Use Inputs
 - Transportation Inputs

.. _header-n6:

Land Use Inputs
---------------

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

OREGON Income Index
~~~~~~~~~~~~~~~~~~~

Below table is the statewide income growth index to convert the input
values for "azone\ *per*\ cap_inc.csv", based on their base year
calculated values.

--------------



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

#+------------------------------------+ #
#+====================================+ #File #:------- # \| \|
#azone\ *hh*\ pop\ *by*\ age.csv

see
https://github.com/VisionEval/VisionEval-Dev/blob/readme-dev/docs/tutorials/verspm/Inputs_and_Parameters.md#input-files

RSPM DEMOGRAPHIC AND LAND USE INPUTS

+--------------------------------------------+----------------------------------+-----------------------------------------------------------------------+
|                                            |                                  |                                                                       |
| Population by age                          | azone_hh_pop_by_age.csv          | Number of   Household persons within 6 age groups by year by Azone    |
| (HH & non-institutional Group Quarters)    |                                  |                                                                       |
+============================================+==================================+=======================================================================+
|                                            |                                  |                                                                       |
|                                            | azone_gq_pop_by_age.csv          | Number of Non-Institutional Group Quarters                            |
|                                            |                                  | persons by 6 age groups by year by Azone                              |
+--------------------------------------------+----------------------------------+-----------------------------------------------------------------------+
|                                            |                                  |                                                                       |
|                                            | azone_hhsize_targets.csv         | Average household   size & share of 1-person                          |
| Average Household size,                    |                                  | households by year by Azone                                           |
| %1-person households                       |                                  |                                                                       |
|                                            |                                  |                                                                       |
+--------------------------------------------+----------------------------------+-----------------------------------------------------------------------+
|                                            |                                  |                                                                       |
|                                            | region_hh_driver_adjust_prop.csv | Licensed share of   driving age persons in 5 age groups               |
| Licensure drivers rate (optional)          |                                  | relative to model estimation year (2001   NHTS) by year               |
|                                            |                                  |                                                                       |
|                                            |                                  |                                                                       |
+--------------------------------------------+----------------------------------+-----------------------------------------------------------------------+
|                                            |                                  |                                                                       |
|                                            | azone_per_cap_inc.csv            | Annual Per Capita                                                     |
| Average Per Capita Income                  |                                  | Income by type (HH, GQ) by Year by Azone                              |
|                                            |                                  |                                                                       |
|                                            |                                  |                                                                       |
+--------------------------------------------+----------------------------------+-----------------------------------------------------------------------+
|                                            |                                  |                                                                       |
|                                            | azone_relative_employment.csv    | (optional) Employed   share of Household workers in 5 age             |
| Employed share of HH workers               |                                  | groups relative to model estimation year                              |
|                                            |                                  | (2001 NHTS) by year by Azone                                          |
+--------------------------------------------+----------------------------------+-----------------------------------------------------------------------+


Land Use Inputs


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


.. _header-n21:



Transportation Inputs
---------------------
