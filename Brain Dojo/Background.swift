//
//  Background.swift
//  Brain Dojo
//
//  Created by Alberto Dominguez on 12/1/20.
//

import SwiftUI

struct Background: View {
    var body: some View {
        
        Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
        
        Rectangle()
            .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
        Rectangle()
            .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
            .rotationEffect(Angle(degrees: 60))
            .edgesIgnoringSafeArea(.all)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
