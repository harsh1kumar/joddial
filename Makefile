#############################################################################
# Makefile for building: build/jododial
# Generated by qmake (3.0) (Qt 5.2.0)
# Project:  jododial.pro
# Template: app
# Command: /usr/lib/qt/bin/qmake -o Makefile jododial.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -march=i686 -mtune=generic -O2 -pipe -fstack-protector --param=ssp-buffer-size=4 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
CXXFLAGS      = -pipe -march=i686 -mtune=generic -O2 -pipe -fstack-protector --param=ssp-buffer-size=4 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
INCPATH       = -I/usr/lib/qt/mkspecs/linux-g++ -I. -I. -Isrc -I/usr/include/qt -I/usr/include/qt/QtWidgets -I/usr/include/qt/QtGui -I/usr/include/qt/QtCore -Ibuild
LINK          = g++
LFLAGS        = -Wl,-O1,--sort-common,--as-needed,-z,relro -Wl,-O1
LIBS          = $(SUBLIBS) -lQt5Widgets -lQt5Gui -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/qt/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = build/

####### Files

SOURCES       = src/jododial.cpp \
		src/main.cpp build/qrc_jododial.cpp \
		build/moc_jododial.cpp
OBJECTS       = build/jododial.o \
		build/main.o \
		build/qrc_jododial.o \
		build/moc_jododial.o
DIST          = /usr/lib/qt/mkspecs/features/spec_pre.prf \
		/usr/lib/qt/mkspecs/common/shell-unix.conf \
		/usr/lib/qt/mkspecs/common/unix.conf \
		/usr/lib/qt/mkspecs/common/linux.conf \
		/usr/lib/qt/mkspecs/common/gcc-base.conf \
		/usr/lib/qt/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/qt/mkspecs/common/g++-base.conf \
		/usr/lib/qt/mkspecs/common/g++-unix.conf \
		/usr/lib/qt/mkspecs/qconfig.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_positioning.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_positioning_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sensors.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sensors_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkit_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_x11extras_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_phonon4qt5.pri \
		/usr/lib/qt/mkspecs/features/qt_functions.prf \
		/usr/lib/qt/mkspecs/features/qt_config.prf \
		/usr/lib/qt/mkspecs/linux-g++/qmake.conf \
		/usr/lib/qt/mkspecs/features/spec_post.prf \
		/usr/lib/qt/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt/mkspecs/features/default_pre.prf \
		/usr/lib/qt/mkspecs/features/resolve_config.prf \
		/usr/lib/qt/mkspecs/features/default_post.prf \
		/usr/lib/qt/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/lib/qt/mkspecs/features/warn_on.prf \
		/usr/lib/qt/mkspecs/features/qt.prf \
		/usr/lib/qt/mkspecs/features/resources.prf \
		/usr/lib/qt/mkspecs/features/moc.prf \
		/usr/lib/qt/mkspecs/features/unix/opengl.prf \
		/usr/lib/qt/mkspecs/features/uic.prf \
		/usr/lib/qt/mkspecs/features/unix/thread.prf \
		/usr/lib/qt/mkspecs/features/testcase_targets.prf \
		/usr/lib/qt/mkspecs/features/exceptions.prf \
		/usr/lib/qt/mkspecs/features/yacc.prf \
		/usr/lib/qt/mkspecs/features/lex.prf \
		jododial.pro \
		jododial.qrc \
		jododial.pro
QMAKE_TARGET  = jododial
DESTDIR       = build/#avoid trailing-slash linebreak
TARGET        = build/jododial


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	@test -d build/ || mkdir -p build/
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: jododial.pro /usr/lib/qt/mkspecs/linux-g++/qmake.conf /usr/lib/qt/mkspecs/features/spec_pre.prf \
		/usr/lib/qt/mkspecs/common/shell-unix.conf \
		/usr/lib/qt/mkspecs/common/unix.conf \
		/usr/lib/qt/mkspecs/common/linux.conf \
		/usr/lib/qt/mkspecs/common/gcc-base.conf \
		/usr/lib/qt/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/qt/mkspecs/common/g++-base.conf \
		/usr/lib/qt/mkspecs/common/g++-unix.conf \
		/usr/lib/qt/mkspecs/qconfig.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_positioning.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_positioning_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sensors.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sensors_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_svg.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_svg_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkit.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkit_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_x11extras.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_x11extras_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/usr/lib/qt/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/usr/lib/qt/mkspecs/modules/qt_phonon4qt5.pri \
		/usr/lib/qt/mkspecs/features/qt_functions.prf \
		/usr/lib/qt/mkspecs/features/qt_config.prf \
		/usr/lib/qt/mkspecs/linux-g++/qmake.conf \
		/usr/lib/qt/mkspecs/features/spec_post.prf \
		/usr/lib/qt/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt/mkspecs/features/default_pre.prf \
		/usr/lib/qt/mkspecs/features/resolve_config.prf \
		/usr/lib/qt/mkspecs/features/default_post.prf \
		/usr/lib/qt/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/lib/qt/mkspecs/features/warn_on.prf \
		/usr/lib/qt/mkspecs/features/qt.prf \
		/usr/lib/qt/mkspecs/features/resources.prf \
		/usr/lib/qt/mkspecs/features/moc.prf \
		/usr/lib/qt/mkspecs/features/unix/opengl.prf \
		/usr/lib/qt/mkspecs/features/uic.prf \
		/usr/lib/qt/mkspecs/features/unix/thread.prf \
		/usr/lib/qt/mkspecs/features/testcase_targets.prf \
		/usr/lib/qt/mkspecs/features/exceptions.prf \
		/usr/lib/qt/mkspecs/features/yacc.prf \
		/usr/lib/qt/mkspecs/features/lex.prf \
		jododial.pro \
		jododial.qrc \
		/lib/libQt5Widgets.prl \
		/lib/libQt5Gui.prl \
		/lib/libQt5Core.prl
	$(QMAKE) -o Makefile jododial.pro
