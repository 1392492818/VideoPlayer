#-------------------------------------------------
#
# Project created by QtCreator 2016-09-01T16:10:47
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


UI_DIR  = obj/Gui
MOC_DIR = obj/Moc
OBJECTS_DIR = obj/Obj


#������ļ�ֱ�ӷŵ�Դ��Ŀ¼�µ�binĿ¼�£���dll�������˴�Ŀ¼�У����Խ�����к��Ҳ���dll����
#DESTDIR=$$OUT_PWD/bin/
DESTDIR=$$PWD/bin/
QMAKE_CXXFLAGS += -std=c++11

TARGET = VideoPlayer
TEMPLATE = app

#������Ƶ�������Ĵ���
include(module/VideoPlayer/VideoPlayer.pri)
#�������϶�����Ĵ���
include(module/DragAbleWidget/DragAbleWidget.pri)

SOURCES += src/main.cpp \
    src/Widget/VideoPlayerWidget.cpp \
    src/Widget/ShowVideoWidget.cpp \
    src/Widget/VideoSlider.cpp


HEADERS  += \
    src/Widget/VideoPlayerWidget.h \
    src/Widget/ShowVideoWidget.h \
    src/Widget/VideoSlider.h

FORMS    += \
    src/Widget/VideoPlayerWidget.ui \
    src/Widget/ShowVideoWidget.ui

RESOURCES += \
    resources/resources.qrc

INCLUDEPATH += $$PWD/src

win32:RC_FILE=$$PWD/resources/main.rc
