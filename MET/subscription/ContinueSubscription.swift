//
//  ContinueSubscription.swift
//  MET
//
//  Created by Adedola Owen Abaru on 05/01/2024.
//

import SwiftUI

struct ContinueSubscription: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Eat well, Get better, Stress less, Stay fit.")
                .font(.custom("Satoshi", size: 24).weight(.bold))
                .padding(.vertical, 12)
            Text("Enjoy MET for 14days all on us")
                .font(.custom("Satoshi", size: 16).weight(.medium))
                .padding(.bottom, 32)
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContinueSubscription()
}
