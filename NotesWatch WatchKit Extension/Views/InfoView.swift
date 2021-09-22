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
            Image(systemName: "applelogo")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .padding(50)
            HeaderView()
            Text("Artem Paliutin")
                .font(.headline)
            Text("Developer")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}










struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
