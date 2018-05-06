import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: parent.width
    height: parent.height

    title: qsTr("Inbox - Gmail")

    ListView {
        width: parent.width
        height: parent.height
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

    Label {
        visible: false
        text: qsTr("No mails.")
        anchors.centerIn: parent
    }
}
