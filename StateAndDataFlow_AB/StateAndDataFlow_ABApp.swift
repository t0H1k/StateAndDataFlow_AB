//
//  StateAndDataFlow_ABApp.swift
//  StateAndDataFlow_AB
//
//  Created by Anton Boev on 17.12.2022.
//

import SwiftUI

@main
struct StateAndDataFlow_ABApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
