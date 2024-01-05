//
//  Welcome.swift
//  MET
//
//  Created by Adedola Owen Abaru on 25/12/2023.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("welcome")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea([.top])
                VStack {
                    Spacer()
                    ZStack {
                        Rectangle()
                            .fill(Colors.white100.color)
                            .frame(height: 504)
                            .clipShape(.rect(topLeadingRadius: 32, topTrailingRadius: 32))
                        VStack(alignment: .leading) {
                            Text("Best Fitness, Exercise, and Stress Management App")
                                .font(
                                    Font.custom("Satoshi", size: 24)
                                        .weight(.bold)
                                )
                            Spacer()
                                .frame(height: 12)
                            Text("Create an account to get your customized exercise, diet, and stress management program.")
                                .foregroundColor(Colors.grey200.color)
                                .font(
                                    Font.custom("Satoshi", size: 16)
                                        .weight(.medium)
                                )
                            Spacer()
                            BorderedButton(action: {}, text: "Signup with Google", icon: "google")
                            Spacer()
                                .frame(height: 12)
                            BorderedButton(action: {}, text: "Signup with Apple", icon: "apple")
                            Spacer()
                                .frame(height: 12)
                            NavigationLink(destination: Signup()){
                                BorderedButton(action: {}, text: "Signup with Email", icon: "email")
                            }
                            Spacer()
                            HStack(alignment: .center){
                                Rectangle()
                                    .fill(Colors.grey300.color)
                                    .frame(height: 1.5)
                                    .frame(width: 75)
                                Text("ALREADY HAVE AN ACCOUNT")
                                    .foregroundColor(Colors.grey300.color)
                                    .font(
                                        Font.custom("Satoshi", size: 11)
                                            .weight(.bold)
                                    )
                                Rectangle()
                                    .fill(Colors.grey300.color)
                                    .frame(height: 1.5)
                                    .frame(width: 75)
                            }.frame(maxWidth: .infinity)
                            Spacer()
                            NavigationLink(destination: SignIn()){
                                SigninButton()
                            }
                        } .padding(.all, 24)
                    }.frame(height: 504)
                }
            }
        }
    }
}

#Preview {
    Welcome()
}


struct RoundedAuthButton: View {
    var action: ()->Void
    var text: String
    var icon: String
    var body: some View {
        Button(action: action, label: {
            HStack{
                Image(icon)
                Spacer()
                    .frame(width: 10)
                Text(text)
                    .foregroundColor(Colors.grey300.color)
                    .font(Font.custom("Satoshi", size: 16)
                        .weight(.bold))
            }
            .padding()
        })
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .border(Colors.grey300.color)
        
    }
}


struct SigninButton: View {
    var text : String = "Sign in"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .background(Colors.green200.color)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(text)
                .foregroundColor(Colors.white100.color)
                .font(Font.custom("Satoshi", size: 16)
                    .weight(.bold))
        }
    }
}


struct BorderedButton:View {
    var action: ()->Void
    var text: String
    var icon: String
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Colors.grey300.color, lineWidth: 1)
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                HStack{
                    Image(icon)
                    Spacer()
                        .frame(width: 10)
                    Text(text)
                        .foregroundColor(Colors.grey300.color)
                        .font(Font.custom("Satoshi", size: 16)
                            .weight(.bold))
                }
            }
    }
}
