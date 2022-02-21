//
//  ViewModifierView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct ViewModifierView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
                .modifier(MyRoundedText())
            
            Text("Hello, world!")
                .myRoundedTextStyle()
            
            Image(systemName: "person.crop.circle.fill")
                .myRoundedTextStyle()
            
            Rectangle()
                .frame(width: 100, height: 100)
                .myRoundedTextStyle()
        }
    }
}

struct MyRoundedText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .background(Color.yellow)
            .cornerRadius(25)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 10).foregroundColor(.green))
    }
}

extension View {
    func myRoundedTextStyle() -> some View {
        modifier(MyRoundedText())
    }
}

struct ViewModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierView()
    }
}
