//
//  RegisterView.swift
//  StateAndDataFlow_AB
//
//  Created by Anton Boev on 17.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var characterCount = 0
    @State private var buttonDisabled = true
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                TextField("Enter your name...", text: $name)
                Text(characterCount.formatted())
                    .onChange(of: name.count) { characterCount = $0 }
                    .foregroundColor(characterCount < 3 ? .red : .green)
            }
            .multilineTextAlignment(.center)
            .padding(16)
            
            Button(action: registerUser) {
                HStack {
                    Image(
                        systemName: characterCount < 3 ?
                        "checkmark.circle.fill" : "checkmark.circle"
                    )
                    Text("OK")
                }
                .foregroundColor(characterCount < 3 ? .gray : .blue)
                .disabled(buttonDisabled)

            }
        }
    }
    private func registerUser() {
        if characterCount > 2 {
            userManager.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
