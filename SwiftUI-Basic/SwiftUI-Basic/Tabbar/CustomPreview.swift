//
//  CustomPreview.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/21.
//

import SwiftUI

struct MyView: View {
    
    var text: String

    var bgColor: Color
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
            Text(text)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .animation(.none)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(text: "안녕", bgColor: .blue)
    }
}
