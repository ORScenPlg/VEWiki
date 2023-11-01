# Oregon Scenario Planning - Wiki

This is the source of the latest and most accurate information for the development of the scenario planning process used in Oregon to meet the OARs. 



For Developers and contributors to the Wiki


- Clone this repo from the "Pages" branch

- Open up the VETechWiki.rproj

- There should be a local environment that comes with the necessary packages for rendering the book. The Wiki uses the Bookdown package. Originally a few additional dependencies had to be installed, usch as downlit and xlm2. 

- Update the _bookdown.yml with the correct output directory location for the .md and .html files and other supporting book files. The Github pages webhooks looks in the /docs directory. All html files need to be put in the /docs directory. Also all images and other media should be put in the /docs/media directory. 

- Note, if the files change, the _bookdown.yml has to be updated with the RMD files that gets rendered.

- To build the book from the .RMD files use the function **bookdown::render_book**("local file path to where the .RMD files are") The file path should point to where the raw .RMD files exist.   

- Once rendered and the .html files are put in the /docs directory, then commit the changes and issue a pull request. 

  

