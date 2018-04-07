.PHONY: all clean

all: tetrish.jsh

tetrish.jsh: tetrish convert.sed
	./convert.sed < $< > $@
	chmod 755 tetrish.jsh

clean:
	rm -vf tetrish.jsh
