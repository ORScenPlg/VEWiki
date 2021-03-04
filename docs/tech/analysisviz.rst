Analyzing & Visualizing Outputs
****************************************

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

Example - VERPAT Scenario Viewer
-----------------------------------------

.. figure:: https://github.com/ORScenPlg/VETechWiki/blob/main/media/VERPAT_ScenarioViewer.jpg
   :alt: 

The Viewer is broken into three parts - the Inputs (vertical bar charts)
along the top row. The Outputs (vertical bar charts) just under the
inputs, and the scenario data table is at the very bottom.

.. _header-n9:

**Inputs**
--------------

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
=======

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
