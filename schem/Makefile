.PHONY=drc clean check

ROOMUNITFILES=roomunit/roomunit.sch roomunit/roomunit-psu.sch roomunit/roomunit-poe-dcdc.sch \
	roomunit/roomunit-sensors.sch roomunit/roomunit-ui.sch roomunit/roomunit-cpu.sch \
	roomunit/roomunit-cpu-pwrclk.sch

all: drc check simulation

drc: roomunit-drc2.net

bom: attribs $(ROOMUNITFILES)
	gnetlist -g bom2 -o roomunit.bom roomunit/roomunit.sch

roomunit-drc2.net: $(ROOMUNITFILES)
	gnetlist -g drc2 -o roomunit-drc2.net roomunit/roomunit.sch

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
