//
//  AuthorScreenView.swift
//  myDiceGame
//
//  Created by Zhiyi Chen on 3/5/22.
//

import SwiftUI

struct AuthorScreenView: View {
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            Image("avatar2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
            //.cornerRadius(150)
                .clipShape(Circle())
            Text("Zhiyi Chen")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.teal)
            Text("About me: MS Computer Science student at Syracuse university")
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(.teal)
                .italic()
            Button("Website") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Do you want to head to an ouside website?"), primaryButton: .cancel(),
                      secondaryButton: .default(Text("Yes")))
            })
        }
        .navigationTitle("Author")
    }
}

struct AuthorScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorScreenView()
    }
}
