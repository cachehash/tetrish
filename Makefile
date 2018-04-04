.PHONY: all clean

all: tetrish.jsh

tetrish.jsh: tetrish
	sed -e '/$$((.*))/s/[()]/\\&/g' -e 's/$$\\(\\(\(.*\)\\)\\)/`expr \1`/g' < $< > $@
	chmod 755 tetrish.jsh

clean:
	rm -vf tetrish.jsh
