//
//  StartButtonView.swift
//  StateAndDataFlow_AB
//
//  Created by Anton Boev on 17.12.2022.
//

import SwiftUI

struct StartButtonView: View {
    @ObservedObject var timer: TimeCounter
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(timer: TimeCounter())
    }
}
