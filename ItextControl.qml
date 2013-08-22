import QtQuick 2.0

Item {
    id:mainIc
    property string iName: "交易账号:"
    property bool iPws: false
    property alias iTextContents: text_input1.text
    property int iMairgin: 10
    property int iLenWid: 200
    Text {
        id: text1
        width: 56
        height: 20
        color: "#000000"
        text: iName
        horizontalAlignment: Text.AlignHCenter
        font.family: "微软雅黑"
        font.pointSize: 12
        anchors.left: parent.left
        anchors.leftMargin: 4
        anchors.top:parent.top
        anchors.topMargin: 4
        renderType: Text.NativeRendering
    }
    Rectangle {
        id: rectangle1
        width: iLenWid
        height: 20
        anchors.left: text1.right
        anchors.leftMargin: iMairgin
        anchors.top:parent.top
        anchors.topMargin: 4
        color: "#ffffff"
        border.width: 1
        border.color: "black"
        radius: 4
        smooth: true
        TextInput {
            id: text_input1
            width: iLenWid-4
            height: 16
            text: iTextContents
            renderType: Text.NativeRendering
            font.pixelSize: 14
            anchors.centerIn: parent
            echoMode:iPws?TextInput.Password:TextInput.Normal
            selectByMouse: true
            smooth: true
        }
    }
}
