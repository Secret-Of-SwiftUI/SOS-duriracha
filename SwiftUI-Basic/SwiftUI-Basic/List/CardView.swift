//
//  CardView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct CardView: View {
    // 매개변수를 여기다가 선언해주기
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20) {
            // Image 크기 조정은 font 사이즈로
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            
            VStack(alignment: .leading, spacing: 0) {
                Rectangle().frame(height: 0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
        }
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(icon: "bookmark", title: "책읽기", start: "10 AM", end: "11 PM", bgColor: Color.orange)
    }
}