/usr/lib/qt/mkspecs/features/spec_pre.prf:
/usr/lib/qt/mkspecs/common/shell-unix.conf:
/usr/lib/qt/mkspecs/common/unix.conf:
/usr/lib/qt/mkspecs/common/linux.conf:
/usr/lib/qt/mkspecs/common/gcc-base.conf:
/usr/lib/qt/mkspecs/common/gcc-base-unix.conf:
/usr/lib/qt/mkspecs/common/g++-base.conf:
/usr/lib/qt/mkspecs/common/g++-unix.conf:
/usr/lib/qt/mkspecs/qconfig.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_core.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_network.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_positioning.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_positioning_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_qml.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_qml_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_qmltest_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_quick.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_quick_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_quickparticles_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_sensors.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_sensors_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_svg.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_svg_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_webkit.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_webkit_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_webkitwidgets.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_x11extras.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_x11extras_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_xmlpatterns.pri:
/usr/lib/qt/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/usr/lib/qt/mkspecs/modules/qt_phonon4qt5.pri:
/usr/lib/qt/mkspecs/features/qt_functions.prf:
/usr/lib/qt/mkspecs/features/qt_config.prf:
/usr/lib/qt/mkspecs/linux-g++/qmake.conf:
/usr/lib/qt/mkspecs/features/spec_post.prf:
/usr/lib/qt/mkspecs/features/exclusive_builds.prf:
/usr/lib/qt/mkspecs/features/default_pre.prf:
/usr/lib/qt/mkspecs/features/resolve_config.prf:
/usr/lib/qt/mkspecs/features/default_post.prf:
/usr/lib/qt/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/lib/qt/mkspecs/features/warn_on.prf:
/usr/lib/qt/mkspecs/features/qt.prf:
/usr/lib/qt/mkspecs/features/resources.prf:
/usr/lib/qt/mkspecs/features/moc.prf:
/usr/lib/qt/mkspecs/features/unix/opengl.prf:
/usr/lib/qt/mkspecs/features/uic.prf:
/usr/lib/qt/mkspecs/features/unix/thread.prf:
/usr/lib/qt/mkspecs/features/testcase_targets.prf:
/usr/lib/qt/mkspecs/features/exceptions.prf:
/usr/lib/qt/mkspecs/features/yacc.prf:
/usr/lib/qt/mkspecs/features/lex.prf:
jododial.pro:
jododial.qrc:
/lib/libQt5Widgets.prl:
/lib/libQt5Gui.prl:
/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile jododial.pro

qmake_all: FORCE

dist: 
	@test -d build/jododial1.0.0 || mkdir -p build/jododial1.0.0
	$(COPY_FILE) --parents $(SOURCES) $(DIST) build/jododial1.0.0/ && $(COPY_FILE) --parents jododial.qrc build/jododial1.0.0/ && $(COPY_FILE) --parents src/jododial.h build/jododial1.0.0/ && $(COPY_FILE) --parents src/jododial.cpp src/main.cpp build/jododial1.0.0/ && (cd `dirname build/jododial1.0.0` && $(TAR) jododial1.0.0.tar jododial1.0.0 && $(COMPRESS) jododial1.0.0.tar) && $(MOVE) `dirname build/jododial1.0.0`/jododial1.0.0.tar.gz . && $(DEL_FILE) -r build/jododial1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all: build/qrc_jododial.cpp
compiler_rcc_clean:
	-$(DEL_FILE) build/qrc_jododial.cpp
build/qrc_jododial.cpp: jododial.qrc \
		Jododial.png
	/usr/lib/qt/bin/rcc -name jododial jododial.qrc -o build/qrc_jododial.cpp

