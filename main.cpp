#include <QGuiApplication>
#include <QQuickView>
#include <QFileSystemWatcher>
#include <QQmlEngine>

// https://wiki.qt.io/Resource_files_in_OS_X_bundle
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView view;
    QString filePath = QCoreApplication::applicationDirPath() + "/" + "main.qml";
    view.setSource(QUrl::fromLocalFile(filePath));
    view.show();

    QFileSystemWatcher watcher;
    watcher.addPath(QCoreApplication::applicationDirPath());

    QObject::connect(&watcher, &QFileSystemWatcher::directoryChanged, [&view, &filePath](const QString& path)
    {
         qDebug() << path;
         view.engine()->clearComponentCache();
         view.setSource(QUrl::fromLocalFile(filePath));

    });

    return app.exec();
}
