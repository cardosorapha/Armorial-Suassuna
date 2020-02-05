
MAKEFILE      = Makefile

EQ            = =

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_DEPRECATED_WARNINGS -DQT_DEPRECATED_WARNINGS -DQT_NO_DEBUG -DQT_OPENGL_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -O2 -std=gnu++1y -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -isystem /usr/include/x86_64-linux-gnu/qt5 -isystem /usr/include/x86_64-linux-gnu/qt5/QtOpenGL -isystem /usr/include/x86_64-linux-gnu/qt5/QtWidgets -isystem /usr/include/x86_64-linux-gnu/qt5/QtGui -isystem /usr/include/x86_64-linux-gnu/qt5/QtNetwork -isystem /usr/include/x86_64-linux-gnu/qt5/QtCore -I. -isystem /usr/include/libdrm -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++
QMAKE         = /usr/lib/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /usr/lib/qt5/bin/qmake -install qinstall
QINSTALL_PROGRAM = /usr/lib/qt5/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = Armorial-Suassuna1.0.0
DISTDIR = /home/zilde/Desktop/Armorial-Suassuna/.tmp/Armorial-Suassuna1.0.0
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS) -lprotobuf -lGLU -pthread -lsfml-graphics -lsfml-window -lsfml-system -lGEARSystem -lomniORB4 -lomnithread -lQt5Core /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so /usr/lib/x86_64-linux-gnu/libQt5Widgets.so /usr/lib/x86_64-linux-gnu/libQt5Gui.so /usr/lib/x86_64-linux-gnu/libQt5Network.so /usr/lib/x86_64-linux-gnu/libQt5Core.so /usr/lib/x86_64-linux-gnu/libGL.so -lpthread   
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = entity/entity.cpp \
		entity/player/skills/basics/skill_aroundtheball.cpp \
		entity/player/skills/basics/skill_dribble.cpp \
		entity/player/skills/basics/skill_goto.cpp \
		entity/player/skills/basics/skill_gotolookto.cpp \
		entity/player/skills/basics/skill_rotateto.cpp \
		entity/world/world.cpp \
		entity/world/worldmapupdater.cpp \
		exithandler.cpp \
		include/3rd_party/messages_robocup_ssl_detection.pb.cc \
		include/3rd_party/netraw.cpp \
		include/3rd_party/robocup_ssl_client.cpp \
		include/3rd_party/messages_robocup_ssl_geometry.pb.cc \
		include/3rd_party/messages_robocup_ssl_refbox_log.pb.cc \
		include/3rd_party/messages_robocup_ssl_wrapper.pb.cc \
		include/3rd_party/game_event.pb.cc \
		include/3rd_party/grSim_Commands.pb.cc \
		include/3rd_party/grSim_Packet.pb.cc \
		include/3rd_party/grSim_Replacement.pb.cc \
		include/3rd_party/referee.pb.cc \
		entity/referee/SSLReferee/sslgameinfo.cpp \
		entity/referee/referee.cpp \
		entity/referee/SSLReferee/sslreferee.cpp \
		instancechecker.cpp \
		main.cpp \
		suassuna.cpp \
		utils/basics/color.cc \
		utils/basics/competition.cc \
		utils/basics/quadrant.cc \
		utils/basics/side.cc \
		utils/basics/wall.cc \
		utils/fields/field_ssl2014.cc \
		utils/fields/field_ssl2015.cc \
		utils/fields/field_vss2008.cc \
		utils/fields/fields.cc \
		utils/fieldside/fieldside.cc \
		utils/graph/edge.cc \
		utils/graph/graph.cc \
		utils/graph/vertex.cc \
		utils/line/line.cc \
		utils/utils.cc \
		utils/wrtimer/wrtimer.cc \
		entity/player/player.cpp \
		entity/contromodule/mrcteam.cpp \
		entity/player/skills/skill.cpp \
		entity/locations.cpp \
		entity/contromodule/grsSimulator/grsSimulator.cpp \
		entity/contromodule/coach.cpp \
		entity/player/playerbus.cpp \
		entity/player/playeraccess.cpp \
		entity/contromodule/strategy/strategy.cpp \
		entity/contromodule/playersdistribution.cpp \
		entity/contromodule/strategy/strategystate.cpp \
		entity/contromodule/coachutils.cpp \
		entity/contromodule/playbook/playbook.cpp \
		entity/player/behaviour/behaviour.cpp \
		entity/player/behaviour/basics/behaviour_donothing.cpp \
		entity/player/skills/basics/skill_donothing.cpp \
		utils/knn/knn.cc \
		entity/contromodule/strategy/basics/mrcstrategy.cpp \
		entity/contromodule/strategy/basics/sslstrategy.cpp \
		entity/contromodule/controlmodule.cpp \
		entity/contromodule/strategy/basics/sslstrategy_halt.cpp \
		entity/contromodule/playbook/basics/playbook_donothing.cpp \
		entity/player/behaviour/basics/behaviour_followball.cpp \
		entity/contromodule/playbook/basics/playbook_followball.cpp \
		entity/contromodule/playbook/basics/playbook_timeout.cpp \
		entity/player/behaviour/basics/behaviour_timeout.cpp \
		entity/contromodule/strategy/basics/sslstrategy_timeout.cpp \
		entity/player/control/pid.cpp \
		utils/mrctimer/mrctimer.cpp \
		entity/player/skills/basics/skill_kick.cpp \
		entity/player/behaviour/basics/behaviour_goalkeeper.cpp \
		entity/player/skills/basics/skill_goalkeeper.cpp \
		entity/player/skills/basics/skill_gkick.cpp \
		entity/contromodule/playbook/basics/playbook_attack.cpp \
		entity/player/behaviour/basics/behaviour_receiver.cpp \
		entity/player/behaviour/basics/behaviour_attacker.cpp \
		entity/contromodule/strategy/basics/sslstrategy_attack.cpp \
		entity/player/behaviour/basics/behaviour_barrier.cpp \
		entity/player/behaviour/basics/behaviour_markplayer.cpp moc_playbook.cpp \
		moc_behaviour.cpp \
		moc_behaviour_receiver.cpp \
		moc_behaviour_attacker.cpp
