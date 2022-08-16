//
//  SlabTabsApp.swift
//  SlabTabs
//
//  Created by David Bolis on 19/7/2022.
//

import SwiftUI

@main
struct SlabTabsApp: App {
    @StateObject var sharedfile = sharedclass()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(sharedfile)
        }
    }
}
