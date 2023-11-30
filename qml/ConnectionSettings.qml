import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
	id: root

	width: 794
	height: 200
	anchors {
		top: parent.top
		horizontalCenter: parent.horizontalCenter
	}
	Label {
		id: userLabel
		text: "User name"
		anchors {
			left: parent.left
			leftMargin: 20
			verticalCenter: userName.verticalCenter
		}
	}

	Rectangle {
		id: userName
		width: 150
		height: 30
		color: QmlStyle.chatBoxColor
		radius: 10
		anchors {
			top: parent.top
			topMargin: 30
			left: userLabel.right
			leftMargin: 10
		}
		border {
			width: 1
			color: QmlStyle.borderColor
		}
		TextInput {
			anchors {
				fill: parent
				top: parent.top
				topMargin: 7
				left: parent.left
				leftMargin: 5
			}
			text: networkConfig.userName
		}
	}

	Label {
		id: ipLabel
		text: "IP"
		anchors {
			left: userName.right
			leftMargin: 20
			verticalCenter: userName.verticalCenter
		}
	}

	Rectangle {
		id: ipConnect
		width: 250
		height: 30
		color: QmlStyle.chatBoxColor
		radius: 10
		anchors {
			verticalCenter: userName.verticalCenter
			left: ipLabel.right
			leftMargin: 10
		}
		border {
			width: 1
			color: QmlStyle.borderColor
		}
		TextInput {
			anchors {
				fill: parent
				top: parent.top
				topMargin: 7
				left: parent.left
				leftMargin: 5
			}
			text: networkConfig.ip
		}
	}

	Label {
		id: portLabel
		text: "Port"
		anchors {
			left: ipConnect.right
			leftMargin: 20
			verticalCenter: userName.verticalCenter
		}
	}

	Rectangle {
		id: portConnect
		width: 60
		height: 30
		color: QmlStyle.chatBoxColor
		radius: 10
		anchors {
			verticalCenter: userName.verticalCenter
			left: portLabel.right
			leftMargin: 10
		}
		border {
			width: 1
			color: QmlStyle.borderColor
		}
		TextInput {
			anchors {
				fill: parent
				top: parent.top
				topMargin: 7
				left: parent.left
				leftMargin: 5
			}
			text: networkConfig.port
			onEditingFinished: {
				networkConfig.port = text
			}
		}
	}

	RoundButton {
		id: hostConnect
		width: 93
		height: 30
		anchors {
			verticalCenter: userName.verticalCenter
			left: portConnect.right
			leftMargin: 40
		}
		radius: 10
		text: "Host/Connect"
		Rectangle {
			anchors.fill: parent
			color: QmlStyle.transparentColor
			border {
				color: QmlStyle.borderColor
				width: 1
			}
			radius: 10
		}
		onClicked: {
			console.log("ConnectionSettings::" + networkConfig.userName + ", " + networkConfig.ip + ", " + networkConfig.port)
		}
	}
}
