# Build every CV variant: each directory containing a main.tex
VARIANTS := $(patsubst %/main.tex,%,$(wildcard */main.tex))

.PHONY: all clean $(VARIANTS)

all: $(VARIANTS)

$(VARIANTS):
	cd $@ && latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex

clean:
	for v in $(VARIANTS); do (cd $$v && latexmk -C); done
