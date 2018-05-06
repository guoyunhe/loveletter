import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("LoveLetter")

    header: ToolBar {
        contentHeight: childrenRect.implicitHeight

        RowLayout {
            anchors.fill: parent

            ToolButton {
                icon.source: stackView.depth > 1 ? "icons/ic_arrow_back_black_24px.svg" : "icons/ic_menu_black_24px.svg"
                onClicked: {
                    if (stackView.depth > 1) {
                        stackView.pop()
                    } else {
                        drawer.open()
                    }
                }
            }

            Label {
                text: stackView.currentItem.title
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            ToolButton {
                icon.source: "icons/ic_create_black_24px.svg"
            }
        }
    }

    Drawer {
        id: drawer
        width: Math.min(window.width, 250)
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Inbox")
                width: parent.width
                onClicked: {
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Sent")
                width: parent.width
                onClicked: {
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Draft")
                width: parent.width
                onClicked: {
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Trash")
                width: parent.width
                onClicked: {
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "MailBoxPage.qml"
        anchors.fill: parent
    }
}
