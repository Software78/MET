//
//  Colors.swift
//  MET
//
//  Created by Adedola Owen Abaru on 25/12/2023.
//

import Foundation
import SwiftUI



enum Colors :  CaseIterable  {
    case red100
    case error
    case red200
    case white100
    case green200
    case grey300
    case green600
    case grey100
    case grey200
    case grey500
    case gradient1
    case gradient2
    case gradient3
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
        case .grey200:
            return Color("grey.200")
        case .grey500:
            return Color("grey.500")
        case .gradient1:
            return Color("gradient1")
        case .gradient2:
            return Color("gradient2")
        case .gradient3:
            return Color("gradient3")
        case .grey100:
            return Color("grey.100")
        }
    }
}