OBJECTS       = entity.o \
		skill_aroundtheball.o \
		skill_dribble.o \
		skill_goto.o \
		skill_gotolookto.o \
		skill_rotateto.o \
		world.o \
		worldmapupdater.o \
		exithandler.o \
		messages_robocup_ssl_detection.pb.o \
		netraw.o \
		robocup_ssl_client.o \
		messages_robocup_ssl_geometry.pb.o \
		messages_robocup_ssl_refbox_log.pb.o \
		messages_robocup_ssl_wrapper.pb.o \
		game_event.pb.o \
		grSim_Commands.pb.o \
		grSim_Packet.pb.o \
		grSim_Replacement.pb.o \
		referee.pb.o \
		sslgameinfo.o \
		referee.o \
		sslreferee.o \
		instancechecker.o \
		main.o \
		suassuna.o \
		color.o \
		competition.o \
		quadrant.o \
		side.o \
		wall.o \
		field_ssl2014.o \
		field_ssl2015.o \
		field_vss2008.o \
		fields.o \
		fieldside.o \
		edge.o \
		graph.o \
		vertex.o \
		line.o \
		utils.o \
		wrtimer.o \
		player.o \
		mrcteam.o \
		skill.o \
		locations.o \
		grsSimulator.o \
		coach.o \
		playerbus.o \
		playeraccess.o \
		strategy.o \
		playersdistribution.o \
		strategystate.o \
		coachutils.o \
		playbook.o \
		behaviour.o \
		behaviour_donothing.o \
		skill_donothing.o \
		knn.o \
		mrcstrategy.o \
		sslstrategy.o \
		controlmodule.o \
		sslstrategy_halt.o \
		playbook_donothing.o \
		behaviour_followball.o \
		playbook_followball.o \
		playbook_timeout.o \
		behaviour_timeout.o \
		sslstrategy_timeout.o \
		pid.o \
		mrctimer.o \
		skill_kick.o \
		behaviour_goalkeeper.o \
		skill_goalkeeper.o \
		skill_gkick.o \
		playbook_attack.o \
		behaviour_receiver.o \
		behaviour_attacker.o \
		sslstrategy_attack.o \
		behaviour_barrier.o \
		behaviour_markplayer.o \
		moc_playbook.o \
		moc_behaviour.o \
		moc_behaviour_receiver.o \
		moc_behaviour_attacker.o
DIST          = /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gamepad.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_serialport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		Armorial-Suassuna.pro entity/baseentity.h \
		entity/entity.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/world/world.h \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/contromodule/playbook/basics/playbook_attack.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/contromodule/strategy/basics/sslstrategy_attack.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h entity/entity.cpp \
		entity/player/skills/basics/skill_aroundtheball.cpp \
		entity/player/skills/basics/skill_dribble.cpp \
		entity/player/skills/basics/skill_goto.cpp \
		entity/player/skills/basics/skill_gotolookto.cpp \
		entity/player/skills/basics/skill_rotateto.cpp \
		entity/world/world.cpp \
		entity/world/worldmapupdater.cpp \
		exithandler.cpp \
		include/3rd_party/messages_robocup_ssl_detection.pb.cc \
		include/3rd_party/netraw.cpp \
		include/3rd_party/robocup_ssl_client.cpp \
		include/3rd_party/messages_robocup_ssl_geometry.pb.cc \
		include/3rd_party/messages_robocup_ssl_refbox_log.pb.cc \
		include/3rd_party/messages_robocup_ssl_wrapper.pb.cc \
		include/3rd_party/game_event.pb.cc \
		include/3rd_party/grSim_Commands.pb.cc \
		include/3rd_party/grSim_Packet.pb.cc \
		include/3rd_party/grSim_Replacement.pb.cc \
		include/3rd_party/referee.pb.cc \
		entity/referee/SSLReferee/sslgameinfo.cpp \
		entity/referee/referee.cpp \
		entity/referee/SSLReferee/sslreferee.cpp \
		instancechecker.cpp \
		main.cpp \
		suassuna.cpp \
		utils/basics/color.cc \
		utils/basics/competition.cc \
		utils/basics/quadrant.cc \
		utils/basics/side.cc \
		utils/basics/wall.cc \
		utils/fields/field_ssl2014.cc \
		utils/fields/field_ssl2015.cc \
		utils/fields/field_vss2008.cc \
		utils/fields/fields.cc \
		utils/fieldside/fieldside.cc \
		utils/graph/edge.cc \
		utils/graph/graph.cc \
		utils/graph/vertex.cc \
		utils/line/line.cc \
		utils/utils.cc \
		utils/wrtimer/wrtimer.cc \
		entity/player/player.cpp \
		entity/contromodule/mrcteam.cpp \
		entity/player/skills/skill.cpp \
		entity/locations.cpp \
		entity/contromodule/grsSimulator/grsSimulator.cpp \
		entity/contromodule/coach.cpp \
		entity/player/playerbus.cpp \
		entity/player/playeraccess.cpp \
		entity/contromodule/strategy/strategy.cpp \
		entity/contromodule/playersdistribution.cpp \
		entity/contromodule/strategy/strategystate.cpp \
		entity/contromodule/coachutils.cpp \
		entity/contromodule/playbook/playbook.cpp \
		entity/player/behaviour/behaviour.cpp \
		entity/player/behaviour/basics/behaviour_donothing.cpp \
		entity/player/skills/basics/skill_donothing.cpp \
		utils/knn/knn.cc \
		entity/contromodule/strategy/basics/mrcstrategy.cpp \
		entity/contromodule/strategy/basics/sslstrategy.cpp \
		entity/contromodule/controlmodule.cpp \
		entity/contromodule/strategy/basics/sslstrategy_halt.cpp \
		entity/contromodule/playbook/basics/playbook_donothing.cpp \
		entity/player/behaviour/basics/behaviour_followball.cpp \
		entity/contromodule/playbook/basics/playbook_followball.cpp \
		entity/contromodule/playbook/basics/playbook_timeout.cpp \
		entity/player/behaviour/basics/behaviour_timeout.cpp \
		entity/contromodule/strategy/basics/sslstrategy_timeout.cpp \
		entity/player/control/pid.cpp \
		utils/mrctimer/mrctimer.cpp \
		entity/player/skills/basics/skill_kick.cpp \
		entity/player/behaviour/basics/behaviour_goalkeeper.cpp \
		entity/player/skills/basics/skill_goalkeeper.cpp \
		entity/player/skills/basics/skill_gkick.cpp \
		entity/contromodule/playbook/basics/playbook_attack.cpp \
		entity/player/behaviour/basics/behaviour_receiver.cpp \
		entity/player/behaviour/basics/behaviour_attacker.cpp \
		entity/contromodule/strategy/basics/sslstrategy_attack.cpp \
		entity/player/behaviour/basics/behaviour_barrier.cpp \
		entity/player/behaviour/basics/behaviour_markplayer.cpp
