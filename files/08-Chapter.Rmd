# Implementing Results {#chapter8}

## Identify Key Paths and Strategies

The key model outputs visualized and analyzed (see Chapter 6.2) provide the tools to investigate the various inputs, policies, and pathways to achieve desired outcomes for the region.

The Target Rule Scenario conditions (Chapter 5.0) enables tracking achieving the GHG Targets, or the equivalent household-based VMT reductions per capita. In a Scenario Plan this target is a firm requirement, but with multiple scenarios that meet the target, the region can advance those that achieve other desired outcomes.

Sensitivity Tests that showed the impact of what policies and investments impacted the goals of interest can b used to consider multi-criteria optimization.

The tools and methods for identifying key pathways will differ depending on the objective as well as the visualization tools used.

### Scenario Comparison: &lt; 12 runs

This process is best used when there are fewer than a dozen model runs. It can use predefined queries, it can use the Tableau Visualizer, and other tools to compare the inputs and outputs from a handful of individual model runs.

This process expects that the inputs were scenarios were intentionally designed and that the user would be able to directly evaluate the outcomes associated with those specific changes.

\[ insert documentation on the Tableau Visualizer \] and links to the repo

The Tableau Visualizer and its documentation can be found in the [VisionEval-Extras](https://github.com/VisionEval/VisionEval-Extras) repository.

### Themed Scenario Viewer: &lt;500 runs

This process uses the Scenario Viewer which is a javascript based HTML file to evaluate sets of grouped inputs on a predefined set of outputs. The interactive visualization can be run in two ways:

-   Goal focused. This allows the user to set ranges of desired outputs to evaluate the number of runs that satisfy those conditions.

-   Input focused. The specific input group can be ‘turned off’ with the changes in the outputs all reflecting the distribution of results from the remaining runs.

The viewer is a helpful way to get a sense on what inputs matter for specific outputs. However, it requires the user to identify specific categorical values used in the input files. Depending on the number of inputs to test, they must be grouped, given the limitations of the number of combinations. There is a limit to 6 groupings, but within each of the groups, there can be many levels. The issue quickly becomes the number of combinations and the computational time and memory required to complete the runs.

The viewer can be used to identify ranges of inputs or investigate connections between specific input themes or groups and specific outputs.

\[ confirm the themed scenario viewer works for VE 3.1 \]

### EMAT Advanced Simulation: &gt; 500 Runs

\[ put in charts and visualization that shows EMAT notebook in action. Put the charts in there from the OTP report. \]

###

## Linking To Transportation and Land Use Plans

\[ to be filled in at a later date \]

## Monitoring Process – Performance Measures?

\[ to be filled in at a later date \]

## Documenting and Sharing Results

\[ to be filled in at a later date \]
