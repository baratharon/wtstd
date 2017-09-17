## Based on the Welltype test suite

DIFF=diff -w
RM=rm -f
WT=wt
WTC=wtc

WTFLAGS = -labels-all -inline-32 -inline-64

TMPFILE=tmp
TESTFILES=$(wildcard *.wt)

default: test

clean:
	$(RM) $(TMPFILE) *.wtb

test: clean $(TESTFILES:.wt=.wt_test)
	@$(RM) $(TMPFILE)
	@echo Done.

%.wt_test: %.wtb
	@$(WT) -l ../wtstd.wtb $< >$(TMPFILE)
	@$(DIFF) $(TMPFILE) $(basename $<).txt
	@echo Passed $(basename $<)

%.wtb: %.wt
	@$(WTC) $(WTFLAGS) $<
