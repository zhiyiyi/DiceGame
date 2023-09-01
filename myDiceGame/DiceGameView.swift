//
//  DiceGameView.swift
//  myDiceGame
//
//  Created by Zhiyi Chen on 3/5/22.
//

import SwiftUI

struct DiceGameView: View {
    @State private var numberYouNeedtoRoll = 2.0
    @State private var color: Color = .black
    @State private var numberDice1 = 0
    @State private var numberDice2 = 0
    @State private var numberDice3 = 0
    @State private var numberDice4 = 0
    @State private var player1Score = 0
    @State private var player2Score = 0
    @State private var round = 0
    @State private var showAlert: Bool = false
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Which number you want to bet?")
                Slider(value: $numberYouNeedtoRoll, in: 2...12, step: 1.0, onEditingChanged: {(_) in color = .blue}, minimumValueLabel: Text("2"), maximumValueLabel: Text("12"), label: {Text("Slider")}
                )
                    .accentColor(.black)
                Text("\(Int(numberYouNeedtoRoll))")
                    .foregroundColor(color)
            }
            //.padding()
            
            VStack {
                HStack(spacing: 50) {
                    Text("Player 1")
                    Button(action: {
                        numberDice1 = Int.random(in: 1...6)
                        numberDice2 = Int.random(in: 1...6)
                        if (numberDice1 + numberDice2 == Int(numberYouNeedtoRoll)) {
                            player1Score+=1
                        }
                        round+=1
                    }, label: {
                        Text("Roll")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        //.foregroundColor(.white)
                        //.background(.black)
                    })
                    Text("Score:\(player1Score)")
                }
                
                HStack {
                    Image("dice\(numberDice1)")
                    Image("dice\(numberDice2)")
                }
                .onTapGesture {
                    numberDice1 = Int.random(in: 1...6)
                    numberDice2 = Int.random(in: 1...6)
                    if (numberDice1 + numberDice2 == Int(numberYouNeedtoRoll)) {
                        player1Score+=1
                    }
                    round+=1
                }
                Text("You rolled \(numberDice1 + numberDice2)")
            }
            //.padding()
            
            VStack {
                HStack(spacing: 50) {
                    Text("Player 2")
                    Button(action: {
                        numberDice3 = Int.random(in: 1...6)
                        numberDice4 = Int.random(in: 1...6)
                        if (numberDice3 + numberDice4 == Int(numberYouNeedtoRoll)) {
                            player2Score+=1
                        }
                        round+=1
                    }) {Text("Roll")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                    }
                    Text("Score:\(player2Score)")
                }
                HStack {
                    Image("dice\(numberDice3)")
                    Image("dice\(numberDice4)")
                }
                .onTapGesture {
                    numberDice3 = Int.random(in: 1...6)
                    numberDice4 = Int.random(in: 1...6)
                    if (numberDice3 + numberDice4 == Int(numberYouNeedtoRoll)) {
                        player2Score+=1
                    }
                    round+=1
                }
                Text("You rolled \(numberDice3 + numberDice4)")
            }
            //.padding()
            
            Text("Round: \(round)")
                .fontWeight(.bold)
                .foregroundColor(.blue)
            Button("Start Over") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Do you really want to start over?"), message: nil, primaryButton: .cancel(), secondaryButton: .destructive(Text("Yes"), action: {
                    numberYouNeedtoRoll = 2.0
                    numberDice1 = 1
                    numberDice2 = 1
                    numberDice3 = 1
                    numberDice4 = 1
                    player1Score = 0
                    player2Score = 0
                    round = 0
                }))
            })
        }
    }
}

struct DiceGameView_Previews: PreviewProvider {
    static var previews: some View {
        DiceGameView()
            .previewInterfaceOrientation(.portrait)
    }
}
