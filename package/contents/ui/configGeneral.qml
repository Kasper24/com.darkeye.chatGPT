import QtQuick 2.3
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_sendOnEnter: sendOnEnter.checked
	property alias cfg_matchTheme: matchTheme.checked
	property alias cfg_focusInterval: focusInterval.value 

    QQC2.CheckBox {
        id: sendOnEnter
        text: i18n("Send On Enter")
    }
    QQC2.Label {
		font.pixelSize: 12
		text:i18n("When checked pressing Enter will send the query to ChatGPT.");
	}
	QQC2.Label {
		font.pixelSize: 8
		font.italic: true
		text:i18n("For now please reload the page with the 'Reload' Button after changing this configuration.");
	}
	
	 QQC2.CheckBox {
        id: matchTheme
        text: i18n("Match OS theme")
    }

    QQC2.Label {
		font.pixelSize: 12
		font.italic: true
		text:i18n("Focus input after  : %1ms",focusInterval.value );
	}
	QQC2.Label {
		font.pixelSize: 8
		font.italic: true
		text:i18n("This is a workaround to allow input field to be fcoused when using the widget shortcut.") +
                "\n" +
            i18n("incrase the timeout if theres  issues with focusing on the input  when using  the shortcut.");
	}
	
	 QQC2.Slider {
        id: focusInterval
        from:0
        stepSize:10
        value:0
        to:1000
        live:true
    }
}
