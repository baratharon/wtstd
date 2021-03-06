SRC = wtstd.wt
SRCX = string_builder.wt
LIBNAME = wtstd.wtb
INCNAME = wtstd.inc

WTFLAGS = -gen-import -impinc-name $(INCNAME) -add-hash BLAKE-256 -labels-top

$(LIBNAME): $(SRC) $(SRCX)
	wtc -o $(LIBNAME) $(WTFLAGS) $(SRC)
