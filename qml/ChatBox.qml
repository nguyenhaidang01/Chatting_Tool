import QtQuick 2.15

Rectangle {
	id: root

	width: 800
	height: 325
	anchors {
		horizontalCenter: parent.horizontalCenter
		bottom: parent.bottom
	}
	border {
		width: 3
		color: QmlStyle.borderColor
	}

	color: QmlStyle.chatBoxColor
	radius: 10
}
