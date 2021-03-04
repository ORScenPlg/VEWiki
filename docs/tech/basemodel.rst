.. \_tech-basemodel:

===========================

.. _header-n4:

Setting up the Base Model
=========================

.. _header-n18:

Overview
========

Deciding the study area and the analysis years are critical to the
initial development of any model, let alone a strategic model. The
initial decision is to determine the model geography, or study area.
Users set the model geography to match reporting regions and desired
policy sensitivity.

VisionEval models all use the same nested geographic units, which are
designed to largely align with US Census tracts and MPO boundaries.
VE-RSPM operates with a zonal geography, using zones or districts at the
most granular level. Note that the VE-State geography is similar to
VE-RSPM, albeit at different scales. Essentially, VE-State is the state
version of VE-RSPM with the primary zone structure being typically a
county.

The VisionEval geography is comprised of several levels, detailed below.

| .. figure::
  https://github.com/ORScenPlg/VETechWiki/media/VE_Geography.jpg
|  VE Geography

.. _header-n14:

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
