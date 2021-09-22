//
//  HeaderView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 22.09.2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Capsule()
                .frame(height: 1)
            Image(systemName: "list.bullet.rectangle.portrait")
                .foregroundStyle(.yellow.opacity(0.9), .white.opacity(0.6))
            Capsule()
                .frame(height: 1)
        }
        .foregroundColor(.accentColor)
    }
}










struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
