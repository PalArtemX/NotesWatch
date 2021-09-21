//
//  ContentView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 21.09.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = NoteViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Add Note", text: $viewModel.text)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                    .fixedSize()
                    //.buttonStyle(BorderedButtonStyle(tint: Color.yellow))
                    .buttonStyle(.plain)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                    

                }
                Spacer()
            }
            .navigationTitle(Text("Notes"))
        } // - NavigationView
        
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("Apple Watch Series 3 - 38mm")
                .preferredColorScheme(.light)
        }
    }
}
