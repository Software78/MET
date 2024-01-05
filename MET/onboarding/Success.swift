//
//  Success.swift
//  MET
//
//  Created by Adedola Owen Abaru on 05/01/2024.
//

import SwiftUI

struct Success: View {
    @State private var shouldNavigate = false
    var body: some View {
        NavigationView {
            VStack {
                Image("check")
                    .padding(.bottom, 40)
                NavigationLink(destination: BeginSubscription(), isActive: $shouldNavigate) {
                    Text("Saved")
                        .font(.custom("Satoshi", size: 24).weight(.bold))
                }
            }.navigationBarBackButtonHidden()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        shouldNavigate = true
                    }
            }
        }
    }
}

#Preview {
    Success()
}
