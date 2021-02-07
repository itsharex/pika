import SwiftUI

struct NavigationMenuItems: View {
    var body: some View {
        Group {
            Button(NSLocalizedString("menu.pick.foreground", comment: "Pick foreground..."), action: {
                NSApp.sendAction(#selector(AppDelegate.triggerPickForeground), to: nil, from: nil)
            })
                .modify {
                    if #available(OSX 11.0, *) {
                        $0.keyboardShortcut("d", modifiers: .command)
                    } else {
                        $0
                    }
                }

            Button(NSLocalizedString("menu.pick.background", comment: "Pick background..."), action: {
                NSApp.sendAction(#selector(AppDelegate.triggerPickBackground), to: nil, from: nil)
            })
                .modify {
                    if #available(OSX 11.0, *) {
                        $0.keyboardShortcut("D", modifiers: .command)
                    } else {
                        $0
                    }
                }
        }

        VStack {
            Divider()
        }

        Group {
            Button(NSLocalizedString("menu.copy.foreground", comment: "Copy foreground"), action: {
                NSApp.sendAction(#selector(AppDelegate.triggerCopyForeground), to: nil, from: nil)
            })
                .modify {
                    if #available(OSX 11.0, *) {
                        $0.keyboardShortcut("c", modifiers: .command)
                    } else {
                        $0
                    }
                }

            Button(NSLocalizedString("menu.copy.background", comment: "Copy background"), action: {
                NSApp.sendAction(#selector(AppDelegate.triggerCopyBackground), to: nil, from: nil)
            })
                .modify {
                    if #available(OSX 11.0, *) {
                        $0.keyboardShortcut("C", modifiers: .command)
                    } else {
                        $0
                    }
                }
        }

        VStack {
            Divider()
        }

        Group {
            Button(NSLocalizedString("menu.about", comment: "About"), action: {
                NSApp.sendAction(#selector(AppDelegate.openAboutWindow), to: nil, from: nil)
            })
            Button(NSLocalizedString("menu.updates", comment: "Check for updates..."), action: {
                NSApp.sendAction(#selector(AppDelegate.checkForUpdates), to: nil, from: nil)
            })
            Button(NSLocalizedString("menu.preferences", comment: "Preferences"), action: {
                NSApp.sendAction(#selector(AppDelegate.openPreferencesWindow), to: nil, from: nil)
            })
                .modify {
                    if #available(OSX 11.0, *) {
                        $0.keyboardShortcut(",", modifiers: .command)
                    } else {
                        $0
                    }
                }
        }

        VStack {
            Divider()
        }

        Button(NSLocalizedString("menu.quit", comment: "Quit"), action: {
            NSApplication.shared.terminate(self)
        })
            .modify {
                if #available(OSX 11.0, *) {
                    $0.keyboardShortcut("q", modifiers: .command)
                } else {
                    $0
                }
            }
    }
}

struct NavigationItems_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMenuItems()
    }
}
