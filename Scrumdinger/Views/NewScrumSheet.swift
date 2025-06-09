//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Michael Ofosu Darko on 09/06/2025.
//

import SwiftUI

struct NewScrumSheet: View {

    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: nil)
        }
    }
}

#Preview {
    NewScrumSheet()
}
