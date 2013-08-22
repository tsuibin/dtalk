#include <QApplication>

#include "qmlview.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QmlView* viewl;
    viewl = new QmlView(0);
    viewl->show();
//    Widget w;
//    w.show();
    return a.exec();
}
