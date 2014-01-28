.PHONY=heatcontrol-doc heatcontrol-schem clean-doc clean-schem

all: heatcontrol-doc heatcontrol-schem

heatcontrol-doc:
	$(MAKE) -C doc

heatcontrol-schem:
	$(MAKE) -C schem

clean: clean-doc clean-schem

clean-doc:
	$(MAKE) -C doc clean

clean-schem:
	$(MAKE) -C schem clean
