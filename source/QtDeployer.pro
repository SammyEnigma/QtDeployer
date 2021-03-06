TEMPLATE = app


lessThan(QT_MINOR_VERSION, 8){
    QT += widgets
}else {
    QT += qml quick
}

CONFIG += c++14

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
TARGET = qt-deployer

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

SOURCES += \
    main.cpp \
    CPP/baseclass.cpp \
    CPP/cppmanager.cpp \
    CPP/mainmanager.cpp \
    CPP/outputmanager.cpp \
    CPP/pluginmanager.cpp \
    CPP/qmlmanager.cpp \
    CPP/buildmanager.cpp \
    CPP/utils.cpp

HEADERS += \
    CPP/baseclass.h \
    CPP/cppmanager.h \
    CPP/mainmanager.h \
    CPP/outputmanager.h \
    CPP/pluginmanager.h \
    CPP/qmlmanager.h \
    CPP/buildmanager.h \
    CPP/utils.h


lessThan(QT_MINOR_VERSION, 8){

SOURCES += \
    mainwindow.cpp \
    CPP/buildpage.cpp \
    CPP/deploypage.cpp \
    CPP/listmodel.cpp \
    CPP/listviewdelegate.cpp \
    CPP/about.cpp

HEADERS += \
    mainwindow.h \
    CPP/buildpage.h \
    CPP/deploypage.h \
    CPP/listmodel.h \
    CPP/listviewdelegate.h \
    CPP/about.h
}

TRANSLATIONS += \
    languages/en.ts \
    languages/ru.ts

VERSION = 1.0.3.0
TEMPLATE = app
RC_ICONS = snap/icon.ico

FORMS += \
    mainwindow.ui \
    CPP/buildpage.ui \
    CPP/deploypage.ui \
    CPP/about.ui

DISTFILES += \
    ../snap/snapcraft.yaml \
    ../snap/core18/snapcraft.yaml \
    ../snap/dumpSnap/snapcraft.yaml
