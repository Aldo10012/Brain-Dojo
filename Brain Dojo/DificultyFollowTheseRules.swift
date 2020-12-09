//
//  DificultyFollowTheseRules.swift
//  Brain Dojo
//
//  Created by Alberto Dominguez on 12/8/20.
//

import SwiftUI

struct DificultyFollowTheseRules: View {
    var difficulty: String
    var followsRules: String
    
    var body: some View {
        VStack(){
            Text(difficulty)
            Text(followsRules)
        }.frame(width: 75, height: 60, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1)
        )
    }
}

struct DificultyFollowTheseRules_Previews: PreviewProvider {
    static var previews: some View {
        DificultyFollowTheseRules(difficulty: "Hard", followsRules: "1-3")
    }
}
