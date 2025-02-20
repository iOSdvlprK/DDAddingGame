//
//  MainView.swift
//  DDAddingGame
//
//  Created by joe on 2/14/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Addition Game View")
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            
            Text("High Score View")
                .tabItem {
                    Image(systemName: "list.number")
                    Text("High Scores")
                }
        }
    }
}

#Preview {
    MainView()
}
