OUT_DIR = out

MAIN_TEX = main.tex

CV_NO_PIC = $(OUT_DIR)/cv.pdf
CV_WITH_PIC = $(OUT_DIR)/cv_pic.pdf

PDFLATEX = pdflatex --output-directory="$(OUT_DIR)"

.PHONY: all clean

all: $(CV_NO_PIC) $(CV_WITH_PIC)

$(CV_NO_PIC): $(MAIN_TEX)
	@mkdir -p $(OUT_DIR)
	$(PDFLATEX) -jobname=cv $<

$(CV_WITH_PIC): $(MAIN_TEX)
	@mkdir -p $(OUT_DIR)
	WITHPIC=true $(PDFLATEX) -jobname=cv_pic $<

clean:
	@rm -rf $(OUT_DIR) *.pdf