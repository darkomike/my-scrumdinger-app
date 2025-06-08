//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Michael Ofosu-Darko on 08/06/2025.
//

import SwiftUI
import ThemeKit


struct ThemePicker: View {
    @Binding  var selection: Theme
    var body: some View {
        Picker("Theme", selection: $selection){
            ForEach(Theme.allCases){ theme in
                ThemeView (theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    @Previewable @State var theme = Theme.periwinkle
    ThemePicker(selection: $theme)
}