compiler_moc_header_make_all: build/moc_jododial.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) build/moc_jododial.cpp
build/moc_jododial.cpp: /usr/include/qt/QtWidgets/QWidget \
		/usr/include/qt/QtWidgets/qwidget.h \
		/usr/include/qt/QtGui/qwindowdefs.h \
		/usr/include/qt/QtCore/qglobal.h \
		/usr/include/qt/QtCore/qconfig.h \
		/usr/include/qt/QtCore/qfeatures.h \
		/usr/include/qt/QtCore/qsystemdetection.h \
		/usr/include/qt/QtCore/qprocessordetection.h \
		/usr/include/qt/QtCore/qcompilerdetection.h \
		/usr/include/qt/QtCore/qglobalstatic.h \
		/usr/include/qt/QtCore/qatomic.h \
		/usr/include/qt/QtCore/qbasicatomic.h \
		/usr/include/qt/QtCore/qatomic_bootstrap.h \
		/usr/include/qt/QtCore/qgenericatomic.h \
		/usr/include/qt/QtCore/qatomic_msvc.h \
		/usr/include/qt/QtCore/qatomic_integrity.h \
		/usr/include/qt/QtCore/qoldbasicatomic.h \
		/usr/include/qt/QtCore/qatomic_vxworks.h \
		/usr/include/qt/QtCore/qatomic_power.h \
		/usr/include/qt/QtCore/qatomic_alpha.h \
		/usr/include/qt/QtCore/qatomic_armv7.h \
		/usr/include/qt/QtCore/qatomic_armv6.h \
		/usr/include/qt/QtCore/qatomic_armv5.h \
		/usr/include/qt/QtCore/qatomic_bfin.h \
		/usr/include/qt/QtCore/qatomic_ia64.h \
		/usr/include/qt/QtCore/qatomic_mips.h \
		/usr/include/qt/QtCore/qatomic_s390.h \
		/usr/include/qt/QtCore/qatomic_sh4a.h \
		/usr/include/qt/QtCore/qatomic_sparc.h \
		/usr/include/qt/QtCore/qatomic_x86.h \
		/usr/include/qt/QtCore/qatomic_cxx11.h \
		/usr/include/qt/QtCore/qatomic_gcc.h \
		/usr/include/qt/QtCore/qatomic_unix.h \
		/usr/include/qt/QtCore/qmutex.h \
		/usr/include/qt/QtCore/qlogging.h \
		/usr/include/qt/QtCore/qflags.h \
		/usr/include/qt/QtCore/qtypeinfo.h \
		/usr/include/qt/QtCore/qtypetraits.h \
		/usr/include/qt/QtCore/qsysinfo.h \
		/usr/include/qt/QtCore/qobjectdefs.h \
		/usr/include/qt/QtCore/qnamespace.h \
		/usr/include/qt/QtCore/qobjectdefs_impl.h \
		/usr/include/qt/QtGui/qwindowdefs_win.h \
		/usr/include/qt/QtCore/qobject.h \
		/usr/include/qt/QtCore/qstring.h \
		/usr/include/qt/QtCore/qchar.h \
		/usr/include/qt/QtCore/qbytearray.h \
		/usr/include/qt/QtCore/qrefcount.h \
		/usr/include/qt/QtCore/qarraydata.h \
		/usr/include/qt/QtCore/qstringbuilder.h \
		/usr/include/qt/QtCore/qlist.h \
		/usr/include/qt/QtCore/qalgorithms.h \
		/usr/include/qt/QtCore/qiterator.h \
		/usr/include/qt/QtCore/qcoreevent.h \
		/usr/include/qt/QtCore/qscopedpointer.h \
		/usr/include/qt/QtCore/qmetatype.h \
		/usr/include/qt/QtCore/qvarlengtharray.h \
		/usr/include/qt/QtCore/qcontainerfwd.h \
		/usr/include/qt/QtCore/qisenum.h \
		/usr/include/qt/QtCore/qobject_impl.h \
		/usr/include/qt/QtCore/qmargins.h \
		/usr/include/qt/QtCore/qrect.h \
		/usr/include/qt/QtCore/qsize.h \
		/usr/include/qt/QtCore/qpoint.h \
		/usr/include/qt/QtGui/qpaintdevice.h \
		/usr/include/qt/QtGui/qpalette.h \
		/usr/include/qt/QtGui/qcolor.h \
		/usr/include/qt/QtGui/qrgb.h \
		/usr/include/qt/QtCore/qstringlist.h \
		/usr/include/qt/QtCore/qdatastream.h \
		/usr/include/qt/QtCore/qiodevice.h \
		/usr/include/qt/QtCore/qpair.h \
		/usr/include/qt/QtCore/qregexp.h \
		/usr/include/qt/QtCore/qstringmatcher.h \
		/usr/include/qt/QtGui/qbrush.h \
		/usr/include/qt/QtCore/qvector.h \
		/usr/include/qt/QtGui/qmatrix.h \
		/usr/include/qt/QtGui/qpolygon.h \
		/usr/include/qt/QtGui/qregion.h \
		/usr/include/qt/QtCore/qline.h \
		/usr/include/qt/QtGui/qtransform.h \
		/usr/include/qt/QtGui/qpainterpath.h \
		/usr/include/qt/QtGui/qimage.h \
		/usr/include/qt/QtGui/qpixmap.h \
		/usr/include/qt/QtCore/qsharedpointer.h \
		/usr/include/qt/QtCore/qshareddata.h \
		/usr/include/qt/QtCore/qsharedpointer_impl.h \
		/usr/include/qt/QtCore/qhash.h \
		/usr/include/qt/QtGui/qfont.h \
		/usr/include/qt/QtGui/qfontmetrics.h \
		/usr/include/qt/QtGui/qfontinfo.h \
		/usr/include/qt/QtWidgets/qsizepolicy.h \
		/usr/include/qt/QtGui/qcursor.h \
		/usr/include/qt/QtGui/qkeysequence.h \
		/usr/include/qt/QtGui/qevent.h \
		/usr/include/qt/QtCore/qvariant.h \
		/usr/include/qt/QtCore/qmap.h \
		/usr/include/qt/QtCore/qdebug.h \
		/usr/include/qt/QtCore/qtextstream.h \
		/usr/include/qt/QtCore/qlocale.h \
		/usr/include/qt/QtCore/qset.h \
		/usr/include/qt/QtCore/qcontiguouscache.h \
		/usr/include/qt/QtCore/qurl.h \
		/usr/include/qt/QtCore/qurlquery.h \
		/usr/include/qt/QtCore/qfile.h \
		/usr/include/qt/QtCore/qfiledevice.h \
		/usr/include/qt/QtGui/qvector2d.h \
		/usr/include/qt/QtGui/qtouchdevice.h \
		/usr/include/qt/QtWidgets/QPushButton \
		/usr/include/qt/QtWidgets/qpushbutton.h \
		/usr/include/qt/QtWidgets/qabstractbutton.h \
		/usr/include/qt/QtGui/qicon.h \
		/usr/include/qt/QtWidgets/QPlainTextEdit \
		/usr/include/qt/QtWidgets/qplaintextedit.h \
		/usr/include/qt/QtWidgets/qtextedit.h \
		/usr/include/qt/QtWidgets/qabstractscrollarea.h \
		/usr/include/qt/QtWidgets/qframe.h \
		/usr/include/qt/QtGui/qtextdocument.h \
		/usr/include/qt/QtGui/qtextoption.h \
		/usr/include/qt/QtGui/qtextcursor.h \
		/usr/include/qt/QtGui/qtextformat.h \
		/usr/include/qt/QtGui/qpen.h \
		/usr/include/qt/QtGui/qabstracttextdocumentlayout.h \
		/usr/include/qt/QtGui/qtextlayout.h \
		/usr/include/qt/QtGui/qglyphrun.h \
		/usr/include/qt/QtGui/qrawfont.h \
		/usr/include/qt/QtGui/qfontdatabase.h \
		/usr/include/qt/QtCore/QProcess \
		/usr/include/qt/QtCore/qprocess.h \
		/usr/include/qt/QtWidgets/QComboBox \
		/usr/include/qt/QtWidgets/qcombobox.h \
		/usr/include/qt/QtWidgets/qabstractitemdelegate.h \
		/usr/include/qt/QtWidgets/qstyleoption.h \
		/usr/include/qt/QtWidgets/qabstractspinbox.h \
		/usr/include/qt/QtGui/qvalidator.h \
		/usr/include/qt/QtCore/qregularexpression.h \
		/usr/include/qt/QtWidgets/qslider.h \
		/usr/include/qt/QtWidgets/qabstractslider.h \
		/usr/include/qt/QtWidgets/qstyle.h \
		/usr/include/qt/QtWidgets/qtabbar.h \
		/usr/include/qt/QtWidgets/qtabwidget.h \
		/usr/include/qt/QtWidgets/qrubberband.h \
		/usr/include/qt/QtCore/qabstractitemmodel.h \
		/usr/include/qt/QtWidgets/QMenu \
		/usr/include/qt/QtWidgets/qmenu.h \
		/usr/include/qt/QtWidgets/qaction.h \
		/usr/include/qt/QtWidgets/qactiongroup.h \
		/usr/include/qt/QtWidgets/QSystemTrayIcon \
		/usr/include/qt/QtWidgets/qsystemtrayicon.h \
		src/jododial.h
	/usr/lib/qt/bin/moc $(DEFINES) $(INCPATH) -I/usr/lib/gcc/include/c++/4.8.2 -I/usr/lib/gcc/include/c++/4.8.2/i686-pc-linux-gnu -I/usr/lib/gcc/include/c++/4.8.2/backward -I/usr/lib/gcc/i686-pc-linux-gnu/4.8.2/include -I/usr/local/include -I/usr/lib/gcc/i686-pc-linux-gnu/4.8.2/include-fixed -I/usr/include src/jododial.h -o build/moc_jododial.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_rcc_clean compiler_moc_header_clean 

