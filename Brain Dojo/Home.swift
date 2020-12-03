//
//  Home.swift
//  Brain-Dojo
//
//  Created by Alberto Dominguez on 12/2/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Brain Dojo")
                Text("Select Difficulty")
                NavigationLink(destination: Easy(topColor: "black", bottomColor: "red",randomUIColor: .green)){
                    Text("Easy")
                }
                NavigationLink(destination: Medium(topColor: "black", bottomColor: "red",randomUIColor: .green, cardColor: .white)){
                    Text("Medium")
                }
                NavigationLink(destination: Hard(topColor: "black", bottomColor: "red",randomUIColor: .green, cardColor: .white)){
                    Text("Hard")
                }
            }
            .navigationBarTitle("Brain Dojo")
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
