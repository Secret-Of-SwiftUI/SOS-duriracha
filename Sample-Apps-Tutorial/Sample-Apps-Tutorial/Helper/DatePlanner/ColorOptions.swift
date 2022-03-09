//
//  ColorOptions.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/09.
//

import SwiftUI

struct ColorOptions {
    static var all: [Color] = [
        .primary,
        .gray,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .cyan,
        .indigo,
        .purple
    ]
    
    static var `default`: Color = Color.primary
    
    static func random() -> Color {
        if let element = ColorOptions.all.randomElement() {
            return element
        } else {
            return .primary
        }
    }
}
