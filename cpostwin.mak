COPTS = /nologo /ML /W3 /GX /O2 /D WIN32 /D NDEBUG /D _CONSOLE /D OPSYS_WIN /YX /c
LOPTS = /nologo /subsystem:console /incremental:no

WILDCARD_OBJ = d:\vs60\vc98\lib\setargv.obj

OBJS = \
 cpost.obj\
 cpostp1.obj\
 cpostp2.obj\
 cpostutl.obj\
 cpostpar.obj\
 ctok.obj\
 parsearg.obj\
 list.obj\
 hash.obj\
 tokfile.obj\
 $(WILDCARD_OBJ)

cpost.exe  : $(OBJS)
    link $(LOPTS) /out:$@ $** $(LIBS)

.c.obj:
   cl $(COPTS) /Fo$@ $<

cpost.obj    : cpost.h  ctok.h tokfile.h parsearg.h cposthdr.h
cpostp1.obj  : cpost.h  ctok.h
cpostp2.obj  : cpost.h  ctok.h
cpostutl.obj : cpost.h  ctok.h tokfile.h
cpostpar.obj : cpost.h  ctok.h
ctok.obj     : ctok.h
list.obj     : list.h
hash.obj     : hash.h
tokfile.obj  : tokfile.h
parsearg.obj : parsearg.h
