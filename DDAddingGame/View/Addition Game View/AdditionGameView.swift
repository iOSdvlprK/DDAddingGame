//
//  AdditionGameView.swift
//  DDAddingGame
//
//  Created by joe on 2/26/25.
//

import SwiftUI

struct AdditionGameView: View {
    @StateObject private var gameVM = AdditionGameViewModel()
    
    var body: some View {
        ZStack {
            GameBackgroundView()
            
            VStack {
                ScoreLivesView(
                    score: gameVM.score,
                    lives: gameVM.gameModel.lives,
                    maxLives: 3,
                    level: gameVM.gameModel.level
                )
                
                Spacer()
            }
        }
    }
}

#Preview {
    AdditionGameView()
}
