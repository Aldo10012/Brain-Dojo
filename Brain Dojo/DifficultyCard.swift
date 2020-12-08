//
//  DifficultyCard.swift
//  Brain Dojo
//
//  Created by Alberto Dominguez on 12/8/20.
//

import SwiftUI

struct DifficultyCard: View {
    var difficulty: String
    
    var body: some View {
        Text(difficulty)
            .font(.system(size: 35))
            .tracking(5)
            .frame(width: 300, height: 75, alignment: .center)
            .background(Color.white.opacity(0.85))
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 1)
            )
    }
}

struct DifficultyCard_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyCard(difficulty: "Easy")
    }
}
