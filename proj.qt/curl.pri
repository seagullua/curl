INCLUDEPATH += $$PWD/../include/
INCLUDEPATH += $$PWD
DEFINES += CURL_STATICLIB

LIBS += -lWs2_32
LIBS += -lAdvapi32

CONFIG(debug, debug|release) {
    LIBS += -L$$PWD/bin/debug/ -lcurl
} else {
    LIBS += -L$$PWD/bin/release/ -lcurl
}
