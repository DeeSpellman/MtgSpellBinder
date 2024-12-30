//
//  MtgSpellBinderApp.swift
//  MtgSpellBinder
//
//  Created by Deirdre Spellman on 12/28/24.
//

import SwiftUI
import SwiftData

@main
struct MtgSpellBinderApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Card.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            LandingView()
        }
        .modelContainer(sharedModelContainer)
    }
}
