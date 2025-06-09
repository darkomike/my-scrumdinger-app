//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Michael Ofosu Darko on 09/06/2025.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id : UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
