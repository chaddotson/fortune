POSSIBLE += $(shell ls -1 | egrep -v '\.dat|README|Makefile|makefile' | sed -e 's/$$/.dat/g')

all: ${POSSIBLE}

%.dat : %
	@strfile $< $@

clean:
	rm *.dat
