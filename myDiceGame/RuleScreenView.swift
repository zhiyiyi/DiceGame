//
//  RuleScreenView.swift
//  myDiceGame
//
//  Created by Zhiyi Chen on 3/5/22.
//

import SwiftUI

struct RuleScreenView: View {
    var body: some View {
        Text("Choose a number and roll the dice!\nYou score a point every time you roll that number. When you roll that number, you get another turn. When that number is not rolled, the turn is over. Mark the tally for each time you roll the number. The first one to a certain score (such as 10 points) wins!\nRemember to set the total point low for young children and higher for older ages :D\nHappy gaming!!!")
            .font(.title3)
            .fontWeight(.semibold)
            .baselineOffset(6)
            //.kerning(0.1)
            .multilineTextAlignment(.trailing)
            .frame(width: 390, height: 400)
            .background(.white)
            .cornerRadius(10)
            .frame(maxWidth: 410, maxHeight: 420, alignment: .center)
            .background(.black)
            .cornerRadius(10)
            .navigationTitle("Rule")
            .offset(y: -30)
    }
}

struct RuleScreenView_Previews: PreviewProvider {
    static var previews: some View {
        RuleScreenView()
    }
}
