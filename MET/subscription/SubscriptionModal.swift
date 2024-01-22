//
//  SubscriptionModal.swift
//  MET
//
//  Created by Adedola Owen Abaru on 08/01/2024.
//

import SwiftUI

enum SubscriptionPlanModeEnum: CaseIterable {
    case Month
    case Year
}

extension SubscriptionPlanModeEnum {
    var formattedMode : String {
        switch self{
        case .Month:
            return "Month"
        case .Year:
            return "Year"
        }
    }
}


struct SubscriptionPlan : Identifiable {
    var id = UUID()
    let name: String
    let price : Double
    var monthlyPrice : Double = 0
    var hasDiscount : Bool = false
    let planMode : SubscriptionPlanModeEnum
}

let subscriptionPlanList : [SubscriptionPlan] = [
    SubscriptionPlan(name: "Month", price: 5.99, planMode: SubscriptionPlanModeEnum.Month),
    SubscriptionPlan(name: "Year", price: 50, monthlyPrice: 5.0 , hasDiscount: true, planMode: SubscriptionPlanModeEnum.Year)
]

struct SubscriptionModal: View {
    @Environment(\.dismiss) var dismiss
    @Binding var shouldNavigate: Bool
    var body: some View {
        
        VStack{
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Colors.green600.color)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 4,
                                bottomLeadingRadius: 4,
                                bottomTrailingRadius: 8,
                                topTrailingRadius: 1
                            )
                        )
                    HStack{
                        Text("MET")
                            .font(.custom("Satoshi", size: 12).weight(.bold))
                            .foregroundColor(Colors.grey500.color)
                            .padding(.horizontal, 8)
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        ZStack {
                            Rectangle()
                                .fill(LinearGradient(colors: [Colors.gradient1.color, Colors.gradient2.color, Colors.gradient3.color], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .clipShape(
                                    .rect(
                                        topLeadingRadius: 8,
                                        bottomLeadingRadius: 1,
                                        bottomTrailingRadius: 8,
                                        topTrailingRadius: 1
                                    )
                                ).frame(maxWidth: 40, maxHeight: 20)
                            Text("PRO")
                                .font(.custom("Satoshi", size: 12).weight(.heavy))
                                .foregroundColor(Colors.white100.color)
                                .padding(.horizontal, 8)
                        }
                    }
                }.frame(maxWidth: 80, maxHeight: 20)
                Spacer()
            }.padding(.bottom, 36)
            Text("Choose a plan")
                .font(.custom("Satoshi", size: 24).weight(.bold))
                .foregroundColor(Colors.grey100.color)
                .padding(.bottom, 24)
            ForEach(subscriptionPlanList){ plan in
                SubscriptionModeComponent(mode: plan)
            }
            Text("*Plan automatically renews annualy until canceled")
                .font(.custom("Satoshi", size: 14).weight(.light))
                .italic()
                .foregroundColor(Colors.grey500.color)
                .padding(.top, 12)
            Spacer()
            Button(action: { 
                dismiss()
                shouldNavigate = true
            }){
                SigninButton(text: "Contine to payment")
            }
            
        }.padding()
        
    }
}

#Preview {
    SubscriptionModal(shouldNavigate: .constant(false))
}


struct SubscriptionModeComponent:View {
    let mode: SubscriptionPlan
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Colors.green600.color, lineWidth: 1)
                .foregroundColor(.white)
            
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 76)
            HStack {
                VStack(alignment: .leading){
                    Text(mode.name)
                        .font(.custom("Satoshi", size: 20).weight(.bold))
                        .foregroundColor(Colors.grey300.color)
                    HStack {
                        Text("$\(mode.price)/\(mode.planMode.formattedMode)")
                            .font(.custom("Satoshi", size: 12).weight(.bold))
                            .foregroundColor(Colors.grey300.color)
                        if(mode.monthlyPrice != 0){
                            Text("$\(mode.monthlyPrice)/Month")
                                .font(.custom("Satoshi", size: 12).weight(.light))
                                .foregroundColor(Colors.grey500.color)
                        }
                    }
                }
                Spacer()
            }.padding(.leading, 16)
            
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}
