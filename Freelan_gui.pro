QT *= core network gui
greaterThan(QT_MAJOR_VERSION, 4): QT *= widgets

TARGET = Freelan_gui
TEMPLATE = app

VERSION = 0.0.1
TARGET_STRING = '"\\"$${TARGET}\\""'
VERSION_STRING = '"\\"$${VERSION}\\""'
ORGANISATION_NAME='"\\"Freelan Incorporated\\""'
ORGANISATION_DOMAIN='"\\"freelan.org\\""'

DEFINES *= ORGANISATION_NAME=$${ORGANISATION_NAME}
DEFINES *= ORGANISATION_DOMAIN=$${ORGANISATION_DOMAIN}
DEFINES *= TARGET=$${TARGET_STRING}
DEFINES *= VERSION=$${VERSION_STRING}
DEFINES *= BUILD=1
DEFINES *= QT_USE_FAST_CONCATENATION
DEFINES *= QT_USE_FAST_OPERATOR_PLUS
DEFINES *= QT_USE_QSTRINGBUILDER

CONFIG(debug, debug|release) {
    DEFINES *= __DEBUG__
}

# Enable all possible warnings
win32{
    QMAKE_CXXFLAGS *= /W4 /WX
} else {
    QMAKE_CXXFLAGS *= common_flags = -Wall -Wextra -Wno-unknown-pragmas -pedantic -pedantic-errors
}

PRECOMPILED_HEADER = src/Freelan_gui_pch.hpp

OTHER_FILES += \
    README.md \
    LICENSE.md \
    uncrustify_in.cfg \
    uncrustify_out.cfg \
    uncrustify.sh \
    git-configure.sh \
    .gitattributes \
    .gitignore \

SOURCES += \
    src/main.cpp \
    src/Freelan_gui.cpp

HEADERS += \
    src/Freelan_gui.hpp \
    src/Freelan_gui_pch.hpp

FORMS += \
    src/Freelan_gui.ui
