import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import Ubuntu.Web 0.2
import com.canonical.Oxide 1.0 as Oxide

import KidBrowser 1.0
import PamAuthentication 0.1
import "BrowserDialogs" as BrowserDialogs

Page {
    // TODO black list editor
    // TODO white list editor
    // TODO history view
    // TODO set homepage option

    function parseDomain(url) {
        var domain = url.replace('http://', '').replace('https://', '')
        if (domain.indexOf('/') > -1) {
            domain = domain.substring(0, domain.indexOf('/'));
        }

        //Treat www.ABC.com domains the same as ABC.com
        if (domain.substring(0, 4) == 'www.') {
            domain = domain.replace('www.', '')
        }

        return domain;
    }

    function navigationRequest(url) {
        var ok = false; // Always reject navigation unless its on the whitelist
        console.log('requesting navigation to ' + url);

        var domain = parseDomain(url);
        if (isNaN(domain.replace(/\./g, ''))) {
            if (KidBrowser.isBlacklisted(domain)) {
                console.log('rejected navigation because the request is for a blacklisted domain');

                navigator.text = webview.url;
                PopupUtils.open(blacklistRejectionComponent, root)
            }
            else if (KidBrowser.isWhitelisted(domain)) {
                console.log('navigation ok because the request is for a whitelisted domain');
                ok = true;
            }
            else {
                // Not in the whitelist or the blacklist
                navigator.text = webview.url;
                console.log('navigation rejected, but asking for permission');
                PopupUtils.open(confirmNavigationComponent, root, {
                    url: url,
                    domain: domain,
                });
            }
        }
        else { //The domain is acutally an ip address, reject this
            console.log('rejected navigation because the request is for an ip address');

            navigator.text = webview.url;
            PopupUtils.open(ipRejectionComponent, root)
        }

        return ok;
    }

    function closeListPage(url) {
        if (url && navigationRequest(url)) {
            webview.url = url;
        }

        pageStack.pop();
    }

    header: PageHeader {
        id: header

        contents: RowLayout {
            anchors {
                fill: parent
                topMargin: units.gu(1)
                bottomMargin: units.gu(1)
            }

            spacing: units.gu(1)

            TextField {
                id: navigator

                Layout.fillWidth: true
                inputMethodHints: Qt.ImhUrlCharactersOnly | Qt.ImhNoPredictiveText | Qt.ImhNoAutoUppercase

                onAccepted: {
                    var url = text;
                    if (url.substring(0, 7) != 'http://' && url.substring(0, 8) != 'https://') {
                        url = 'http://' + url;
                    }

                    if (navigationRequest(url)) {
                        webview.url = url;
                    }
                }
            }
        }

        trailingActionBar {
            actions: [
                Action {
                    iconName: 'go-next'
                    text: i18n.tr('Forward')
                    enabled: webview.canGoForward
                    onTriggered: webview.goForward()
                },

                Action {
                    iconName: 'go-previous'
                    text: i18n.tr('Back')
                    enabled: webview.canGoBack
                    onTriggered: webview.goBack()
                },

                Action {
                    iconName: 'reload'
                    text: i18n.tr('Refresh')
                    onTriggered: webview.reload()
                },

                Action {
                    iconName: 'history'
                    text: i18n.tr('History')
                    onTriggered: {
                        var page = pageStack.push(Qt.resolvedUrl('HistoryPage.qml'));
                        page.onUrlSelected.connect(closeListPage);
                    }
                },

                Action {
                    iconName: 'view-list-symbolic'
                    text: i18n.tr('Blacklist')
                    onTriggered: pageStack.push(Qt.resolvedUrl('BlacklistPage.qml'))
                },

                Action {
                    iconName: 'view-list-symbolic'
                    text: i18n.tr('Whitelist')
                    onTriggered: pageStack.push(Qt.resolvedUrl('WhitelistPage.qml'))
                },

                Action {
                    iconName: 'info'
                    text: i18n.tr('About')
                    onTriggered: pageStack.push(Qt.resolvedUrl('AboutPage.qml'))
                }
            ]
        }
    }

    WebContext {
        id: webcontext
        userAgent: 'Mozilla/5.0 (Linux; Android 5.0; Nexus 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.111 Mobile Safari/537.36 Ubuntu Touch'
    }

    WebView {
        id: webview
        anchors {
            top: header.bottom
            right: parent.right
            left: parent.left
            bottom: parent.bottom
        }

        alertDialog: BrowserDialogs.AlertDialog {}
        confirmDialog: BrowserDialogs.ConfirmDialog {}
        promptDialog: BrowserDialogs.PromptDialog {}
        beforeUnloadDialog: BrowserDialogs.BeforeUnloadDialog {}
        filePicker: pickerComponent

        //TODO dns error page

        property string home: 'https://ubuntu.com/' //TODO better default
        property string lastUrl

        context: webcontext
        url: home
        onUrlChanged: {
            var strUrl = url.toString();
            navigator.text = strUrl;

            // Simple check for access here to avoid redirects to restricted pages
            if (strUrl && !KidBrowser.isWhitelisted(parseDomain(strUrl))) {
                console.log('Going back to the home page because of a redirect to a non-whitelisted page');
                url = home;
            }

            // TODO track the favicon

            if (strUrl != lastUrl) {
                KidBrowser.addHistory(strUrl, ''); // TODO figure out how to get the title of the page
            }
            lastUrl = strUrl;
        }
        preferences.localStorageEnabled: true
        preferences.appCacheEnabled: true
        preferences.javascriptCanAccessClipboard: true

        function navigationRequestedDelegate(request) {
            var url = request.url.toString();

            if (!navigationRequest(url)) {
                request.action = Oxide.NavigationRequest.ActionReject;
            }
        }

        /*onNavigationHistoryChanged: {
            console.log(navigationHistory);
        }*/

        Component.onCompleted: {
            navigator.text = url;
            preferences.localStorageEnabled = true;
        }
    }

    ProgressBar {
        height: units.dp(3)
        anchors {
            left: parent.left
            right: parent.right
            top: header.bottom
        }

        showProgressPercentage: false
        value: (webview.loadProgress / 100)
        visible: (webview.loading && !webview.lastLoadStopped)
    }

    Component {
        id: pickerComponent

        BrowserDialogs.PickerDialog {}
    }

    Component {
        id: ipRejectionComponent

        Dialog {
            id: ipRejectionDialog

            title: i18n.tr('Not Allowed')
            text: i18n.tr('Accessing IP addresses is not allowed')

            Button {
                text: i18n.tr('OK')
                onClicked: PopupUtils.close(ipRejectionDialog)
            }
        }
    }

    Component {
        id: blacklistRejectionComponent

        Dialog {
            id: blacklistRejectionDialog

            title: i18n.tr('Not Allowed')
            text: i18n.tr('Access to this site has been blocked')

            Button {
                text: i18n.tr('OK')
                onClicked: PopupUtils.close(blacklistRejectionDialog)
            }
        }
    }

    Component {
        id: confirmNavigationComponent

        Dialog {
            id: confirmNavigationDialog

            AuthenticationHandler {
                id: authHandler
                serviceName: root.applicationName

                onAuthenticationSucceeded: {
                    if (confirmNavigationDialog.goingToBlacklist) {
                        KidBrowser.addBlacklist(confirmNavigationDialog.domain);
                    }
                    else {
                        KidBrowser.addWhitelist(confirmNavigationDialog.domain);
                        webview.url = confirmNavigationDialog.url;
                    }

                    PopupUtils.close(confirmNavigationDialog);
                }

                onAuthenticationAborted: {
                    PopupUtils.close(confirmNavigationDialog);
                }
            }

            property string url
            property string domain
            property bool goingToBlacklist: false

            title: i18n.tr('Access Requested')

            // TRANSLATORS: %DOMAIN% will be automatically replaced with the domain being requested
            text: i18n.tr('Access to %DOMAIN% requested').replace('%DOMAIN%', domain)

            Button {
                text: i18n.tr('Grant Access')
                color: UbuntuColors.green
                onClicked: {
                    goingToBlacklist = false;

                    // TRANSLATORS: %DOMAIN% will be automatically replaced with the domain being requested
                    //authHandler.authenticate(i18n.tr('Enter your password to grant access to %DOMAIN%').replace('%DOMAIN%', domain));

                    // TODO remove for real build
                    KidBrowser.addWhitelist(confirmNavigationDialog.domain);
                    webview.url = confirmNavigationDialog.url;
                    PopupUtils.close(confirmNavigationDialog);
                }
            }

            Button {
                text: i18n.tr('Block Access')
                color: UbuntuColors.red
                onClicked: {
                    goingToBlacklist = true;

                    // TRANSLATORS: %DOMAIN% will be automatically replaced with the domain being requested
                    //authHandler.authenticate(i18n.tr('Enter your password to block access to %DOMAIN%').replace('%DOMAIN%', domain));

                    // TODO remove for real build
                    KidBrowser.addBlacklist(confirmNavigationDialog.domain);
                    PopupUtils.close(confirmNavigationDialog);
                }
            }

            Button {
                text: i18n.tr('Cancel')
                onClicked: PopupUtils.close(confirmNavigationDialog)
            }
        }
    }
}
