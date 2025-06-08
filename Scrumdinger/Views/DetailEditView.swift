//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Michael Ofosu-Darko on 08/06/2025.
//

import SwiftUI

struct DetailEditView: View {
    @Binding var scrum: DailyScrum
    @State private var attendeeName = ""
    
    var body: some View {
        Form {
            Section (header: Text("Meeting Info")){
                TextField("Title",text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1){
                        Text("Lenght")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")

                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)

                }
                ThemePicker(selection: $scrum.theme)

            }
            
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees){ attendee in
                    Text(attendee.name)
                    
                }
                .onDelete{ indices in
                    scrum.attendees.remove(atOffsets: indices)
                    
                }
                
                HStack {
                    TextField("New attendee", text: $attendeeName)
                    Button (action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: attendeeName)
                            scrum.attendees.append(attendee)
                            attendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")

                    }
                    .disabled(attendeeName.isEmpty)
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var scrum = DailyScrum.sampleData[0]
    DetailEditView(scrum: $scrum)
}
