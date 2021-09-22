//
//  DetailView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 22.09.2021.
//

import SwiftUI

struct DetailView: View {
    
    let text: String
    let count: Int
    @State private var showInfo = false
    @State private var showSettings = false
    
    
    var body: some View {
        VStack {
            
            // MARK: - Header
            HeaderView(text: "Details")
            Spacer()
            
            // MARK: - Text
            ScrollView(.vertical) {
                Text(text)
                    .font(.title3)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            // MARK: - Footer
            HStack {
                // Info
                Image(systemName: "info.circle")
                    .foregroundStyle(.white, Color.accentColor)
                    .onTapGesture {
                        showInfo.toggle()
                    }
                    .sheet(isPresented: $showInfo) {
                        InfoView()
                    }
                
                Spacer()
                
                // Notes Count
                HStack {
                    
                    Image(systemName: "note.text")
                        .foregroundStyle(.white, Color.accentColor.opacity(0.5))
                    Text("\(count)")
                        .opacity(0.5)
                }
                
                .foregroundColor(.accentColor)
                
                Spacer()
                
                // Settings
                Image(systemName: "gear")
                    .onTapGesture {
                        showSettings.toggle()
                    }
                    .sheet(isPresented: $showSettings) {
                        SettingsView()
                    }
                    
            }
            //.padding()
            .foregroundColor(.accentColor)
        }
    }
}










struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailView(text: "Hello", count: 4)
            DetailView(text: "Hello", count: 3)
                .previewDevice("Apple Watch Series 3 - 38mm")
            
        }
    }
}
