//
//  ContentView.swift
//  StateAndDataFlow_AB
//
//  Created by Anton Boev on 17.12.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, ___")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            StartButtonView(timer: timer)
            Spacer()
            LogOutButtonView(action: logOut)
            Spacer()
        }
    }
    
    private func logOut() {
        userManager.isRegister.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


