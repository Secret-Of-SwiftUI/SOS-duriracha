//
//  MyZStack.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct MyZStack: View {
    var body: some View {
        ZStack {
            // 중첩구조 위에서부터 아래로
            // 윗부분이 제일 아래 Ground
            // zIndex(0) 기존과 동일
            // 올라갈 수록 같은 층끼리 겹침
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.red)
                .zIndex(1)
                .offset(y: 100)
                .padding(.bottom, 100)
            
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color.yellow)
                .zIndex(1)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green)
                .zIndex(1)

        }
    }
}

struct MyZStack_Previews: PreviewProvider {
    static var previews: some View {
        MyZStack()
    }
}
