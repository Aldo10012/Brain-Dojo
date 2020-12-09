//
//  Rules.swift
//  Brain Dojo
//
//  Created by Alberto Dominguez on 12/8/20.
//

import SwiftUI

struct Rules: View {
    var ruleNumber: Int
    var rule: String
    
    var body: some View {
        HStack(alignment: .center){
            Text("\(ruleNumber)")
                .padding(25)
            Text(rule)
                .tracking(3)
            
        }.padding(.bottom, 25).font(.system(size: 25))
    }
}

struct Rules_Previews: PreviewProvider {
    static var previews: some View {
        Rules(ruleNumber: 1, rule: "testing 123")
    }
}
