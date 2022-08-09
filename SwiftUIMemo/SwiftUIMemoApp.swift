//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 이은지 on 2022/08/09.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
