//
//  TitleValueView.swift
//  DDAddingGame
//
//  Created by joe on 2/27/25.
//

import SwiftUI

struct TitleValueView: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack {
            Text(title)
            Text("\(value)")
        }
        .font(.headline)
        .fontWeight(.bold)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    ZStack {
        GameBackgroundView()
        
        TitleValueView(title: "Score", value: 7)
    }
}