####### Compile

build/jododial.o: src/jododial.cpp src/jododial.h \
		/usr/include/qt/QtWidgets/QWidget \
		/usr/include/qt/QtWidgets/qwidget.h \
		/usr/include/qt/QtGui/qwindowdefs.h \
		/usr/include/qt/QtCore/qglobal.h \
		/usr/include/qt/QtCore/qconfig.h \
		/usr/include/qt/QtCore/qfeatures.h \
		/usr/include/qt/QtCore/qsystemdetection.h \
		/usr/include/qt/QtCore/qprocessordetection.h \
		/usr/include/qt/QtCore/qcompilerdetection.h \
		/usr/include/qt/QtCore/qglobalstatic.h \
		/usr/include/qt/QtCore/qatomic.h \
		/usr/include/qt/QtCore/qbasicatomic.h \
		/usr/include/qt/QtCore/qatomic_bootstrap.h \
		/usr/include/qt/QtCore/qgenericatomic.h \
		/usr/include/qt/QtCore/qatomic_msvc.h \
		/usr/include/qt/QtCore/qatomic_integrity.h \
		/usr/include/qt/QtCore/qoldbasicatomic.h \
		/usr/include/qt/QtCore/qatomic_vxworks.h \
		/usr/include/qt/QtCore/qatomic_power.h \
		/usr/include/qt/QtCore/qatomic_alpha.h \
		/usr/include/qt/QtCore/qatomic_armv7.h \
		/usr/include/qt/QtCore/qatomic_armv6.h \
		/usr/include/qt/QtCore/qatomic_armv5.h \
		/usr/include/qt/QtCore/qatomic_bfin.h \
		/usr/include/qt/QtCore/qatomic_ia64.h \
		/usr/include/qt/QtCore/qatomic_mips.h \
		/usr/include/qt/QtCore/qatomic_s390.h \
		/usr/include/qt/QtCore/qatomic_sh4a.h \
		/usr/include/qt/QtCore/qatomic_sparc.h \
		/usr/include/qt/QtCore/qatomic_x86.h \
		/usr/include/qt/QtCore/qatomic_cxx11.h \
		/usr/include/qt/QtCore/qatomic_gcc.h \
		/usr/include/qt/QtCore/qatomic_unix.h \
		/usr/include/qt/QtCore/qmutex.h \
		/usr/include/qt/QtCore/qlogging.h \
		/usr/include/qt/QtCore/qflags.h \
		/usr/include/qt/QtCore/qtypeinfo.h \
		/usr/include/qt/QtCore/qtypetraits.h \
		/usr/include/qt/QtCore/qsysinfo.h \
		/usr/include/qt/QtCore/qobjectdefs.h \
		/usr/include/qt/QtCore/qnamespace.h \
		/usr/include/qt/QtCore/qobjectdefs_impl.h \
		/usr/include/qt/QtGui/qwindowdefs_win.h \
		/usr/include/qt/QtCore/qobject.h \
		/usr/include/qt/QtCore/qstring.h \
		/usr/include/qt/QtCore/qchar.h \
		/usr/include/qt/QtCore/qbytearray.h \
		/usr/include/qt/QtCore/qrefcount.h \
		/usr/include/qt/QtCore/qarraydata.h \
		/usr/include/qt/QtCore/qstringbuilder.h \
		/usr/include/qt/QtCore/qlist.h \
		/usr/include/qt/QtCore/qalgorithms.h \
		/usr/include/qt/QtCore/qiterator.h \
		/usr/include/qt/QtCore/qcoreevent.h \
		/usr/include/qt/QtCore/qscopedpointer.h \
		/usr/include/qt/QtCore/qmetatype.h \
		/usr/include/qt/QtCore/qvarlengtharray.h \
		/usr/include/qt/QtCore/qcontainerfwd.h \
		/usr/include/qt/QtCore/qisenum.h \
		/usr/include/qt/QtCore/qobject_impl.h \
		/usr/include/qt/QtCore/qmargins.h \
		/usr/include/qt/QtCore/qrect.h \
		/usr/include/qt/QtCore/qsize.h \
		/usr/include/qt/QtCore/qpoint.h \
		/usr/include/qt/QtGui/qpaintdevice.h \
		/usr/include/qt/QtGui/qpalette.h \
		/usr/include/qt/QtGui/qcolor.h \
		/usr/include/qt/QtGui/qrgb.h \
		/usr/include/qt/QtCore/qstringlist.h \
		/usr/include/qt/QtCore/qdatastream.h \
		/usr/include/qt/QtCore/qiodevice.h \
		/usr/include/qt/QtCore/qpair.h \
		/usr/include/qt/QtCore/qregexp.h \
		/usr/include/qt/QtCore/qstringmatcher.h \
		/usr/include/qt/QtGui/qbrush.h \
		/usr/include/qt/QtCore/qvector.h \
		/usr/include/qt/QtGui/qmatrix.h \
		/usr/include/qt/QtGui/qpolygon.h \
		/usr/include/qt/QtGui/qregion.h \
		/usr/include/qt/QtCore/qline.h \
		/usr/include/qt/QtGui/qtransform.h \
		/usr/include/qt/QtGui/qpainterpath.h \
		/usr/include/qt/QtGui/qimage.h \
		/usr/include/qt/QtGui/qpixmap.h \
		/usr/include/qt/QtCore/qsharedpointer.h \
		/usr/include/qt/QtCore/qshareddata.h \
		/usr/include/qt/QtCore/qsharedpointer_impl.h \
		/usr/include/qt/QtCore/qhash.h \
		/usr/include/qt/QtGui/qfont.h \
		/usr/include/qt/QtGui/qfontmetrics.h \
		/usr/include/qt/QtGui/qfontinfo.h \
		/usr/include/qt/QtWidgets/qsizepolicy.h \
		/usr/include/qt/QtGui/qcursor.h \
		/usr/include/qt/QtGui/qkeysequence.h \
		/usr/include/qt/QtGui/qevent.h \
		/usr/include/qt/QtCore/qvariant.h \
		/usr/include/qt/QtCore/qmap.h \
		/usr/include/qt/QtCore/qdebug.h \
		/usr/include/qt/QtCore/qtextstream.h \
		/usr/include/qt/QtCore/qlocale.h \
		/usr/include/qt/QtCore/qset.h \
		/usr/include/qt/QtCore/qcontiguouscache.h \
		/usr/include/qt/QtCore/qurl.h \
		/usr/include/qt/QtCore/qurlquery.h \
		/usr/include/qt/QtCore/qfile.h \
		/usr/include/qt/QtCore/qfiledevice.h \
		/usr/include/qt/QtGui/qvector2d.h \
		/usr/include/qt/QtGui/qtouchdevice.h \
		/usr/include/qt/QtWidgets/QPushButton \
		/usr/include/qt/QtWidgets/qpushbutton.h \
		/usr/include/qt/QtWidgets/qabstractbutton.h \
		/usr/include/qt/QtGui/qicon.h \
		/usr/include/qt/QtWidgets/QPlainTextEdit \
		/usr/include/qt/QtWidgets/qplaintextedit.h \
		/usr/include/qt/QtWidgets/qtextedit.h \
		/usr/include/qt/QtWidgets/qabstractscrollarea.h \
		/usr/include/qt/QtWidgets/qframe.h \
		/usr/include/qt/QtGui/qtextdocument.h \
		/usr/include/qt/QtGui/qtextoption.h \
		/usr/include/qt/QtGui/qtextcursor.h \
		/usr/include/qt/QtGui/qtextformat.h \
		/usr/include/qt/QtGui/qpen.h \
		/usr/include/qt/QtGui/qabstracttextdocumentlayout.h \
		/usr/include/qt/QtGui/qtextlayout.h \
		/usr/include/qt/QtGui/qglyphrun.h \
		/usr/include/qt/QtGui/qrawfont.h \
		/usr/include/qt/QtGui/qfontdatabase.h \
		/usr/include/qt/QtCore/QProcess \
		/usr/include/qt/QtCore/qprocess.h \
		/usr/include/qt/QtWidgets/QComboBox \
		/usr/include/qt/QtWidgets/qcombobox.h \
		/usr/include/qt/QtWidgets/qabstractitemdelegate.h \
		/usr/include/qt/QtWidgets/qstyleoption.h \
		/usr/include/qt/QtWidgets/qabstractspinbox.h \
		/usr/include/qt/QtGui/qvalidator.h \
		/usr/include/qt/QtCore/qregularexpression.h \
		/usr/include/qt/QtWidgets/qslider.h \
		/usr/include/qt/QtWidgets/qabstractslider.h \
		/usr/include/qt/QtWidgets/qstyle.h \
		/usr/include/qt/QtWidgets/qtabbar.h \
		/usr/include/qt/QtWidgets/qtabwidget.h \
		/usr/include/qt/QtWidgets/qrubberband.h \
		/usr/include/qt/QtCore/qabstractitemmodel.h \
		/usr/include/qt/QtWidgets/QMenu \
		/usr/include/qt/QtWidgets/qmenu.h \
		/usr/include/qt/QtWidgets/qaction.h \
		/usr/include/qt/QtWidgets/qactiongroup.h \
		/usr/include/qt/QtWidgets/QSystemTrayIcon \
		/usr/include/qt/QtWidgets/qsystemtrayicon.h \
		/usr/include/qt/QtWidgets/QLabel \
		/usr/include/qt/QtWidgets/qlabel.h \
		/usr/include/qt/QtWidgets/QVBoxLayout \
		/usr/include/qt/QtWidgets/qboxlayout.h \
		/usr/include/qt/QtWidgets/qlayout.h \
		/usr/include/qt/QtWidgets/qlayoutitem.h \
		/usr/include/qt/QtWidgets/qgridlayout.h \
		/usr/include/qt/QtWidgets/QHBoxLayout \
		/usr/include/qt/QtWidgets/QMessageBox \
		/usr/include/qt/QtWidgets/qmessagebox.h \
		/usr/include/qt/QtWidgets/qdialog.h \
		/usr/include/qt/QtWidgets/QApplication \
		/usr/include/qt/QtWidgets/qapplication.h \
		/usr/include/qt/QtCore/qcoreapplication.h \
		/usr/include/qt/QtCore/qeventloop.h \
		/usr/include/qt/QtWidgets/qdesktopwidget.h \
		/usr/include/qt/QtGui/qguiapplication.h \
		/usr/include/qt/QtGui/qinputmethod.h \
		/usr/include/qt/QtCore/QSettings \
		/usr/include/qt/QtCore/qsettings.h \
		/usr/include/qt/QtWidgets/QCheckBox \
		/usr/include/qt/QtWidgets/qcheckbox.h \
		/usr/include/qt/QtCore/QTextStream
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/jododial.o src/jododial.cpp

