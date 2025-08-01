//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Michael Ofosu-Darko on 08/06/2025.
//

import Foundation
import ThemeKit
import SwiftData


@Model
class DailyScrum: Identifiable {
    var id: UUID
    var title: String
    @Relationship(deleteRule: .cascade, inverse: \Attendee.dailyScrum)
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble : Double {
        get {
            Double(lengthInMinutes)
        }
        
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    @Relationship(deleteRule: .cascade, inverse: \History.dailyScrum)
    var history: [History] = []
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{Attendee(name:$0)}
           self.lengthInMinutes = lengthInMinutes
           self.theme = theme
       }
}


