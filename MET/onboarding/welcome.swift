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
    //                ViewThatFits {
                        Spacer()
    //                }
                    ZStack {
                            Rectangle()
                                .fill(Colors.white100.color)
                            .frame(height: 504)
                            .clipShape(.rect(topLeadingRadius: 20, topTrailingRadius: 20))
                        VStack(alignment: .leading){
                            Text("Best Fitness, Exercise, and Stress Management App")
                            Spacer()
                                .frame(height: 12)
                            Text("Create an account to get your customized exercise,diet, and stress management program.")
                            Spacer()
                                .frame(height: 40)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                            })
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Colors.grey300.color)
                            .font(.system(size: 16, weight: .bold))
                            .cornerRadius(8)
                            .border(Colors.grey300.color, width: 1)
                            Spacer()
                                .frame(height: 12)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                            })
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Colors.grey300.color)
                            .font(.system(size: 16, weight: .bold))
                            .cornerRadius(8)
                            .border(Colors.grey300.color, width: 1)
                            Spacer()
                                .frame(height: 12)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                            })
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Colors.grey300.color)
                            .font(.system(size: 16, weight: .bold))
                            .cornerRadius(8)
                            .border(Colors.grey300.color, width: 1)
                            Spacer()
                                .frame(height: 16)
                            HStack(){
                                Rectangle()
                                    .fill(Colors.grey300.color)
                                    .frame(height: 1)
                                    .frame(width: 75)// Adjust height as needed
                                Text("ALREADY HAVE AN ACCOUNT")
                                    
                                Rectangle()
                                    .fill(Colors.grey300.color)
                                    .frame(height: 1)
                                    .frame(width: 75)
                            }.frame(maxWidth: .infinity)
                            Spacer()
                                .frame(height: 16)
                            NavigationLink(destination: Signup()){
                                Button(action: {
                                
                                }, label: {
                                    Text("Signup")
                                })
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Colors.green200.color)
                                .foregroundColor(Colors.white100.color)
                                .font(.system(size: 16, weight: .bold))
                                .cornerRadius(8)
                            }
                        }.padding()
                            .frame(height: 504)
                        }
                    }
            }
        }
    }
}

#Preview {
    Welcome()
}
