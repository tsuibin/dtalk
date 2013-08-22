#include "qmlview.h"

QmlView::QmlView(QWindow *parent) :
    QQuickView(parent)
{
   // this->setFlags(Qt::FramelessWindowHint|Qt::WindowStaysOnTopHint);
    this->setSource(QUrl("MyMainUi.qml"));
    resize(300,200);

    itmeObj = this->rootObject();
    connect((QObject*)itmeObj,SIGNAL(signalMoveMent(int,QVariant)),this,SLOT(slotMovenoticeUI(int,QVariant)));

    connect((QObject*)itmeObj,SIGNAL(myQmlFunction(int,QVariant)),this,SLOT(myFunction(int,QVariant)));




    QString str="ready";
    QMetaObject::invokeMethod((QObject*)itmeObj,"ndooNoticeJsonString",Q_ARG(QVariant,QVariant::fromValue(str)));


    this->show();
}

void QmlView::slotMovenoticeUI(int cmd, QVariant lst)
{
    qDebug()<<"slotMovenoticeUI "<<cmd<<"\n"<<lst;
}


void QmlView::myFunction(int cmd, QVariant lst)
{
    qDebug()<<"do this function.";
}
