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
    
    init() {
        load()
    }
    
    
    // MARK: - func
    func addNewNore() {
        guard !text.isEmpty else { return }
        let note = Note(id: UUID(), text: text)
        notes.append(note)
        text = ""
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(notes)
            let url = getDocDirectory().appendingPathComponent("notes")
            try data.write(to: url)
        } catch  {
            print("💾 Saving data has failed!❗️")
        }
    }
    
    func getDocDirectory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
    
    func load() {
        DispatchQueue.main.async {
            do {
                let url = self.getDocDirectory().appendingPathComponent("notes")
                let data = try Data(contentsOf: url)
                self.notes = try JSONDecoder().decode([Note].self, from: data)
            } catch {
                
            }
        }
    }
}
