//
//  MyHStack.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct MyHStack: View {
    var body: some View {
        HStack(alignment: .center) {
//            Divider()
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            
//            Image(systemName: "flame.fill")
//                .foregroundColor(.white)
//                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
        }
        .padding()
        .background(Color.gray)
    }
}

struct MyHStack_Previews: PreviewProvider {
    static var previews: some View {
        MyHStack()
    }
}
