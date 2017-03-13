all: _site/about.html _site/cinder.html _site/EleanorPark.html _site/index.html _site/MortalInstruments.html _site/Tearling.html _site/Upcoming.html _site/WordClouds.html _site/HarryPotter.html _site/WrinkleTime.html _site/CharlottesWeb.html

_site/about.html: about.Rmd
	Rscript  -e 'rmarkdown:: render("about.Rmd","html_document")'
	mv about.html _site

_site/cinder.html: cinder.Rmd
	Rscript  -e 'rmarkdown:: render("cinder.Rmd","html_document")'
	mv cinder.html _site
	
_site/CharlottesWeb.html: CharlottesWeb.Rmd
	Rscript  -e 'rmarkdown:: render("CharlottesWeb.Rmd","html_document")'
	mv CharlottesWeb.html _site

_site/EleanorPark.html: EleanorPark.Rmd
	Rscript  -e 'rmarkdown:: render("EleanorPark.Rmd","html_document")'
	mv EleanorPark.html _site

_site/HarryPotter.html: HarryPotter.Rmd
	Rscript  -e 'rmarkdown:: render("HarryPotter.Rmd","html_document")'
	mv HarryPotter.html _site

_site/index.html: index.Rmd
	Rscript  -e 'rmarkdown:: render("index.Rmd","html_document")'
	mv index.html _site

_site/MortalInstruments.html: MortalInstruments.Rmd
	Rscript  -e 'rmarkdown:: render("MortalInstruments.Rmd","html_document")'
	mv MortalInstruments.html _site

_site/Tearling.html: Tearling.Rmd
	Rscript  -e 'rmarkdown:: render("Tearling.Rmd","html_document")'
	mv Tearling.html _site

_site/Upcoming.html: Upcoming.Rmd
	Rscript  -e 'rmarkdown:: render("Upcoming.Rmd","html_document")'
	mv Upcoming.html _site

_site/WordClouds.html: WordClouds.Rmd
	Rscript  -e 'rmarkdown:: render("WordClouds.Rmd","html_document")'
	mv WordClouds.html _site
	
_site/WrinkleTime.html: WrinkleTime.Rmd
	Rscript  -e 'rmarkdown:: render("WrinkleTime.Rmd","html_document")'
	mv WrinkleTime.html _site
	
site:
	Rscript -e 'rmarkdown:: render_site()'

clean:
	rm -rf _site
	mkdir _site
