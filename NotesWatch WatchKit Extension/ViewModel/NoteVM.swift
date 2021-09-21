//
//  NoteVM.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 21.09.2021.
//

import Foundation


class NoteViewModel: ObservableObject {
    @Published var notes: [Note] = []
    @Published var text = ""
    
    
    
    
    // MARK: - func
    func addNewNore() {
        guard !text.isEmpty else { return }
        let note = Note(id: UUID(), text: text)
        notes.append(note)
        text = ""
    }
}
