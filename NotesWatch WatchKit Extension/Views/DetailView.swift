//
//  DetailView.swift
//  NotesWatch WatchKit Extension
//
//  Created by Artem Palyutin on 22.09.2021.
//

import SwiftUI

struct DetailView: View {
    
    let text: String
    let count: Int
    
    
    var body: some View {
        VStack {
            
            // Header
            HStack {
                Capsule()
                    .frame(height: 1)
                Image(systemName: "list.bullet.rectangle.portrait")
                    .foregroundStyle(.yellow.opacity(0.9), .white.opacity(0.6))
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
            Spacer()
            
            // Text
            ScrollView(.vertical) {
                Text(text)
                    .font(.title3)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            // footer
            HStack {
                Image(systemName: "info.circle")
                Spacer()
                Text("\(count) notes")
                    .foregroundColor(.accentColor)
                Spacer()
                Image(systemName: "gear")
            }
            
            
        }
        .padding()
    }
}










struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(text: "Hello", count: 4)
    }
}
