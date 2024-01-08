//
//  ContinueSubscription.swift
//  MET
//
//  Created by Adedola Owen Abaru on 05/01/2024.
//

import SwiftUI

struct ContinueSubscription: View {
    @State private var isShowingModal = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("Eat well, Get better, Stress less, Stay fit.")
                .font(.custom("Satoshi", size: 24).weight(.bold))
                .padding(.vertical, 12)
            Text("Enjoy MET for 14days all on us")
                .font(.custom("Satoshi", size: 16).weight(.medium))
                .padding(.bottom, 32)
            HStack{
                Spacer()
                Text("Free")
                    .font(.custom("Satoshi", size: 12).weight(.bold))
                    .foregroundColor(Colors.grey500.color)
                Text("Pro")
                    .font(.custom("Satoshi", size: 12).weight(.bold))
                    .foregroundColor(Colors.grey500.color)
            }
            ForEach(subFeaturesList.indices){ index in
                SubFeatureComponent(feature: subFeaturesList[index], isGreen: index % 2 == 0 )
                    .frame(height: 40)
            }
            Spacer()
            HStack {
                Spacer()
                Text("*Get over 14 days of free trial")
                    .font(.custom("Satoshi", size: 12).weight(.medium))
                    .foregroundColor(Colors.grey500.color)
                    .italic()
                    .padding(.bottom, 12)
                Spacer()
            }
            Button(action: {isShowingModal = !isShowingModal}){
                CustomButton(text: "Choose a plan")
            }
            .sheet(isPresented: $isShowingModal) {
                SubscriptionModal()
                    .presentationDetents([.medium])
            }
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContinueSubscription()
}



struct SubFeatureComponent : View {
    var feature: SubscriptionFeatures
    var isGreen: Bool
    var body: some View {
        ZStack {
            Rectangle()
                .fill(isGreen ? Colors.green200.color.opacity(0.05) : .white)
            HStack{
                Text(feature.title)
                    .font(.custom("Satoshi", size: 14).weight(.medium))
                Spacer()
                Image( feature.free ? "enabled" : "disabled" )
                    .padding(.leading, 12)
                Image("enabled")
            }
        }
    }
}


struct SubscriptionFeatures : Identifiable {
    let title : String
    var free : Bool = false
    let pro : Bool = true
    var id  = UUID()
}

let subFeaturesList : [SubscriptionFeatures] = [
    SubscriptionFeatures(title: "Health survey", free: true),
    SubscriptionFeatures(title: "Recommendations exercises", free: true),
    SubscriptionFeatures(title: "Recommendations diet"),
    SubscriptionFeatures(title: "Recommendations to lower stress"),
    SubscriptionFeatures(title: "Integration of stress measurement with elastic band"),
    SubscriptionFeatures(title: "Measurement metabolism(Second phase)"),
    SubscriptionFeatures(title: "Chat and video call for nutrition appointments or with the fitness coach.")
]

struct CustomButton: View {
    var text : String
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
