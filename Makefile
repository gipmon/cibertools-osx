

all: makeSimulator makeViewer makeLogplayer makeLibRobSock makeGUISample makeRobsample

makeSimulator:
	(cd simulator-cibertools-v2.1; qmake -makefile) 
	make -C simulator-cibertools-v2.1
	(cd simulator-adapted; qmake -makefile) 
	make -C simulator-adapted

makeViewer:
	(cd Viewer; qmake -makefile) 
	make -C Viewer

makeLogplayer:
	(cd logplayer; qmake -makefile) 
	make -C logplayer

makeLibRobSock:
	(cd libRobSock; qmake -makefile) 
	make -C libRobSock

makeGUISample:
	(cd GUISample; qmake -makefile) 
	make -C GUISample

makeRobsample:
	(cd robsample; qmake -makefile) 
	make -C robsample

clean:
	make -C simulator-cibertools-v2.1 clean
	make -C simulator-adapted clean
	make -C Viewer clean
	make -C logplayer clean
	make -C libRobSock clean
	make -C GUISample clean
	make -C robsample clean

distclean:
	make -C simulator-cibertools-v2.1 distclean
	make -C simulator-adapted distclean
	make -C Viewer distclean
	make -C logplayer distclean
	make -C libRobSock distclean
	make -C GUISample distclean
	make -C robsample distclean

