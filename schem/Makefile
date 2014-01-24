.PHONY=drc clean check

ROOMUNITFILES=roomunit/roomunit.sch roomunit/roomunit-psu.sch roomunit/roomunit-poe-dcdc.sch \
	roomunit/roomunit-sensors.sch roomunit/roomunit-ui.sch roomunit/roomunit-cpu.sch \
	roomunit/roomunit-cpu-pwrclk.sch

all:
	@echo "valid targets: drc, clean"

drc: roomunit-drc2.net

roomunit-drc2.net: $(ROOMUNITFILES)
	gnetlist -g drc2 -o roomunit-drc2.net roomunit/roomunit.sch

check:
	./checkusedsyms.sh

clean:
	rm -f roomunit-drc2.net

simulation: roomunit-simulation

roomunit-simulation: roomunit/simulation/power_output_filter.net
	$( cd roomunit/simulation; gnucap -i gnucap.rc )

simulation/%.net: %.sch
	gnetlist -g spice -o $@ $<
