//
//  ContentView.swift
//  DiyasFirstIOSprojest
//
//  Created by Diya Shah on 2/19/24.
//

import SwiftUI

enum Emojis: String, CaseIterable {
    case 💰,🛍️,🍝,💎
}

struct ContentView: View {
    @State var selection: Emojis = .💰
    
    var body: some View{
        NavigationView{
            VStack{
                
                Text(selection.rawValue)
                    .font(.system(size:150))
                
                Picker("pick yo emoji", selection: $selection){
                    ForEach(Emojis.allCases, id: \.self){
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.palette)
                .padding()
            }
            .navigationTitle("what to get diya for her bday?")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
