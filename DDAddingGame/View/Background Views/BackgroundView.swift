//
//  BackgroundView.swift
//  DDAddingGame
//
//  Created by joe on 2/26/25.
//

import SwiftUI

struct BackgroundView: View {
    let colorList: [Color]
    let opacity: Double
    
    var body: some View {
        LinearGradient(
            colors: colorList,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(opacity)
        .ignoresSafeArea()
    }
}

struct GameBackgroundView: View {
    var body: some View {
        BackgroundView(colorList: [.purple, .pink, .clear], opacity: 0.7)
    }
}

struct HighScoreBackgroundView: View {
    var body: some View {
        BackgroundView(colorList: [.black, .black, .gray], opacity: 0.7)
    }
}

//#Preview {
//    GameBackgroundView()
//    HighScoreBackgroundView()
//}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GameBackgroundView()
        HighScoreBackgroundView()
    }
}
