//
//  InfoView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 22.09.2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            HeaderView(text: "Info")
            Spacer()
            Image(systemName: "applelogo")
                .font(.largeTitle)
                .foregroundColor(.white)
            Spacer()
            
            Text("Artem Paliutin")
                .font(.headline)
            Text("Developer")
                .font(.subheadline)
                .foregroundColor(.gray.opacity(0.5))
        }
    }
}










struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
