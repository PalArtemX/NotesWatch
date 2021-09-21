//
//  NotesWatchApp.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 21.09.2021.
//

import SwiftUI

@main
struct NotesWatchApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NotesView()
            }
        }
    }
}
