//
//  ContentView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 21.09.2021.
//

import SwiftUI

struct NotesView: View {
    @StateObject var viewModel = NoteViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Note...", text: $viewModel.text)
                    
                    Button {
                        viewModel.addNewNore()
                        viewModel.save()
                    } label: {
                        Image(systemName: "plus.circle")
                            .foregroundStyle(.yellow, .white.opacity(0.3))

                    }
                    .buttonStyle(.plain)
                    .font(.largeTitle)
                }
                Spacer()
                RowView(viewModel: viewModel)
                
            }
            .navigationTitle("Notes")
        } // NavigationView
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotesView()
            NotesView()
                .previewDevice("Apple Watch Series 3 - 38mm")
        }
    }
}
