//
//  MyVStack.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct MyVStack: View {
    var body: some View {
        VStack(alignment: .trailing ,spacing: 0) {
            Text("신호등")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(.bottom, 20)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green)
        }
        .frame(width: 200)
        .background(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyVStack()
    }
}

