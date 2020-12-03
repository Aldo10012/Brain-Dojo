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
                    VStack(){
                        Text("EASY")
                        Text("1")
                    }.frame(width: 75, height: 60, alignment: .center)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1)
                                                                            )
                    
                    VStack(){
                        Text("Meduim")
                        Text("1-2")
                    }.frame(width: 75, height: 60, alignment: .center)//.background(Color.white.opacity(0.85))
                    .cornerRadius(15)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 1)
                    )
                    
                    VStack(){
                        Text("Hard")
                        Text("1-3")
                    }.frame(width: 75, height: 60, alignment: .center)//.background(Color.white.opacity(0.85))
                        .cornerRadius(15)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1)
                        )
                }
                Spacer()
                Text("Rules to follow")
                    .font(.system(size: 35))
                    .tracking(5)
                    .padding(.bottom, 50)
                
                
                VStack(){
                    HStack(alignment: .center){
                        Text("1")
                            .padding(25)
                        Text("Top card text must match the bottom card text color")
                            .tracking(3)
                        
                    }.padding(.bottom, 25).font(.system(size: 25))
                    
                    HStack(alignment: .center){
                        Text("2")
                            .padding(25)
                        Text("Black cards = white card's opposite answer")
                            .tracking(2)
                        
                    }.padding(.bottom, 25).font(.system(size: 25))
                    
                    HStack(alignment: .center){
                        Text("3")
                            .padding(25)
                        Text("Green cards = yes, red cards = no")
                            .tracking(3)
                        
                    }.padding(.bottom, 25).font(.system(size: 25))
                    
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
