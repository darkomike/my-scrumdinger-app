//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Michael Ofosu-Darko on 07/06/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
