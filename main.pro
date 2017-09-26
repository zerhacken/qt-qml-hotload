TEMPLATE += app
QT += quick
SOURCES += main.cpp

APP_QML_FILES.files = main.qml
APP_QML_FILES.path = Contents/MacOS
QMAKE_BUNDLE_DATA += APP_QML_FILES
