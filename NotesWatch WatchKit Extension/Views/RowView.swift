//
//  RowView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 21.09.2021.
//

import SwiftUI

struct RowView: View {
    
    @ObservedObject var viewModel: NoteViewModel
    
    var body: some View {
        VStack {
            if viewModel.notes.count >= 1 {
                List {
                ForEach(viewModel.notes) { i in
                    NavigationLink {
                        DetailView(text: i.text, count: viewModel.notes.count)
                    } label: {
                        Text(i.text)
                    }


                }
                .onDelete(perform: viewModel.delete)
                }
            } else {
                Image(systemName: "list.bullet.rectangle.portrait")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.yellow.opacity(0.15), .white.opacity(0.05))
                    .padding(25)
                    
                
            }
        }
    }
}










struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(viewModel: NoteViewModel())
    }
}
