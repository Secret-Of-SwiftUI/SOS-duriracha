//
//  Theme.swift
//  Scrumdinger
//
//  Created by SHIN YOON AH on 2022/03/20.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    var mainColor: Color {
        switch self {
        case .bubblegum:
            return .mint
        case .buttercup:
            return .yellow
        case .indigo:
            return .indigo
        case .lavender:
            return .purple
        case .magenta:
            return .red
        case .navy:
            return .blue
        case .orange:
            return .orange
        case .oxblood:
            return .red
        case .periwinkle:
            return .brown
        case .poppy:
            return .blue
        case .purple:
            return .purple
        case .seafoam:
            return .teal
        case .sky:
            return .blue
        case .tan:
            return .green
        case .teal:
            return .teal
        case .yellow:
            return .yellow
        }
    }
    
    var name: String {
        rawValue.capitalized
    }
}
