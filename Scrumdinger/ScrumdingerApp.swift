//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Michael Ofosu-Darko on 07/06/2025.
//

import SwiftUI
import SwiftData


@main
struct ScrumdingerApp: App {
    // The main entry point for the Scrumdinger application.
    var body: some Scene {
        WindowGroup {
            ScrumsView()
        }
        .modelContainer(for: DailyScrum.self)
    }
}
