//
//  Signup.swift
//  MET
//
//  Created by Adedola Owen Abaru on 25/12/2023.
//

import SwiftUI

struct Signup: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Signup with Email")
                    .font(.custom("Satoshi", size: 24).weight(.bold))
                    .foregroundColor(Colors.grey300.color)
                Spacer()
                    .frame(height: 12)
                Text("Create an account to get your customized exercise, diet, and stress management program.")
                    .font(.custom("Satoshi", size: 16).weight(.medium))
                    .foregroundColor(Colors.grey300.color)
                Spacer()
                    .frame(height: 24)
                Text("Name")
                    .font(.custom("Satoshi", size: 14).weight(.medium))
                    .foregroundColor(Colors.grey300.color)
                Spacer()
                    .frame(height: 8)
                TextField("Name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(/*@START_MENU_TOKEN@*/.alphabet/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 16)
                Text("Email Address")
                    .font(.custom("Satoshi", size: 14).weight(.medium))
                    .foregroundColor(Colors.grey300.color)
                Spacer()
                    .frame(height: 8)
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(/*@START_MENU_TOKEN@*/.emailAddress/*@END_MENU_TOKEN@*/)
                    
                Spacer()
                    .frame(height: 16)
                Text("Password")
                    .font(.custom("Satoshi", size: 14).weight(.medium))
                    .foregroundColor(Colors.grey300.color)
                Spacer()
                    .frame(height: 8)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                NavigationLink(destination: Terms()){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Signup")
                    })
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Colors.green200.color)
                    .foregroundColor(Colors.white100.color)
                    .font(.system(size: 16, weight: .bold))
                    .cornerRadius(8)
                }
            }.padding(24)
        }
    }
    
    
    private func validateUsername   (_ username: String) -> Bool {
      
           return !username.isEmpty && username.count >= 5
        
        }
}



#Preview {
    Signup()
}
