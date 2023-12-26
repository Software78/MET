//
//  Colors.swift
//  MET
//
//  Created by Adedola Owen Abaru on 25/12/2023.
//

import Foundation
import SwiftUI



enum Colors : String, CaseIterable, Codable {
    case red100 = "red.100"
    case error = "error"
    case red200 = "red.200"
    case white100 = "white.100"
    case green200 = "green.200"
    case grey300 = "grey.300"
    case green600 = "green.600"
}

extension Colors {
    var color: Color {
        switch self {
        case .red100:
            return Color("red.100")
        case .error:
            return Color("error")
        case .red200:
            return Color("red.200")
        case .white100:
            return Color("white.100")
        case .green200:
            return Color("green.200")
        case .grey300:
            return Color("grey.300")
        case .green600:
            return Color("green.600")
        }
    }
}
