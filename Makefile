# yes this is platform specific; sue me
# edit for whatever preview you use
PREVIEW_CMD=open

all: CV

preview: CV
	$(PREVIEW_CMD) CV.pdf

CV: 
	typst compile CV.typ CV.pdf --font-path ./assets/ --ignore-system-fonts

clean: 
	rm *.pdf