QMAKE_TARGET  = Armorial-Suassuna
DESTDIR       = 
TARGET        = Armorial-Suassuna


first: all
####### Build rules

Armorial-Suassuna:  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Armorial-Suassuna.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gamepad.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_serialport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		Armorial-Suassuna.pro \
		/usr/lib/x86_64-linux-gnu/libQt5Core.prl
	$(QMAKE) -o Makefile Armorial-Suassuna.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gamepad.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_serialport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
.qmake.stash:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
Armorial-Suassuna.pro:
/usr/lib/x86_64-linux-gnu/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile Armorial-Suassuna.pro

qmake_all: FORCE


all: Makefile Armorial-Suassuna

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/data/dummy.cpp $(DISTDIR)/
	$(COPY_FILE) --parents entity/baseentity.h entity/entity.h entity/player/skills/basics/skill_aroundtheball.h entity/player/skills/basics/skill_dribble.h entity/player/skills/basics/skill_goto.h entity/player/skills/basics/skill_gotolookto.h entity/player/skills/basics/skill_rotateto.h entity/world/world.h entity/world/worldmapupdater.h exithandler.h include/3rd_party/netraw.h include/3rd_party/robocup_ssl_client.h include/3rd_party/util.h include/filters.h include/3rd_party/messages_robocup_ssl_detection.pb.h include/3rd_party/messages_robocup_ssl_geometry.pb.h include/3rd_party/messages_robocup_ssl_wrapper.pb.h include/3rd_party/game_event.pb.h include/3rd_party/messages_robocup_ssl_refbox_log.pb.h include/3rd_party/referee.pb.h include/3rd_party/grSim_Commands.pb.h include/3rd_party/grSim_Packet.pb.h include/3rd_party/grSim_Replacement.pb.h entity/referee/SSLReferee/sslgameinfo.h entity/referee/referee.h entity/referee/SSLReferee/sslreferee.h instancechecker.h suassuna.h utils/basics/color.hh utils/basics/competition.hh utils/basics/quadrant.hh utils/basics/side.hh utils/basics/wall.hh utils/fields/field_ssl2014.hh utils/fields/field_ssl2015.hh utils/fields/field_vss2008.hh utils/fields/fields.hh utils/fields/wrfields.hh utils/fieldside/fieldside.hh utils/graph/basegraph.hh utils/graph/edge.hh utils/graph/graph.hh utils/graph/vertex.hh utils/line/line.hh utils/utils.hh utils/wrtimer/wrtimer.hh entity/player/player.h entity/contromodule/mrcteam.h entity/player/skills/skill.h entity/locations.h entity/player/skills/skills_include.h entity/contromodule/grsSimulator/grsSimulator.h entity/contromodule/coach.h entity/player/playerbus.h entity/player/playeraccess.h entity/contromodule/strategy/strategy.h entity/contromodule/basecoach.h entity/contromodule/playersdistribution.h entity/contromodule/strategy/strategystate.h entity/contromodule/coachutils.h entity/contromodule/playbook/playbook.h entity/player/behaviour/behaviour.h entity/player/behaviour/mrcbehaviours.h entity/player/behaviour/basics/behaviour_donothing.h entity/player/skills/basics/skill_donothing.h utils/knn/knn.hh entity/contromodule/strategy/basics/mrcstrategy.h entity/contromodule/strategy/basics/sslstrategy.h entity/contromodule/controlmodule.h entity/contromodule/strategy/basics/sslstrategy_halt.h entity/contromodule/playbook/basics/playbook_donothing.h entity/contromodule/playbook/mrcplaybook.h entity/player/behaviour/basics/behaviour_followball.h entity/contromodule/playbook/basics/playbook_followball.h entity/contromodule/playbook/basics/playbook_timeout.h entity/player/behaviour/basics/behaviour_timeout.h entity/contromodule/strategy/basics/sslstrategy_timeout.h entity/contromodule/strategy/mrcstrategies.h entity/player/control/pid.h utils/mrctimer/mrctimer.h entity/player/skills/basics/skill_kick.h entity/player/behaviour/basics/behaviour_goalkeeper.h entity/player/skills/basics/skill_goalkeeper.h entity/player/skills/basics/skill_gkick.h entity/contromodule/playbook/basics/playbook_attack.h entity/player/behaviour/basics/behaviour_receiver.h entity/player/behaviour/basics/behaviour_attacker.h entity/contromodule/strategy/basics/sslstrategy_attack.h entity/player/behaviour/basics/behaviour_barrier.h entity/player/behaviour/basics/behaviour_markplayer.h $(DISTDIR)/
	$(COPY_FILE) --parents entity/entity.cpp entity/player/skills/basics/skill_aroundtheball.cpp entity/player/skills/basics/skill_dribble.cpp entity/player/skills/basics/skill_goto.cpp entity/player/skills/basics/skill_gotolookto.cpp entity/player/skills/basics/skill_rotateto.cpp entity/world/world.cpp entity/world/worldmapupdater.cpp exithandler.cpp include/3rd_party/messages_robocup_ssl_detection.pb.cc include/3rd_party/netraw.cpp include/3rd_party/robocup_ssl_client.cpp include/3rd_party/messages_robocup_ssl_geometry.pb.cc include/3rd_party/messages_robocup_ssl_refbox_log.pb.cc include/3rd_party/messages_robocup_ssl_wrapper.pb.cc include/3rd_party/game_event.pb.cc include/3rd_party/grSim_Commands.pb.cc include/3rd_party/grSim_Packet.pb.cc include/3rd_party/grSim_Replacement.pb.cc include/3rd_party/referee.pb.cc entity/referee/SSLReferee/sslgameinfo.cpp entity/referee/referee.cpp entity/referee/SSLReferee/sslreferee.cpp instancechecker.cpp main.cpp suassuna.cpp utils/basics/color.cc utils/basics/competition.cc utils/basics/quadrant.cc utils/basics/side.cc utils/basics/wall.cc utils/fields/field_ssl2014.cc utils/fields/field_ssl2015.cc utils/fields/field_vss2008.cc utils/fields/fields.cc utils/fieldside/fieldside.cc utils/graph/edge.cc utils/graph/graph.cc utils/graph/vertex.cc utils/line/line.cc utils/utils.cc utils/wrtimer/wrtimer.cc entity/player/player.cpp entity/contromodule/mrcteam.cpp entity/player/skills/skill.cpp entity/locations.cpp entity/contromodule/grsSimulator/grsSimulator.cpp entity/contromodule/coach.cpp entity/player/playerbus.cpp entity/player/playeraccess.cpp entity/contromodule/strategy/strategy.cpp entity/contromodule/playersdistribution.cpp entity/contromodule/strategy/strategystate.cpp entity/contromodule/coachutils.cpp entity/contromodule/playbook/playbook.cpp entity/player/behaviour/behaviour.cpp entity/player/behaviour/basics/behaviour_donothing.cpp entity/player/skills/basics/skill_donothing.cpp utils/knn/knn.cc entity/contromodule/strategy/basics/mrcstrategy.cpp entity/contromodule/strategy/basics/sslstrategy.cpp entity/contromodule/controlmodule.cpp entity/contromodule/strategy/basics/sslstrategy_halt.cpp entity/contromodule/playbook/basics/playbook_donothing.cpp entity/player/behaviour/basics/behaviour_followball.cpp entity/contromodule/playbook/basics/playbook_followball.cpp entity/contromodule/playbook/basics/playbook_timeout.cpp entity/player/behaviour/basics/behaviour_timeout.cpp entity/contromodule/strategy/basics/sslstrategy_timeout.cpp entity/player/control/pid.cpp utils/mrctimer/mrctimer.cpp entity/player/skills/basics/skill_kick.cpp entity/player/behaviour/basics/behaviour_goalkeeper.cpp entity/player/skills/basics/skill_goalkeeper.cpp entity/player/skills/basics/skill_gkick.cpp entity/contromodule/playbook/basics/playbook_attack.cpp entity/player/behaviour/basics/behaviour_receiver.cpp entity/player/behaviour/basics/behaviour_attacker.cpp entity/contromodule/strategy/basics/sslstrategy_attack.cpp entity/player/behaviour/basics/behaviour_barrier.cpp entity/player/behaviour/basics/behaviour_markplayer.cpp $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_objc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_objc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_predefs_make_all: moc_predefs.h
