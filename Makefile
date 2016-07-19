




mlton:
	mlton dbtest.mlb

install: mlton
	cp ./dbtest $(DESTDIR)/bin/
