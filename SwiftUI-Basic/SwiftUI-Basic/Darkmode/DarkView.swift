//
//  DarkView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct DarkView: View {
    @State fileprivate var shouldShowAlert = false
    
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        ZStack {
            Color.yellow
            
            Theme.myBackgroundColor(forScheme: scheme)
            
            VStack {
                Spacer()
                
                Button(action: {
                    print("버튼이 클릭되었다")
                    shouldShowAlert.toggle()
                }, label: {
                    Text("로그인 하러 가기")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Theme.myButtonBackgroundColor(forScheme: scheme))
                        .cornerRadius(13)
                        .overlay(
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(Color.white, lineWidth: 3)
                        )
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("안녕하세요?!"), message: Text("오늘도 빡코딩하고 계신가요?"), dismissButton: .default(Text("닫기")))
                })
                
                Spacer()
                    .frame(height: 100)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Theme {
    static func myBackgroundColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.white
        let darkColor = Color.black
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
    
    static func myButtonBackgroundColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.blue
        let darkColor = Color.yellow
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
}


struct DarkView_Previews: PreviewProvider {
    static var previews: some View {
        DarkView()
            
    }
}
