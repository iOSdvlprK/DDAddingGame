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
            AdditionGameView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            
            HighScoreView()
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
