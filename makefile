
ptex2pdf = ptex2pdf -l -ot -kanji=utf8 -synctex=1

ifdef target
_target = ./index.tex
_targetDir = ./${target}
else
_target = ./master.tex
_targetDir = ./
endif

build:
	cd $(_targetDir); \
	$(ptex2pdf) $(_target); \
	$(ptex2pdf) $(_target)
