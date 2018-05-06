import QtQuick 2.10
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Page {
    width: parent.width
    height: parent.height

    title: qsTr("Inbox - Gmail")

    ListView {
        id: mailList
        width: parent.width
        height: parent.height - buttons.height
        ScrollBar.vertical: ScrollBar {
            active: true
        }
        model: MailListModel {}
        delegate: MailItem {
            name: authorName
            avatar: authorAvatar
            email: authorEmail
            subject: mailSubject
            excerpt: mailExcerpt
        }
    }

    ToolBar {
        id: buttons
        anchors.bottom: parent.bottom
        width: parent.width
        contentHeight: childrenRect.implicitHeight

        RowLayout {
            anchors.fill: parent

            ToolButton {
                icon.source: "icons/ic_chevron_left_black_24px.svg"
            }

            Label {
                text: qsTr("1-25 of 178")
                horizontalAlignment: Qt.AlignHCenter
                                  verticalAlignment: Qt.AlignVCenter
                                  Layout.fillWidth: true
            }

            ToolButton {
                icon.source: "icons/ic_navigate_next_black_24px.svg"
            }
        }
    }

    Label {
        visible: false
        text: qsTr("No mails.")
        anchors.centerIn: parent
    }
}
