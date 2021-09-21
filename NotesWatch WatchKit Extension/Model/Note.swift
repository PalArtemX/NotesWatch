//
//  Note.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 21.09.2021.
//

import Foundation


struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
