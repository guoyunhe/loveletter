import QtQuick 2.9
import QtQuick.Controls 2.3

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("LoveLetter")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            icon.name: stackView.depth > 1 ? 'go-previous' : 'application-menu'
            icon.source: stackView.depth > 1 ? "icons/go-previous.svg" : "icons/menu.svg"
            text: stackView.depth > 1 ? qsTr("Back") : qsTr("Menu")
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
            anchors.centerIn: parent
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