compiler_moc_predefs_clean:
	-$(DEL_FILE) moc_predefs.h
moc_predefs.h: /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/data/dummy.cpp
	g++ -pipe -O2 -std=gnu++1y -Wall -W -dM -E -o moc_predefs.h /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/data/dummy.cpp

compiler_moc_header_make_all: moc_playbook.cpp moc_behaviour.cpp moc_behaviour_receiver.cpp moc_behaviour_attacker.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_playbook.cpp moc_behaviour.cpp moc_behaviour_receiver.cpp moc_behaviour_attacker.cpp
moc_playbook.cpp: entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/contromodule/playbook/mrcplaybook.h \
		entity/contromodule/playbook/basics/playbook_donothing.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /home/zilde/Desktop/Armorial-Suassuna/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/home/zilde/Desktop/Armorial-Suassuna -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtOpenGL -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/9 -I/usr/include/x86_64-linux-gnu/c++/9 -I/usr/include/c++/9/backward -I/usr/lib/gcc/x86_64-linux-gnu/9/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/9/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include entity/contromodule/playbook/playbook.h -o moc_playbook.cpp

moc_behaviour.cpp: entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /home/zilde/Desktop/Armorial-Suassuna/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/home/zilde/Desktop/Armorial-Suassuna -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtOpenGL -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/9 -I/usr/include/x86_64-linux-gnu/c++/9 -I/usr/include/c++/9/backward -I/usr/lib/gcc/x86_64-linux-gnu/9/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/9/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include entity/player/behaviour/behaviour.h -o moc_behaviour.cpp

moc_behaviour_receiver.cpp: entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /home/zilde/Desktop/Armorial-Suassuna/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/home/zilde/Desktop/Armorial-Suassuna -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtOpenGL -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/9 -I/usr/include/x86_64-linux-gnu/c++/9 -I/usr/include/c++/9/backward -I/usr/lib/gcc/x86_64-linux-gnu/9/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/9/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include entity/player/behaviour/basics/behaviour_receiver.h -o moc_behaviour_receiver.cpp

moc_behaviour_attacker.cpp: entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /home/zilde/Desktop/Armorial-Suassuna/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/home/zilde/Desktop/Armorial-Suassuna -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtOpenGL -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/9 -I/usr/include/x86_64-linux-gnu/c++/9 -I/usr/include/c++/9/backward -I/usr/lib/gcc/x86_64-linux-gnu/9/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/9/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include entity/player/behaviour/basics/behaviour_attacker.h -o moc_behaviour_attacker.cpp

compiler_moc_objc_header_make_all:
compiler_moc_objc_header_clean:
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
compiler_clean: compiler_moc_predefs_clean compiler_moc_header_clean 

####### Compile

