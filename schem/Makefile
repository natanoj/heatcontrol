.PHONY=drc clean check

ROOMUNITALLFILES=roomunit/roomunit.sch roomunit/roomunit-psu-daughter.sch \
	roomunit/roomunit-poe-dcdc.sch roomunit/roomunit-sensors.sch \
	roomunit/roomunit-ui.sch roomunit/roomunit-cpu.sch \
	roomunit/roomunit-cpu-pwrclk.sch roomunit/roomunit-display-daughter.sch
ROOMUNITTOPFILES=roomunit/roomunit.sch \
	roomunit/roomunit-psu-daughter.sch \
	roomunit/roomunit-display-daughter.sch

all: drc check simulation

drc: roomunit-drc2.net

bom: attribs $(ROOMUNITALLFILES)
	gnetlist -g bom2 -o roomunit.bom $(ROOMUNITTOPFILES)

roomunit-drc2.net: $(ROOMUNITALLFILES)
	gnetlist -g drc2 -o roomunit-drc2.net $(ROOMUNITTOPFILES)

check:
	./checkusedsyms.sh
	./checkusedfootprints.sh

clean:
	rm -f roomunit-drc2.net
	rm -f roomunit/simulation/*.net
	rm -f roomunit/simulation/*.out
	rm -f roomunit.bom

simulation: roomunit-simulation

roomunit-simulation: roomunit/simulation/power_output_filter.net
	cd roomunit/simulation && gnucap -i gnucap.rc

%.net: %.sch
	gnetlist -g spice -o $@ $<

roomunit-pcb: $(ROOMUNITALLFILES)
	gsch2pcb --elements-dir ../pcb/pkg/newlib/ \
	    --skip-m4 \
	    --output-name ../pcb/roomunit roomunit/roomunit.sch

roomunit-psu-pcb: roomunit/roomunit-psu-daughter.sch \
	roomunit/roomunit-poe-dcdc.sch
	gsch2pcb --elements-dir ../pcb/pkg/newlib/ \
	    --skip-m4 \
	    --output-name ../pcb/roomunit-psu \
	    roomunit/roomunit-psu-daughter.sch

roomunit-display-pcb: roomunit/roomunit-display-daughter.sch
	gsch2pcb --elements-dir ../pcb/pkg/newlib/ \
	    --skip-m4 \
	    --output-name ../pcb/roomunit-display \
	    roomunit/roomunit-display-daughter.sch
