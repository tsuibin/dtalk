// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.0

Rectangle {
    width: 300
    height: 200
    border.width: 1
    border.color: "gray"
    color: "#F0F0F0"
    radius: 5
    signal signalMoveMent(int cmd,variant lst);
    signal myQmlFunction(int cmd,variant lst);

    ItextControl{
        id:cont1
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top:parent.top
        anchors.topMargin: 30
        width: 250
        height: 20
        iName:"账号:"
    }

    ItextControl{
        id:cont2
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top:cont1.bottom
        anchors.topMargin: 10
        width: 200
        height: 20
        iName:"密码:"
        iPws:true
    }
    ItextControl{
        id:cont3
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top:cont2.bottom
        anchors.topMargin: 10
        width: 200
        height: 20
        iName:"验证码"
        iMairgin: 100
        iLenWid: 110
    }
    Text{
        id:txt
        width: 100
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top:cont3.bottom
        anchors.topMargin: 30
        text: "是否保存账号"
        font.family: "微软雅黑"
        font.pointSize: 12
        color: "black"
        renderType: Text.NativeRendering
    }
    CheckBox{
        id:chebox
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.top:cont3.bottom
        anchors.topMargin: 30
        width: 20
        height: 20
    }

    Button{
        id:btn
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.horizontalCenterOffset: 80
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        width: 80
        height: 20
        text: "登 陆"
        tooltip: "点击登陆吧"
        style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#888"
                    radius: 4
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                        GradientStop { position: 0.5 ; color: control.pressed ? "#bbb" : "#ddd" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                    }
                }
            }
        onClicked: {
            console.log(btn.text);
            var lst = getUiInformation();
            signalMoveMent(199,lst);
        }
    }

    Button{
        id:btnn
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.horizontalCenterOffset: -80
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        width: 80
        height: 20
        text: "Process"
        tooltip: "click this"
        style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#888"
                    radius: 4
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                        GradientStop { position: 0.5 ; color: control.pressed ? "#bbb" : "#ddd" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                    }
                }
            }
        onClicked: {
            console.log(btnn.text);
            var lst = getUiInformation();
            myQmlFunction(199,lst);
        }
    }

    function ndooNoticeJsonString(str)
    {
        console.log("str "+str);
    }
    function getUiInformation()
    {
        var tmp = [];
        var txt1=cont1.iTextContents;
        var txt2=cont2.iTextContents;
        var txt3=cont3.iTextContents;
        var isRemb = chebox.checked;
        tmp =[txt1,txt2,txt3,isRemb];
        return tmp;
    }
}
