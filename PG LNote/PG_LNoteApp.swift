//
//  PG_LNoteApp.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 25/07/2025.
//

import SwiftUI

@main
struct PG_LNoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
