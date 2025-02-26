//
//  HighScoreView.swift
//  DDAddingGame
//
//  Created by joe on 2/26/25.
//

import SwiftUI

struct HighScoreView: View {
    var body: some View {
        ZStack {
            HighScoreBackgroundView()
            
            Text("HighScoreView")
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    HighScoreView()
}