build/main.o: src/main.cpp src/jododial.h \
		/usr/include/qt/QtWidgets/QWidget \
		/usr/include/qt/QtWidgets/qwidget.h \
		/usr/include/qt/QtGui/qwindowdefs.h \
		/usr/include/qt/QtCore/qglobal.h \
		/usr/include/qt/QtCore/qconfig.h \
		/usr/include/qt/QtCore/qfeatures.h \
		/usr/include/qt/QtCore/qsystemdetection.h \
		/usr/include/qt/QtCore/qprocessordetection.h \
		/usr/include/qt/QtCore/qcompilerdetection.h \
		/usr/include/qt/QtCore/qglobalstatic.h \
		/usr/include/qt/QtCore/qatomic.h \
		/usr/include/qt/QtCore/qbasicatomic.h \
		/usr/include/qt/QtCore/qatomic_bootstrap.h \
		/usr/include/qt/QtCore/qgenericatomic.h \
		/usr/include/qt/QtCore/qatomic_msvc.h \
		/usr/include/qt/QtCore/qatomic_integrity.h \
		/usr/include/qt/QtCore/qoldbasicatomic.h \
		/usr/include/qt/QtCore/qatomic_vxworks.h \
		/usr/include/qt/QtCore/qatomic_power.h \
		/usr/include/qt/QtCore/qatomic_alpha.h \
		/usr/include/qt/QtCore/qatomic_armv7.h \
		/usr/include/qt/QtCore/qatomic_armv6.h \
		/usr/include/qt/QtCore/qatomic_armv5.h \
		/usr/include/qt/QtCore/qatomic_bfin.h \
		/usr/include/qt/QtCore/qatomic_ia64.h \
		/usr/include/qt/QtCore/qatomic_mips.h \
		/usr/include/qt/QtCore/qatomic_s390.h \
		/usr/include/qt/QtCore/qatomic_sh4a.h \
		/usr/include/qt/QtCore/qatomic_sparc.h \
		/usr/include/qt/QtCore/qatomic_x86.h \
		/usr/include/qt/QtCore/qatomic_cxx11.h \
		/usr/include/qt/QtCore/qatomic_gcc.h \
		/usr/include/qt/QtCore/qatomic_unix.h \
		/usr/include/qt/QtCore/qmutex.h \
		/usr/include/qt/QtCore/qlogging.h \
		/usr/include/qt/QtCore/qflags.h \
		/usr/include/qt/QtCore/qtypeinfo.h \
		/usr/include/qt/QtCore/qtypetraits.h \
		/usr/include/qt/QtCore/qsysinfo.h \
		/usr/include/qt/QtCore/qobjectdefs.h \
		/usr/include/qt/QtCore/qnamespace.h \
		/usr/include/qt/QtCore/qobjectdefs_impl.h \
		/usr/include/qt/QtGui/qwindowdefs_win.h \
		/usr/include/qt/QtCore/qobject.h \
		/usr/include/qt/QtCore/qstring.h \
		/usr/include/qt/QtCore/qchar.h \
		/usr/include/qt/QtCore/qbytearray.h \
		/usr/include/qt/QtCore/qrefcount.h \
		/usr/include/qt/QtCore/qarraydata.h \
		/usr/include/qt/QtCore/qstringbuilder.h \
		/usr/include/qt/QtCore/qlist.h \
		/usr/include/qt/QtCore/qalgorithms.h \
		/usr/include/qt/QtCore/qiterator.h \
		/usr/include/qt/QtCore/qcoreevent.h \
		/usr/include/qt/QtCore/qscopedpointer.h \
		/usr/include/qt/QtCore/qmetatype.h \
		/usr/include/qt/QtCore/qvarlengtharray.h \
		/usr/include/qt/QtCore/qcontainerfwd.h \
		/usr/include/qt/QtCore/qisenum.h \
		/usr/include/qt/QtCore/qobject_impl.h \
		/usr/include/qt/QtCore/qmargins.h \
		/usr/include/qt/QtCore/qrect.h \
		/usr/include/qt/QtCore/qsize.h \
		/usr/include/qt/QtCore/qpoint.h \
		/usr/include/qt/QtGui/qpaintdevice.h \
		/usr/include/qt/QtGui/qpalette.h \
		/usr/include/qt/QtGui/qcolor.h \
		/usr/include/qt/QtGui/qrgb.h \
		/usr/include/qt/QtCore/qstringlist.h \
		/usr/include/qt/QtCore/qdatastream.h \
		/usr/include/qt/QtCore/qiodevice.h \
		/usr/include/qt/QtCore/qpair.h \
		/usr/include/qt/QtCore/qregexp.h \
		/usr/include/qt/QtCore/qstringmatcher.h \
		/usr/include/qt/QtGui/qbrush.h \
		/usr/include/qt/QtCore/qvector.h \
		/usr/include/qt/QtGui/qmatrix.h \
		/usr/include/qt/QtGui/qpolygon.h \
		/usr/include/qt/QtGui/qregion.h \
		/usr/include/qt/QtCore/qline.h \
		/usr/include/qt/QtGui/qtransform.h \
		/usr/include/qt/QtGui/qpainterpath.h \
		/usr/include/qt/QtGui/qimage.h \
		/usr/include/qt/QtGui/qpixmap.h \
		/usr/include/qt/QtCore/qsharedpointer.h \
		/usr/include/qt/QtCore/qshareddata.h \
		/usr/include/qt/QtCore/qsharedpointer_impl.h \
		/usr/include/qt/QtCore/qhash.h \
		/usr/include/qt/QtGui/qfont.h \
		/usr/include/qt/QtGui/qfontmetrics.h \
		/usr/include/qt/QtGui/qfontinfo.h \
		/usr/include/qt/QtWidgets/qsizepolicy.h \
		/usr/include/qt/QtGui/qcursor.h \
		/usr/include/qt/QtGui/qkeysequence.h \
		/usr/include/qt/QtGui/qevent.h \
		/usr/include/qt/QtCore/qvariant.h \
		/usr/include/qt/QtCore/qmap.h \
		/usr/include/qt/QtCore/qdebug.h \
		/usr/include/qt/QtCore/qtextstream.h \
		/usr/include/qt/QtCore/qlocale.h \
		/usr/include/qt/QtCore/qset.h \
		/usr/include/qt/QtCore/qcontiguouscache.h \
		/usr/include/qt/QtCore/qurl.h \
		/usr/include/qt/QtCore/qurlquery.h \
		/usr/include/qt/QtCore/qfile.h \
		/usr/include/qt/QtCore/qfiledevice.h \
		/usr/include/qt/QtGui/qvector2d.h \
		/usr/include/qt/QtGui/qtouchdevice.h \
		/usr/include/qt/QtWidgets/QPushButton \
		/usr/include/qt/QtWidgets/qpushbutton.h \
		/usr/include/qt/QtWidgets/qabstractbutton.h \
		/usr/include/qt/QtGui/qicon.h \
		/usr/include/qt/QtWidgets/QPlainTextEdit \
		/usr/include/qt/QtWidgets/qplaintextedit.h \
		/usr/include/qt/QtWidgets/qtextedit.h \
		/usr/include/qt/QtWidgets/qabstractscrollarea.h \
		/usr/include/qt/QtWidgets/qframe.h \
		/usr/include/qt/QtGui/qtextdocument.h \
		/usr/include/qt/QtGui/qtextoption.h \
		/usr/include/qt/QtGui/qtextcursor.h \
		/usr/include/qt/QtGui/qtextformat.h \
		/usr/include/qt/QtGui/qpen.h \
		/usr/include/qt/QtGui/qabstracttextdocumentlayout.h \
		/usr/include/qt/QtGui/qtextlayout.h \
		/usr/include/qt/QtGui/qglyphrun.h \
		/usr/include/qt/QtGui/qrawfont.h \
		/usr/include/qt/QtGui/qfontdatabase.h \
		/usr/include/qt/QtCore/QProcess \
		/usr/include/qt/QtCore/qprocess.h \
		/usr/include/qt/QtWidgets/QComboBox \
		/usr/include/qt/QtWidgets/qcombobox.h \
		/usr/include/qt/QtWidgets/qabstractitemdelegate.h \
		/usr/include/qt/QtWidgets/qstyleoption.h \
		/usr/include/qt/QtWidgets/qabstractspinbox.h \
		/usr/include/qt/QtGui/qvalidator.h \
		/usr/include/qt/QtCore/qregularexpression.h \
		/usr/include/qt/QtWidgets/qslider.h \
		/usr/include/qt/QtWidgets/qabstractslider.h \
		/usr/include/qt/QtWidgets/qstyle.h \
		/usr/include/qt/QtWidgets/qtabbar.h \
		/usr/include/qt/QtWidgets/qtabwidget.h \
		/usr/include/qt/QtWidgets/qrubberband.h \
		/usr/include/qt/QtCore/qabstractitemmodel.h \
		/usr/include/qt/QtWidgets/QMenu \
		/usr/include/qt/QtWidgets/qmenu.h \
		/usr/include/qt/QtWidgets/qaction.h \
		/usr/include/qt/QtWidgets/qactiongroup.h \
		/usr/include/qt/QtWidgets/QSystemTrayIcon \
		/usr/include/qt/QtWidgets/qsystemtrayicon.h \
		/usr/include/qt/QtWidgets/QApplication \
		/usr/include/qt/QtWidgets/qapplication.h \
		/usr/include/qt/QtCore/qcoreapplication.h \
		/usr/include/qt/QtCore/qeventloop.h \
		/usr/include/qt/QtWidgets/qdesktopwidget.h \
		/usr/include/qt/QtGui/qguiapplication.h \
		/usr/include/qt/QtGui/qinputmethod.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/main.o src/main.cpp

build/qrc_jododial.o: build/qrc_jododial.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/qrc_jododial.o build/qrc_jododial.cpp

build/moc_jododial.o: build/moc_jododial.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/moc_jododial.o build/moc_jododial.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

