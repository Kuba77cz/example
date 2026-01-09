import QtQuick 2.2
import Sailfish.Silica 1.0
import Sailfish.WebView 1.0

 Page {
    allowedOrientations: Orientation.All
    property string url

    //backNavigation: true
    //forwardNavigation: false
    showNavigationIndicator: false

    WebView {
         id: webView
         active: true
         anchors {
             top: parent.top
             left: parent.left
             right: parent.right
             bottom: navPanel.top
         }

         url: "https://www.instagram.com"
     }
     DockedPanel {
             id: navPanel
             dock: Dock.Bottom
             width: parent.width
             height: Theme.itemSizeSmall
             open: true // todo: open and close on scroll
             _immediate: true // no lag when opening or closing

             Row {
                 anchors.centerIn: parent
                 spacing: Theme.paddingLarge
                 /*IconButton {
                     icon.source: "image://theme/icon-m-back"
                     onClicked: webView.navigateBack()
                 }*/
                 IconButton {
                     icon.source: "image://theme/icon-m-refresh"
                     onClicked: webView.reload()
                 }
             }
         }
 }
