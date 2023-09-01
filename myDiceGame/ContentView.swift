//
//  ContentView.swift
//  myDiceGame
//
//  Created by Zhiyi Chen on 2/28/22.
//

import SwiftUI

struct GameScreenView: View {
    var body: some View {
        NavigationView {
            VStack {
                DiceGameView()
                    .navigationTitle("Dice Game")
                    //.offset(y: -30)
                HStack(spacing: 50) {
                    NavigationLink(destination: RuleScreenView(), label: {Text("Go to Rule")
                            .bold()
                            .frame(width: 150, height: 40)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                    NavigationLink(destination: AuthorScreenView(), label: {Text("Go to Author")
                            .bold()
                            .frame(width: 150, height: 40)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}
