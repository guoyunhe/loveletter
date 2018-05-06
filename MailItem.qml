import QtQuick 2.4

Rectangle {
    property string name: "Unknown"
    property string email: "unknown"
    property string avatar: "https://secure.gravatar.com/avatar/?s=100&d=identicon&r=g"
    property string subject: "No subject"
    property string excerpt: "..."

    id: root
    width: parent.width
    height: 80
    color: "#FFF"

    Row {
        id: row
        antialiasing: false
        anchors.fill: parent
        spacing: 20

        Image {
            id: avatarImage
            width: parent.height
            height: parent.height
            antialiasing: false
            fillMode: Image.PreserveAspectFit
            source: avatar
        }

        Column {
            width: parent.width - avatarImage.width
            height: parent.height

            Text {
                width: parent.width
                height: 20
                text: name
            }

            Text {
                width: parent.width
                height: 20
                text: subject
                font.weight: Font.Bold
            }

            Text {
                width: parent.width
                height: parent.height - 30
                text: excerpt
                font.pixelSize: 12
                wrapMode: Text.Wrap
            }
        }
    }
}