entity.o: entity/entity.cpp entity/entity.h \
		utils/wrtimer/wrtimer.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o entity.o entity/entity.cpp

skill_aroundtheball.o: entity/player/skills/basics/skill_aroundtheball.cpp entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/skill.h \
		entity/player/baseplayer.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/contromodule/playbook/basics/playbook_followball.h \
		entity/contromodule/playbook/basics/playbook_timeout.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sslstrategy_timeout.o entity/contromodule/strategy/basics/sslstrategy_timeout.cpp

pid.o: entity/player/control/pid.cpp entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o pid.o entity/player/control/pid.cpp

mrctimer.o: utils/mrctimer/mrctimer.cpp utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mrctimer.o utils/mrctimer/mrctimer.cpp

skill_kick.o: entity/player/skills/basics/skill_kick.cpp entity/player/skills/basics/skill_kick.h \
		entity/player/skills/skill.h \
		entity/player/baseplayer.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o skill_kick.o entity/player/skills/basics/skill_kick.cpp

behaviour_goalkeeper.o: entity/player/behaviour/basics/behaviour_goalkeeper.cpp entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h \
		entity/contromodule/strategy/strategy.h \
		entity/contromodule/strategy/strategystate.h \
		entity/contromodule/strategy/basics/mrcstrategy.h \
		entity/contromodule/strategy/basics/sslstrategy.h \
		utils/freeangles/freeangles.hh \
		utils/freeangles/obstacle.hh \
		entity/contromodule/grsSimulator/grsSimulator.h \
		include/3rd_party/grSim_Packet.pb.h \
		include/3rd_party/grSim_Commands.pb.h \
		include/3rd_party/grSim_Replacement.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o suassuna.o suassuna.cpp

color.o: utils/basics/color.cc utils/basics/color.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o color.o utils/basics/color.cc

competition.o: utils/basics/competition.cc utils/basics/competition.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o competition.o utils/basics/competition.cc

quadrant.o: utils/basics/quadrant.cc utils/basics/quadrant.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o quadrant.o utils/basics/quadrant.cc

side.o: utils/basics/side.cc utils/basics/side.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o side.o utils/basics/side.cc

wall.o: utils/basics/wall.cc utils/basics/wall.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o wall.o utils/basics/wall.cc

field_ssl2014.o: utils/fields/field_ssl2014.cc utils/fields/field_ssl2014.hh \
		utils/fields/fields.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o field_ssl2014.o utils/fields/field_ssl2014.cc

field_ssl2015.o: utils/fields/field_ssl2015.cc utils/fields/field_ssl2015.hh \
		utils/fields/fields.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o field_ssl2015.o utils/fields/field_ssl2015.cc

field_vss2008.o: utils/fields/field_vss2008.cc utils/fields/field_vss2008.hh \
		utils/fields/fields.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o field_vss2008.o utils/fields/field_vss2008.cc

fields.o: utils/fields/fields.cc utils/fields/fields.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o fields.o utils/fields/fields.cc

fieldside.o: utils/fieldside/fieldside.cc utils/fieldside/fieldside.hh \
		utils/basics/side.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o fieldside.o utils/fieldside/fieldside.cc

edge.o: utils/graph/edge.cc utils/graph/edge.hh \
		utils/graph/basegraph.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o edge.o utils/graph/edge.cc

graph.o: utils/graph/graph.cc utils/graph/graph.hh \
		utils/graph/vertex.hh \
		utils/graph/basegraph.hh \
		utils/graph/edge.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o graph.o utils/graph/graph.cc

vertex.o: utils/graph/vertex.cc utils/graph/vertex.hh \
		utils/graph/basegraph.hh \
		utils/graph/edge.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o vertex.o utils/graph/vertex.cc

line.o: utils/line/line.cc utils/line/line.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o line.o utils/line/line.cc

utils.o: utils/utils.cc utils/utils.hh \
		utils/freeangles/freeangles.hh \
		entity/contromodule/basecoach.h \
		utils/freeangles/obstacle.hh \
		utils/knn/knn.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o utils.o utils/utils.cc

wrtimer.o: utils/wrtimer/wrtimer.cc utils/wrtimer/wrtimer.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o wrtimer.o utils/wrtimer/wrtimer.cc

player.o: entity/player/player.cpp entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/player/playeraccess.h \
		entity/player/behaviour/behaviour.h \
		entity/player/playerbus.h \
		entity/contromodule/grsSimulator/grsSimulator.h \
		include/3rd_party/grSim_Packet.pb.h \
		include/3rd_party/grSim_Commands.pb.h \
		include/3rd_party/grSim_Replacement.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o player.o entity/player/player.cpp

mrcteam.o: entity/contromodule/mrcteam.cpp entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/player/playerbus.h \
		entity/contromodule/strategy/strategy.h \
		entity/contromodule/coachutils.h \
		utils/knn/knn.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o coach.o entity/contromodule/coach.cpp

playerbus.o: entity/player/playerbus.cpp entity/player/playerbus.h \
		entity/player/baseplayer.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playerbus.o entity/player/playerbus.cpp

playeraccess.o: entity/player/playeraccess.cpp entity/player/playeraccess.h \
		entity/player/baseplayer.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playeraccess.o entity/player/playeraccess.cpp

strategy.o: entity/contromodule/strategy/strategy.cpp entity/contromodule/strategy/strategy.h \
		entity/contromodule/basecoach.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/contromodule/playersdistribution.h \
		utils/wrtimer/wrtimer.hh \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/strategy/strategystate.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o strategy.o entity/contromodule/strategy/strategy.cpp

playersdistribution.o: entity/contromodule/playersdistribution.cpp entity/contromodule/playersdistribution.h \
		entity/contromodule/basecoach.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		utils/wrtimer/wrtimer.hh \
		utils/utils.hh \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playersdistribution.o entity/contromodule/playersdistribution.cpp

strategystate.o: entity/contromodule/strategy/strategystate.cpp entity/contromodule/strategy/strategystate.h \
		entity/contromodule/basecoach.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/playersdistribution.h \
		utils/wrtimer/wrtimer.hh \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playbook/playbook.h \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o strategystate.o entity/contromodule/strategy/strategystate.cpp

