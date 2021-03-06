//
//  Home.swift
//  Brain Dojo
//
//  Created by Alberto Dominguez on 12/2/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ZStack{
                Background()
                
                VStack(spacing: 30){
                    Spacer()
                    Text("Select Difficulty")
                        .font(.system(size: 35.0))
                        .fontWeight(.light)
                        .frame(width: 300, height: 70 , alignment: .center)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Easy(topColor: "black", bottomColor: "red",randomUIColor: .green)){
                        DifficultyCard(difficulty: "Easy")
                    }
                    NavigationLink(destination: Medium(topColor: "black", bottomColor: "red",randomUIColor: .green, cardColor: .white)){
                        DifficultyCard(difficulty: "Normal")
                    }
                    NavigationLink(destination: Hard(topColor: "black", bottomColor: "red",randomUIColor: .green, cardColor: .white)){
                        DifficultyCard(difficulty: "Hard")
                    }
                    Spacer()
                    
                    NavigationLink(destination: DifficultyDetails()){
                        Text("Difficulty Details")
                            .font(.system(size: 20))
                            .tracking(5)
                            .frame(width: 300, height: 75, alignment: .center)
                            //.background(Color.white.opacity(0.85))
                            .cornerRadius(15)
                            .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                            )
                            
                    }.padding(.bottom, 30)
                }
                .navigationBarTitle("Brain Dojo")
                
            }
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
