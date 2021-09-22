//
//  SettingsView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 22.09.2021.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("line_count") var lineCount = 1
    @State private var value = 1.0
    
    var body: some View {
        VStack {
            HeaderView(text: "Settings")
            
            Spacer()
            
            Text("Lines: \(lineCount)".uppercased())
                .bold()
            Slider(
                value: Binding(get: {
                    self.value
                }, set: {(newValue) in
                    self.value = newValue
                    self.lineCount = Int(value)
                }),
                in: 1...4,
                step: 1)
            
                .foregroundColor(.accentColor)
            Spacer()
        }
    }
}










struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
