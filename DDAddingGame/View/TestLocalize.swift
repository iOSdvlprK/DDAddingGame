//
//  TestLocalize.swift
//  DDAddingGame
//
//  Created by joe on 2/21/25.
//

import SwiftUI

struct TestLocalize: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Over")
            Text("Score")
            Text("Level")
            Text("Game")
            Text("High Scores")
            Text("Rank")
            Text("Name")
            Text("Save")
        }
        .font(.title)
    }
}

#Preview {
    TestLocalize()
}
