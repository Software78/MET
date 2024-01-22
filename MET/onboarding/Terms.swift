//
//  Terms.swift
//  MET
//
//  Created by Adedola Owen Abaru on 26/12/2023.
//

import SwiftUI

struct Terms: View {
    @State private var agree = false
    @State private var authorize = false
    @State private var gather = false
    @State private var shouldNavigate = false
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Image("note")
                
                    .padding(.all, 83)
                VStack(alignment: .leading){
                    Text("One last step")
                        .font(.custom("Satoshi", size: 24).weight(.bold))
                        .foregroundColor(Colors.grey300.color)
                        .padding(.bottom, 12.0)
                    Text("To finish seting up your account, please agree to the following")
                        .font(.custom("Satoshi", size: 16).weight(.medium))
                        .foregroundColor(Colors.grey300.color)
                }.padding([.leading, .bottom, .trailing], 24.0)
                VStack(alignment: .leading){
                    HStack{
                        Button {
                            agree.toggle()
                        } label: {
                            Image(systemName: agree ? "checkmark.square.fill" : "square")
                        }
                        Text("I'd want to receive MET recipes, workouts, and stress management advice in my inbox.")
                            .font(.custom("Satoshi", size: 13).weight(.medium))
                            .foregroundColor(Colors.grey300.color)
                    }.padding(.bottom, 12.0)
                    HStack{
                        Button {
                            authorize.toggle()
                        } label: {
                            Image(systemName: authorize ? "checkmark.square.fill" : "square")
                        }
                        Text("I agree to the Terms of Service and Privacy Policy of MET.")
                            .font(.custom("Satoshi", size: 13).weight(.medium))
                            .foregroundColor(Colors.grey300.color)
                    }.padding(.bottom, 12.0)
                    HStack{
                        Button {
                            gather.toggle()
                        } label: {
                            Image(systemName: gather ? "checkmark.square.fill" : "square")
                        }
                        Text("I authorize MET to gather and process my health data in order to create my customised program.")
                            .font(.custom("Satoshi", size: 13).weight(.medium))
                            .foregroundColor(Colors.grey300.color)
                    }
                    Spacer()
                    Button(action: {
                        shouldNavigate = agree && authorize
                    }, label: {
                      SigninButton(text: "Agree and continue")
                        
                    })
                    .frame(maxWidth: .infinity)
                    .foregroundColor((agree && authorize) ? .accentColor : Colors.grey500.color)
                    .font(.system(size: 16, weight: .bold))
                    .cornerRadius(8)
                }.padding([.top, .leading, .trailing], 24.0)
            }.navigationDestination(isPresented: $shouldNavigate, destination: {
                Survey()
            })
        }
    }
}

#Preview {
    Terms()
}
