//
//  Survey.swift
//  MET
//
//  Created by Adedola Owen Abaru on 26/12/2023.
//

import SwiftUI

enum SurveyModeEnum  {
    case goal
    case gender
    case heightAndWeight
    case trainingDuration
}

enum GoalEnum {
    case gainWeight
    case glucoseControl
    case improvePhysicalPerformance
    case loseWeight
}

struct Survey: View {
    @State private var surveyMode : SurveyModeEnum = SurveyModeEnum.goal
    var body: some View {
        VStack{
            switch surveyMode {
            case .goal:
                GoalView()
            case .gender:
                GenderView()
            case .heightAndWeight:
                HeightAndWeightView()
            case .trainingDuration:
                TrainingDurationView()
            }
            Button(action: {
                surveyMode=SurveyModeEnum.gender
            }, label: {
                Text("Next")
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(Colors.green200.color)
            .foregroundColor(Colors.white100.color)
            .font(.system(size: 16, weight: .bold))
            .cornerRadius(8)
            .padding(.horizontal)
        }
    
        
        
    }
}


struct GoalView: View{
    var body: some View{
        VStack{
            Image("goal")
            Text("What's your goal?")
                .padding(.vertical, 24.0)
            
            List{
                ForEach(goals){ goal in
                    GoalWidget(goal: goal)
                }
            }
            .listRowSeparator(.hidden)
            .listStyle(.plain)
            
        }
    }
}

struct GenderView: View{
    var body: some View{
        Text("Hello, World!")
    }
}

struct HeightAndWeightView: View{
    var body: some View{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TrainingDurationView: View{
    var body: some View{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GoalWidget: View{
    var goal:Goal
    @State private var toggle = false
    var body: some View{
        
        HStack(alignment: .center) {
            Button {
                toggle.toggle()
            } label: {
                Image(systemName: toggle ? "checkmark.square.fill" : "square")
                    .foregroundColor(Color("AccentColor"))
            }
            Spacer()
                .frame(width: 14)
            VStack(alignment: .leading) {
                Text(goal.title)
                Text(goal.subtitle)
            }
            Spacer()
        }
        .padding(.all, 16.0)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(toggle ? Colors.green600.color : Colors.white100.color)
        .cornerRadius(4)
        .border(Colors.green600.color)
    }
}

#Preview {
    Survey()
}


let goals : [Goal] = [
    Goal(title: "Gain weight", subtitle: "Build muscle and increase strength"),
    Goal(title: "Glucose control", subtitle: "Take time to connect and refuel"),
    Goal(title: "Improve physical performance", subtitle: "Take time to connect and refuel"),
    Goal(title: "Lose weight", subtitle: "Get motivated and reduce mass")
]


struct Goal : Identifiable, Hashable {
    var title: String
    var subtitle: String
    var isChecked: Bool = false
    let id = UUID()
}
