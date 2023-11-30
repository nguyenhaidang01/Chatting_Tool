import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
	id: root

	width: 800
	height: 450
	visible: true
	title: qsTr("Chating Tool")
	Rectangle {
		id: windowFrame

		width: 800
		height: 450
		anchors.centerIn: parent
		border {
			id: borderWindow
			color: QmlStyle.borderColor
			width: 3
		}
		radius: 10

		ConnectionSettings{
			id: connectSettings
		}
		ChatBox{
			id: chatBox
		}
	}

//	QtObject {
//		id: internal

//		readonly property color borderColor: "#000000"
//		readonly property color chatAreaColor: "#D3D3D3"
//	}
}
