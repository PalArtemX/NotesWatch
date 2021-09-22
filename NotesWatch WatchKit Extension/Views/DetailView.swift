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
    @State private var showInfo = false
    
    var body: some View {
        VStack {
            
            // Header
            HeaderView()
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
                    .onTapGesture {
                        showInfo.toggle()
                    }
                    .sheet(isPresented: $showInfo) {
                        InfoView()
                    }
                Spacer()
                Text("\(count)")
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
