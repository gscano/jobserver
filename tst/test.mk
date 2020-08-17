all:
	@+echo "MAKEFLAGS:"$(MAKEFLAGS)

test:
	@+echo "MAKEFLAGS:"$(MAKEFLAGS)
	make -f test.mk -j2 test2 --warn-undefined-variables -k

test2:
	@+echo "MAKEFLAGS:"$(MAKEFLAGS)
	+bash test.sh -w all

test3:
	@+echo "MAKEFLAGS:"$(MAKEFLAGS)
	make -f test.mk -I .. test -- NAME=VALUE