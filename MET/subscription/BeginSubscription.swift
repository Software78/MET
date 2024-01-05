//
//  BeginSubscription.swift
//  MET
//
//  Created by Adedola Owen Abaru on 05/01/2024.
//

import SwiftUI

struct BeginSubscription: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .trailing) {
                Button(action: {}){
                    Text("Skip")
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                ZStack{
                    Image("sub")
                        .resizable()
                        .scaledToFill()
                    VStack(alignment: .leading){
                        Spacer()
                        Text("We have an exclusive offer for you.")
                            .font(.custom("Satoshi", size: 24).weight(.bold))
                            .padding(.bottom, 40)
                        NavigationLink(destination: ContinueSubscription()){
                            SigninButton(text: "Start your 14 day free trial")
                        }.padding(.bottom, 24)
                    }.padding()
                }
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    BeginSubscription()
}
