//
//  Easy.swift
//  Brain-Dojo
//
//  Created by Alberto Dominguez on 12/2/20.
//

import SwiftUI


struct Easy: View {

    @State var topColor: String
    @State var bottomColor: String
    @State var randomUIColor: Color
    @State var score: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var seconds: Int = 30
    
    var body: some View {
        
        ZStack{
            // background
            Background()
                        
            //main content
            VStack( alignment: .center, spacing: 20){
                // display time, score, & streek
                HStack(spacing: 15){
//                    Button(action: {
//                        reset()
//                    }, label: {
//                        Text("reset")
//                            .fontWeight(.heavy)
//                            .font(.system(size: 20.0))
//                    })
                    
                    Text("Time: \(seconds)").onReceive(timer) {input in
                        self.seconds -= 1
                        if seconds < 0 {seconds = 0}
                    }.font(.system(size: 20.0))
                    
                    Text("Score: \(score)").font(.system(size: 20.0))
                    
                }
                
                Spacer()
                
                // The prompt + the cards
                VStack(spacing: 20){
                    Text("Does the top match the bottom text color? ")
                        .font(.system(size: 25.0))
                        .fontWeight(.light)
                        .frame(width: 300, height: 70 , alignment: .center)
                        .multilineTextAlignment(.center)
                        
                    Text(topColor)
                        .font(.system(size: 45.0))
                        .tracking(5)
                        .frame(width: 300, height: 100)
                        .background(Color.white.opacity(0.85))
                        .cornerRadius(15)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1)
                        )
                    
                    Text(bottomColor)
                        .font(.system(size: 45.0))
                        .tracking(5)
                        .fontWeight(.heavy)
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white.opacity(0.85))
                        .foregroundColor(randomUIColor)
                        .cornerRadius(15)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1)
                        )
                }
                Spacer()
                
                // The "Yes" and "No" buttons
                HStack(){
                    Button(action: {
                        noWasClicked()
                    }, label: {
                        Text("No")
                            .frame(width: 160, height: 75, alignment: .center)
                            .font(.largeTitle)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(red: 173/255, green: 216/255, blue:230/255))
                            .background(Color.black.opacity(0.5))
                            //.padding(10)
                    })
                    Button(action: {
                        yesWasClicked()
                    }, label: {
                        Text("Yes ")
                            .frame(width: 160, height: 75, alignment: .center)
                            .font(.largeTitle)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(red: 173/255, green: 216/255, blue:230/255))
                            .background(Color.black.opacity(0.5))
                            //.padding(10)
                    })
                }.padding(.bottom, 0)
            }
        }
        
    }
    
    
    
    // getting the colors
    func getRandomCollorTop(){
        let listOfColors: [String] = ["Blue", "Green", "Yellow", "Orange", "Red", "Purple"]
        let randomIndex: Int = Int.random(in: 0...listOfColors.count-1)
        topColor = listOfColors[randomIndex]
    }
    
    func getRandomCollorBottom(){
        let listOfColors: [String] = ["Blue", "Green", "Yellow", "Orange", "Red", "Purple"]
        let randomIndex: Int = Int.random(in: 0...listOfColors.count-1)
        bottomColor = listOfColors[randomIndex]
    }
    
    func getRandomUICollor(){
        let listOfUIColors: [Color] = [.blue, .green, .yellow, .orange, .red, .purple]
        let randomIndex: Int = Int.random(in: 0...listOfUIColors.count-1)
        randomUIColor = listOfUIColors [randomIndex]
    }

    
    
    // actions for clicking the buttons
    func noWasClicked(){
        if topColor == "Blue" && randomUIColor == Color.blue{
            score = 0
        } else if topColor == "Green" && randomUIColor == Color.green{
            score = 0
        } else if topColor == "Yellow" && randomUIColor == Color.yellow{
            score = 0
        } else if topColor == "Orange" && randomUIColor == Color.orange{
            score = 0
        } else if topColor == "Red" && randomUIColor == Color.red{
            score = 0
        } else if topColor == "Purple" && randomUIColor == Color.purple{
            score = 0
        }else{
            score += 10
        }
        
        getRandomCollorTop()
        getRandomCollorBottom()
        getRandomUICollor()
    }
    
    func yesWasClicked(){
        if topColor == "Blue" && randomUIColor == Color.blue{
            score += 10
        } else if topColor == "Green" && randomUIColor == Color.green{
            score += 10
        } else if topColor == "Yellow" && randomUIColor == Color.yellow{
            score += 10
        } else if topColor == "Orange" && randomUIColor == Color.orange{
            score += 10
        } else if topColor == "Red" && randomUIColor == Color.red{
            score += 10
        } else if topColor == "Purple" && randomUIColor == Color.purple{
            score += 10
        }else{
            score = 0
        }
        
        getRandomCollorTop()
        getRandomCollorBottom()
        getRandomUICollor()
    }
    
    func reset(){
        seconds = 30
        score = 0
    }
    
}

struct Easy_Previews: PreviewProvider {
    static var previews: some View {
        Easy(topColor: "black", bottomColor: "red",randomUIColor: .green)
    }
}
