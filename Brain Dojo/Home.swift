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
                    Text("Select Difficulty")
                        .font(.system(size: 35.0))
                        .fontWeight(.light)
                        .frame(width: 300, height: 70 , alignment: .center)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Easy(topColor: "black", bottomColor: "red",randomUIColor: .green)){
                        Text("Easy")
                            .font(.system(size: 35))
                            .tracking(5)
                            .frame(width: 300, height: 75, alignment: .center)
                            .background(Color.white.opacity(0.85))
                            .cornerRadius(15)
                            .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                            )
                            
                            
                    }
                    NavigationLink(destination: Medium(topColor: "black", bottomColor: "red",randomUIColor: .green, cardColor: .white)){
                        Text("Medium")
                            .font(.system(size: 35))
                            .tracking(5)
                            .frame(width: 300, height: 75, alignment: .center)
                            .background(Color.white.opacity(0.85))
                            .cornerRadius(15)
                            .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                            )
                    }
                    NavigationLink(destination: Hard(topColor: "black", bottomColor: "red",randomUIColor: .green, cardColor: .white)){
                        Text("Hard")
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
