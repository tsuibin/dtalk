#ifndef QMLVIEW_H
#define QMLVIEW_H

#include <QQuickView>
#include <QWidget>
#include <QDebug>
#include <QQuickItem>

class QmlView : public QQuickView
{
    Q_OBJECT
public:
    explicit QmlView(QWindow *parent = 0);
    QQuickItem* itmeObj;
signals:
    
public slots:
    void slotMovenoticeUI(int,QVariant);
    void myFunction(int,QVariant);
};

#endif // QMLVIEW_H