coachutils.o: entity/contromodule/coachutils.cpp entity/contromodule/coachutils.h \
		utils/knn/knn.hh \
		entity/contromodule/basecoach.h \
		entity/player/playerbus.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_goalkeeper.o entity/player/behaviour/basics/behaviour_goalkeeper.cpp

playbook.o: entity/contromodule/playbook/playbook.cpp entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		entity/contromodule/basecoach.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playbook.o entity/contromodule/playbook/playbook.cpp

behaviour.o: entity/player/behaviour/behaviour.cpp entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skill.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o skill_goalkeeper.o entity/player/skills/basics/skill_goalkeeper.cpp

skill_gkick.o: entity/player/skills/basics/skill_gkick.cpp entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/skill.h \
		entity/player/baseplayer.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o skill_gkick.o entity/player/skills/basics/skill_gkick.cpp

moc_playbook.o: moc_playbook.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_playbook.o moc_playbook.cpp

mrcstrategy.o: entity/contromodule/strategy/basics/mrcstrategy.cpp entity/contromodule/strategy/basics/mrcstrategy.h \
		entity/contromodule/strategy/basics/sslstrategy.h \
		entity/contromodule/strategy/strategy.h \
		entity/contromodule/basecoach.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/contromodule/strategy/mrcstrategies.h \
		entity/contromodule/strategy/basics/sslstrategy_halt.h \
		entity/contromodule/strategy/strategystate.h \
		entity/contromodule/playbook/mrcplaybook.h \
		entity/contromodule/playbook/basics/playbook_donothing.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h \
		entity/contromodule/playbook/basics/playbook_followball.h \
		entity/contromodule/playbook/basics/playbook_timeout.h \
		entity/contromodule/playbook/basics/playbook_attack.h \
		entity/contromodule/strategy/basics/sslstrategy_timeout.h \
		entity/contromodule/strategy/basics/sslstrategy_attack.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mrcstrategy.o entity/contromodule/strategy/basics/mrcstrategy.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin || mkdir -p $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin
	-$(QINSTALL_PROGRAM) $(QMAKE_TARGET) $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin/$(QMAKE_TARGET)
	-$(STRIP) $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin/$(QMAKE_TARGET)

sslstrategy_halt.o: entity/contromodule/strategy/basics/sslstrategy_halt.cpp entity/contromodule/strategy/basics/sslstrategy_halt.h \
		entity/contromodule/strategy/strategystate.h \
		entity/contromodule/basecoach.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/contromodule/playbook/mrcplaybook.h \
		entity/contromodule/playbook/basics/playbook_donothing.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h \
		entity/contromodule/playbook/basics/playbook_followball.h \
		entity/contromodule/playbook/basics/playbook_timeout.h \
		entity/contromodule/playbook/basics/playbook_attack.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sslstrategy_halt.o entity/contromodule/strategy/basics/sslstrategy_halt.cpp

playbook_donothing.o: entity/contromodule/playbook/basics/playbook_donothing.cpp entity/contromodule/playbook/basics/playbook_donothing.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		entity/contromodule/basecoach.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playbook_donothing.o entity/contromodule/playbook/basics/playbook_donothing.cpp

behaviour_followball.o: entity/player/behaviour/basics/behaviour_followball.cpp entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_followball.o entity/player/behaviour/basics/behaviour_followball.cpp

playbook_followball.o: entity/contromodule/playbook/basics/playbook_followball.cpp entity/contromodule/playbook/basics/playbook_followball.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		entity/contromodule/basecoach.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playbook_followball.o entity/contromodule/playbook/basics/playbook_followball.cpp

playbook_timeout.o: entity/contromodule/playbook/basics/playbook_timeout.cpp entity/contromodule/playbook/basics/playbook_timeout.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		entity/contromodule/basecoach.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playbook_timeout.o entity/contromodule/playbook/basics/playbook_timeout.cpp

