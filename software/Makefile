.PHONY=roomunit etags clean

all: roomunit

roomunit:
	${MAKE} -C roomunit TARGET=roomunit

etags:
	rm -f TAGS
	find . -name '*.h' -o -name '*.c' -exec etags -a {} \;

clean:
	${MAKE} -C roomunit clean
