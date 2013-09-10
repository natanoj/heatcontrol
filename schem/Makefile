.PHONY=drc clean

ROOMUNITFILES=roomunit/roomunit.sch roomunit/roomunit-psu.sch roomunit/roomunit-poe-dcdc.sch \
	roomunit/roomunit-sensors.sch roomunit/roomunit-ui.sch roomunit/roomunit-cpu.sch \
	roomunit/roomunit-cpu-pwrclk.sch

all:
	@echo "valid targets: drc, clean"

drc: roomunit-drc2.net

roomunit-drc2.net: $(ROOMUNITFILES)
	gnetlist -g drc2 -o roomunit-drc2.net roomunit/roomunit.sch


clean:
	rm -f roomunit-drc2.net