behaviour_timeout.o: entity/player/behaviour/basics/behaviour_timeout.cpp entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/skills/basics/skill_gkick.h entity/entity.cpp \
	$(COPY_FILE) --parents entity/baseentity.h entity/entity.h entity/player/skills/basics/skill_aroundtheball.h entity/player/skills/basics/skill_dribble.h entity/player/skills/basics/skill_goto.h entity/player/skills/basics/skill_gotolookto.h entity/player/skills/basics/skill_rotateto.h entity/world/world.h entity/world/worldmapupdater.h exithandler.h include/3rd_party/netraw.h include/3rd_party/robocup_ssl_client.h include/3rd_party/util.h include/filters.h include/3rd_party/messages_robocup_ssl_detection.pb.h include/3rd_party/messages_robocup_ssl_geometry.pb.h include/3rd_party/messages_robocup_ssl_wrapper.pb.h include/3rd_party/game_event.pb.h include/3rd_party/messages_robocup_ssl_refbox_log.pb.h include/3rd_party/referee.pb.h include/3rd_party/grSim_Commands.pb.h include/3rd_party/grSim_Packet.pb.h include/3rd_party/grSim_Replacement.pb.h entity/referee/SSLReferee/sslgameinfo.h entity/referee/referee.h entity/referee/SSLReferee/sslreferee.h instancechecker.h suassuna.h utils/basics/color.hh utils/basics/competition.hh utils/basics/quadrant.hh utils/basics/side.hh utils/basics/wall.hh utils/fields/field_ssl2014.hh utils/fields/field_ssl2015.hh utils/fields/field_vss2008.hh utils/fields/fields.hh utils/fields/wrfields.hh utils/fieldside/fieldside.hh utils/graph/basegraph.hh utils/graph/edge.hh utils/graph/graph.hh utils/graph/vertex.hh utils/line/line.hh utils/utils.hh utils/wrtimer/wrtimer.hh entity/player/player.h entity/contromodule/mrcteam.h entity/player/skills/skill.h entity/locations.h entity/player/skills/skills_include.h entity/contromodule/grsSimulator/grsSimulator.h entity/contromodule/coach.h entity/player/playerbus.h entity/player/playeraccess.h entity/contromodule/strategy/strategy.h entity/contromodule/basecoach.h entity/contromodule/playersdistribution.h entity/contromodule/strategy/strategystate.h entity/contromodule/coachutils.h entity/contromodule/playbook/playbook.h entity/player/behaviour/behaviour.h entity/player/behaviour/mrcbehaviours.h entity/player/behaviour/basics/behaviour_donothing.h entity/player/skills/basics/skill_donothing.h utils/knn/knn.hh entity/contromodule/strategy/basics/mrcstrategy.h entity/contromodule/strategy/basics/sslstrategy.h entity/contromodule/controlmodule.h entity/contromodule/strategy/basics/sslstrategy_halt.h entity/contromodule/playbook/basics/playbook_donothing.h entity/contromodule/playbook/mrcplaybook.h entity/player/behaviour/basics/behaviour_followball.h entity/contromodule/playbook/basics/playbook_followball.h entity/contromodule/playbook/basics/playbook_timeout.h entity/player/behaviour/basics/behaviour_timeout.h entity/contromodule/strategy/basics/sslstrategy_timeout.h entity/contromodule/strategy/mrcstrategies.h entity/player/control/pid.h utils/mrctimer/mrctimer.h entity/player/skills/basics/skill_kick.h entity/player/behaviour/basics/behaviour_goalkeeper.h entity/player/skills/basics/skill_goalkeeper.h entity/player/skills/basics/skill_gkick.h $(DISTDIR)/
	$(COPY_FILE) --parents entity/entity.cpp entity/player/skills/basics/skill_aroundtheball.cpp entity/player/skills/basics/skill_dribble.cpp entity/player/skills/basics/skill_goto.cpp entity/player/skills/basics/skill_gotolookto.cpp entity/player/skills/basics/skill_rotateto.cpp entity/world/world.cpp entity/world/worldmapupdater.cpp exithandler.cpp include/3rd_party/messages_robocup_ssl_detection.pb.cc include/3rd_party/netraw.cpp include/3rd_party/robocup_ssl_client.cpp include/3rd_party/messages_robocup_ssl_geometry.pb.cc include/3rd_party/messages_robocup_ssl_refbox_log.pb.cc include/3rd_party/messages_robocup_ssl_wrapper.pb.cc include/3rd_party/game_event.pb.cc include/3rd_party/grSim_Commands.pb.cc include/3rd_party/grSim_Packet.pb.cc include/3rd_party/grSim_Replacement.pb.cc include/3rd_party/referee.pb.cc entity/referee/SSLReferee/sslgameinfo.cpp entity/referee/referee.cpp entity/referee/SSLReferee/sslreferee.cpp instancechecker.cpp main.cpp suassuna.cpp utils/basics/color.cc utils/basics/competition.cc utils/basics/quadrant.cc utils/basics/side.cc utils/basics/wall.cc utils/fields/field_ssl2014.cc utils/fields/field_ssl2015.cc utils/fields/field_vss2008.cc utils/fields/fields.cc utils/fieldside/fieldside.cc utils/graph/edge.cc utils/graph/graph.cc utils/graph/vertex.cc utils/line/line.cc utils/utils.cc utils/wrtimer/wrtimer.cc entity/player/player.cpp entity/contromodule/mrcteam.cpp entity/player/skills/skill.cpp entity/locations.cpp entity/contromodule/grsSimulator/grsSimulator.cpp entity/contromodule/coach.cpp entity/player/playerbus.cpp entity/player/playeraccess.cpp entity/contromodule/strategy/strategy.cpp entity/contromodule/playersdistribution.cpp entity/contromodule/strategy/strategystate.cpp entity/contromodule/coachutils.cpp entity/contromodule/playbook/playbook.cpp entity/player/behaviour/behaviour.cpp entity/player/behaviour/basics/behaviour_donothing.cpp entity/player/skills/basics/skill_donothing.cpp utils/knn/knn.cc entity/contromodule/strategy/basics/mrcstrategy.cpp entity/contromodule/strategy/basics/sslstrategy.cpp entity/contromodule/controlmodule.cpp entity/contromodule/strategy/basics/sslstrategy_halt.cpp entity/contromodule/playbook/basics/playbook_donothing.cpp entity/player/behaviour/basics/behaviour_followball.cpp entity/contromodule/playbook/basics/playbook_followball.cpp entity/contromodule/playbook/basics/playbook_timeout.cpp entity/player/behaviour/basics/behaviour_timeout.cpp entity/contromodule/strategy/basics/sslstrategy_timeout.cpp entity/player/control/pid.cpp utils/mrctimer/mrctimer.cpp entity/player/skills/basics/skill_kick.cpp entity/player/behaviour/basics/behaviour_goalkeeper.cpp entity/player/skills/basics/skill_goalkeeper.cpp entity/player/skills/basics/skill_gkick.cpp $(DISTDIR)/
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_timeout.o entity/player/behaviour/basics/behaviour_timeout.cpp

sslstrategy_timeout.o: entity/contromodule/strategy/basics/sslstrategy_timeout.cpp entity/contromodule/strategy/basics/sslstrategy_timeout.h \
		entity/contromodule/strategy/strategystate.h \
		entity/contromodule/basecoach.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/contromodule/playbook/mrcplaybook.h \
		entity/contromodule/playbook/basics/playbook_donothing.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h \
		entity/contromodule/playbook/basics/playbook_followball.h \
		entity/contromodule/playbook/basics/playbook_timeout.h \
		entity/contromodule/playbook/basics/playbook_attack.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sslstrategy_timeout.o entity/contromodule/strategy/basics/sslstrategy_timeout.cpp

pid.o: entity/player/control/pid.cpp entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o pid.o entity/player/control/pid.cpp

mrctimer.o: utils/mrctimer/mrctimer.cpp utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mrctimer.o utils/mrctimer/mrctimer.cpp

