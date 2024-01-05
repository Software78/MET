//
//  SignIn.swift
//  MET
//
//  Created by Adedola Owen Abaru on 05/01/2024.
//

import SwiftUI

struct SignIn: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("Sign in")
                .multilineTextAlignment(.leading)
                .font(.custom("Satoshi", size: 24).weight(.bold))
                .padding(.bottom, 12)
            Text("Log in to your MET account")
                .multilineTextAlignment(.leading)
                .font(.custom("Satoshi", size: 16).weight(.medium))
                .padding(.bottom, 48)
            Text("Email Address")
                .multilineTextAlignment(.leading)
                .font(.custom("Satoshi", size: 14).weight(.medium))
                .padding(.bottom, 8)
            TextField("email",text: $email)
                .keyboardType(.emailAddress)
                .textFieldStyle(.roundedBorder)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Colors.grey300.color))
                .frame(height:44)
                .padding(.bottom, 16)
            Text("Password")
                .multilineTextAlignment(.leading)
                .font(.custom("Satoshi", size: 14).weight(.medium))
                .padding(.bottom, 8)
            SecureField("********",text: $email)
                .textFieldStyle(.roundedBorder)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Colors.grey300.color))
                .frame(height:44)
                .padding(.bottom, 16)
            Text("Forgot Password?")
                .font(.custom("Satoshi", size: 11).weight(.bold))
                .foregroundColor(Colors.grey500.color)
                .multilineTextAlignment(.trailing)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, 40.0)
            NavigationLink(destination: BeginSubscription()){
                SigninButton()
            }
            .padding(.bottom, 24)
            HStack(alignment: .center){
                Rectangle()
                    .fill(Colors.grey300.color)
                    .frame(height: 1.5)
                    .frame(width: 100)
                Text("OR")
                    .foregroundColor(Colors.grey300.color)
                    .font(
                        Font.custom("Satoshi", size: 11)
                            .weight(.bold)
                    )
                Rectangle()
                    .fill(Colors.grey300.color)
                    .frame(height: 1.5)
                    .frame(width: 100)
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 16)
            BorderedButton(action: {}, text: "Continue with Google", icon: "google")
                .padding(.bottom, 12)
            BorderedButton(action: {}, text: "Continue with Apple", icon: "apple")
                .padding(.bottom, 12)
            Spacer()
        }
        .padding()
        .ignoresSafeArea(.keyboard)
    }
}

#Preview {
    SignIn()
}
