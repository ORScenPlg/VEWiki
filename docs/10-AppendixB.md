# Appendix B: Customizing VE Model Packages {#appendixB}

## working with model packages

Setting up a new VE-RSPM or VE-State model involves developing the set of input files, but also re-estimating and reinstalling certain modules and packages. This is an important step because the default model downloaded in installer folder has packages that were built with data specific to the state of Oregon.

The VisionEval framework is modular. Each package is independently installed in the "ve-lib" directory. In general, if any changes are made to a module (e.g., edits to an R script), the package that includes the module needs to be re-installed for the changes to be uploaded to the model. A full list of modules and packages in VE-RSPM can be found on GitHub. 

Only two packages generally need to be re-estimated and re-installed with a new VE-State model:

-   VESimHouseholds: This package creates household estimations using Census PUMS data.

-   VEPowertrainsAndFuels: This package was needs to be rebuilt to change the proportions of household vehicle powertrains, or the numbers of battery electric vehicles (BEV), plug-in hybrid electric vehicles (PHEV), and hybrid electric vehicles (HEV).

### Updating Key Packages

VESimHouseholds package, new estimation datasets have to be created using local ACS PUMS data. The steps to re-estimate this package are the following:

1.  Download the Process_2000_PUMS repository on GitHub and use it to create household and persons datasets to use in the VESimHouseholds package. Comments in the Process_2000_PUMS.R script describe how to use the script and where to download the state PUMS data from the Census.

2.  Place new household and persons datasets in the "extdata" directory in the VESimHouseholds package, overwriting existing datasets. Set the working directory as the package folder (i.e., "\~/modules/VSimHouseholds") and run the CreateEstimationDatasets.R script in the "R" directory. Verify that new RDA files have been generated in the "data" directory.

4.  Re-install the package using devtools.

### VEPowertrainsAndFuels

There are two important variations of the VEPowertrainsandFuels to be mindful of. These are the Adopted Plans (referred to as AP) and the Statewide Transportation Strategy (STS).

A new VEPowertrainsAndFuels package was installed during the calibration process to match model outputs of electric vehicles (EVs) to the validation data. Creating new versions of this package will be an important step to run scenarios with different levels of EV adoption.

The "extdata" directory in the package contains several datasets that control the powertrain proportions and characteristics for different vehicle classes and categories (e.g., household vehicles). The only file altered in calibration was the hh_powertrain_prop.csv. The steps for re-estimating this package are the following:

1.  Make desired changes to datasets in the "extdata" directory in the VEPowertrainsAndFuels package, overwriting existing datasets.

2.  Set the working directory as the package folder (i.e., "\~/modules/VEPowertrainsAndFuels") and run the LoadDefaultValues.R script in the "R" directory. Verify that new RDA files have been generated in the "data" directory.

Re-install the package or install a new package by renaming the module folder (e.g., VEPowertrainsAndFuels -- High EV) before running devtools. To run different scenarios, new packages should be created rather than overwriting the existing one. Note that the new packages also need to be called in the run_model.R script in the "VE-State" directory.

## Steps for Installing a Package

The steps for re-installing a package are relatively straightforward once the desired changes have been made.

The first step is to download the developer version of the packages, or the source code. The source code is available for download on the release page of each version of VisionEval. The source code has each of the VisionEval module packages in a format intended for editing; direct edits to the packages within the "ve-lib" directory should be avoided. It is recommended a separate directory is created for the source code files called "modules". Below is an example of how to reinstall the package in the "ve-lib" directory using the source code:

1.  Start a fresh R session with the visioneval package loaded by opening the VisionEval R Project. Use the .libPaths function to ensure that one of the library trees points to the "ve-lib" directory.

2.  Set the working directory as the source code directory of the package that needs to be reinstalled (e.g., "\~/modules/VEPowertrainsAndFuels").

3.  Run devtools::check() to check for any warnings and errors. If none are reported, run devtools::install().

In some cases, devtools may have difficulty removing the old installation of a package, causing an error during the devtools::install() step. The easiest workaround is to manually delete the existing version of the package in the "ve-lib" directory so the new version can be installed.