skill_kick.o: entity/player/skills/basics/skill_kick.cpp entity/player/skills/basics/skill_kick.h \
		entity/player/skills/skill.h \
		entity/player/baseplayer.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o skill_kick.o entity/player/skills/basics/skill_kick.cpp

behaviour_goalkeeper.o: entity/player/behaviour/basics/behaviour_goalkeeper.cpp entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		utils/knn/knn.hh \
		entity/contromodule/basecoach.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_goalkeeper.o entity/player/behaviour/basics/behaviour_goalkeeper.cpp

skill_goalkeeper.o: entity/player/skills/basics/skill_goalkeeper.cpp entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/skills/skill.h \
		entity/player/baseplayer.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o skill_goalkeeper.o entity/player/skills/basics/skill_goalkeeper.cpp

skill_gkick.o: entity/player/skills/basics/skill_gkick.cpp entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/skill.h \
		entity/player/baseplayer.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o skill_gkick.o entity/player/skills/basics/skill_gkick.cpp

playbook_attack.o: entity/contromodule/playbook/basics/playbook_attack.cpp entity/contromodule/playbook/basics/playbook_attack.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		entity/contromodule/basecoach.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o playbook_attack.o entity/contromodule/playbook/basics/playbook_attack.cpp

behaviour_receiver.o: entity/player/behaviour/basics/behaviour_receiver.cpp entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_receiver.o entity/player/behaviour/basics/behaviour_receiver.cpp

behaviour_attacker.o: entity/player/behaviour/basics/behaviour_attacker.cpp entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_attacker.o entity/player/behaviour/basics/behaviour_attacker.cpp

sslstrategy_attack.o: entity/contromodule/strategy/basics/sslstrategy_attack.cpp entity/contromodule/strategy/basics/sslstrategy_attack.h \
		entity/contromodule/strategy/strategystate.h \
		entity/contromodule/basecoach.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/contromodule/playbook/mrcplaybook.h \
		entity/contromodule/playbook/basics/playbook_donothing.h \
		entity/contromodule/playbook/playbook.h \
		entity/referee/SSLReferee/sslreferee.h \
		entity/referee/referee.h \
		entity/entity.h \
		entity/contromodule/mrcteam.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		entity/player/player.h \
		entity/world/world.h \
		entity/baseentity.h \
		entity/player/baseplayer.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		utils/utils.hh \
		entity/locations.h \
		utils/basics/wall.hh \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h \
		entity/contromodule/playersdistribution.h \
		utils/wrtimer/wrtimer.hh \
		entity/player/behaviour/behaviour.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/behaviour/mrcbehaviours.h \
		entity/player/behaviour/basics/behaviour_donothing.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_followball.h \
		entity/player/behaviour/basics/behaviour_timeout.h \
		entity/player/behaviour/basics/behaviour_goalkeeper.h \
		entity/player/behaviour/basics/behaviour_attacker.h \
		entity/player/behaviour/basics/behaviour_receiver.h \
		entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/basics/behaviour_markplayer.h \
		entity/contromodule/playbook/basics/playbook_followball.h \
		entity/contromodule/playbook/basics/playbook_timeout.h \
		entity/contromodule/playbook/basics/playbook_attack.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sslstrategy_attack.o entity/contromodule/strategy/basics/sslstrategy_attack.cpp

behaviour_barrier.o: entity/player/behaviour/basics/behaviour_barrier.cpp entity/player/behaviour/basics/behaviour_barrier.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_barrier.o entity/player/behaviour/basics/behaviour_barrier.cpp

behaviour_markplayer.o: entity/player/behaviour/basics/behaviour_markplayer.cpp entity/player/behaviour/basics/behaviour_markplayer.h \
		entity/player/behaviour/behaviour.h \
		entity/player/baseplayer.h \
		entity/player/playeraccess.h \
		entity/player/playerbus.h \
		entity/player/skills/skills_include.h \
		entity/player/skills/basics/skill_donothing.h \
		entity/player/skills/skill.h \
		entity/player/skills/basics/skill_goto.h \
		entity/player/skills/basics/skill_rotateto.h \
		entity/player/skills/basics/skill_gotolookto.h \
		entity/player/skills/basics/skill_aroundtheball.h \
		entity/player/skills/basics/skill_kick.h \
		entity/player/skills/basics/skill_gkick.h \
		entity/player/skills/basics/skill_dribble.h \
		entity/player/skills/basics/skill_goalkeeper.h \
		entity/player/player.h \
		entity/entity.h \
		entity/world/world.h \
		entity/baseentity.h \
		utils/fields/fields.hh \
		entity/world/worldmapupdater.h \
		entity/referee/SSLReferee/sslreferee.h \
		include/3rd_party/referee.pb.h \
		include/3rd_party/game_event.pb.h \
		entity/referee/SSLReferee/sslgameinfo.h \
		utils/basics/color.hh \
		entity/referee/referee.h \
		utils/utils.hh \
		entity/locations.h \
		utils/fieldside/fieldside.hh \
		utils/basics/side.hh \
		utils/basics/wall.hh \
		entity/contromodule/mrcteam.h \
		entity/player/control/pid.h \
		utils/mrctimer/mrctimer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behaviour_markplayer.o entity/player/behaviour/basics/behaviour_markplayer.cpp

moc_playbook.o: moc_playbook.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_playbook.o moc_playbook.cpp

moc_behaviour.o: moc_behaviour.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_behaviour.o moc_behaviour.cpp

moc_behaviour_receiver.o: moc_behaviour_receiver.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_behaviour_receiver.o moc_behaviour_receiver.cpp

moc_behaviour_attacker.o: moc_behaviour_attacker.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_behaviour_attacker.o moc_behaviour_attacker.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin || mkdir -p $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin
	-$(QINSTALL_PROGRAM) $(QMAKE_TARGET) $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin/$(QMAKE_TARGET)
	-$(STRIP) $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin/$(QMAKE_TARGET)

uninstall_target: FORCE
	-$(DEL_FILE) $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin/$(QMAKE_TARGET)
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/Armorial-Suassuna/bin/ 


install: install_target  FORCE

uninstall: uninstall_target  FORCE

FORCE:

