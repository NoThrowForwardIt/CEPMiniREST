QT -= gui
QT += xml network sql

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
INCLUDEPATH += /usr/lib
debug {
LIBS += -L/usr/lib -lCPPWebFrameworkd
}

release {
LIBS += -L/usr/lib -lCPPWebFramework
}

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp

DISTFILES += \
    server/config/ssl/cert.pem \
    server/config/ssl/key.pem \
    server/config/cppwebserverpages/resources/images/logo.png \
    server/config/cppwebserverpages/resources/images/favicon.ico \
    server/config/cppwebserverpages/resources/css/cppweb.css \
    server/config/cppwebserverpages/403.view \
    server/config/cppwebserverpages/404.view \
    server/config/cppwebserverpages/index.view \
    server/config/CPPWeb.ini \
    server/config/log/CPPWebServer.log \
