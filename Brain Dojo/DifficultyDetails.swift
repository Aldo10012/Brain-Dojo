//
//  DifficultyDetails.swift
//  Brain Dojo
//
//  Created by Alberto Dominguez on 12/3/20.
//

import SwiftUI

struct DifficultyDetails: View {
    var body: some View {
        ZStack(){
            Background()
            
            VStack(){
                HStack(spacing:30){                    
                    DificultyFollowTheseRules(difficulty: "Easy", followsRules: "1")
                    DificultyFollowTheseRules(difficulty: "Normal", followsRules: "1-2")
                    DificultyFollowTheseRules(difficulty: "Hard", followsRules: "1-3")
                }
                Spacer()
                Text("Rules to follow")
                    .font(.system(size: 35))
                    .tracking(5)
                    .padding(.bottom, 50)
                
                
                VStack(){
                    Rules(ruleNumber: 1, rule: "Top card text must match the bottom card text color")
                    Rules(ruleNumber: 2, rule: "Black cards = white card's opposite answer")
                    Rules(ruleNumber: 3, rule: "Green cards = yes, red cards = no")
                }.padding(20)
                Spacer()
                
            }
        }
    }
}

struct DifficultyDetails_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyDetails()
    }
}
