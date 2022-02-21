//
//  CustomTabbar.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/21.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct CustomTabbar: View {
    @State var index: Index = .one
    @State var largerScale: CGFloat = 1.5
    
    func changeMyView(tabIndex: Index) -> MyView {
        switch index {
        case .one:
            return MyView(text: "홈", bgColor: Color.green)
        case .two:
            return MyView(text: "장바구니", bgColor: Color.purple)
        case .three:
            return MyView(text: "프로필", bgColor: Color.blue)
        }
    }
    
    func changeIconColor(tabIndex: Index) -> Color {
        switch index {
        case .one:
            return Color.green
        case .two:
            return Color.purple
        case .three:
            return Color.blue
        }
    }
    
    func calculateCircleBgPosition(tabIndex: Index, geometry: GeometryProxy) -> CGFloat {
        switch index {
        case .one:
            return -geometry.size.width / 3
        case .two:
            return 0
        case .three:
            return geometry.size.width / 3
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                self.changeMyView(tabIndex: index)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calculateCircleBgPosition(tabIndex: self.index, geometry: geometry), y: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : -10)
                    .foregroundColor(Color.white)
                
                HStack(spacing: 0) {
                    Button(action: {
                        print("홈 버튼 클릭")
                        withAnimation {
                            self.index = .one
                        }
                    }) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.index == .one ? self.largerScale : 1.0)
                            .foregroundColor(self.index == .one ? self.changeIconColor(tabIndex: self.index) : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.index == .one ? -10 : 0)
                    }.background(Color.white)
                    
                    Button(action: {
                        print("카트 버튼 클릭")
                        withAnimation {
                            self.index = .two
                        }
                    }) {
                        Image(systemName: "cart.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.index == .two ? self.largerScale : 1.0)
                            .foregroundColor(self.index == .two ? self.changeIconColor(tabIndex: self.index) : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.index == .two ? -10 : 0)
                    }.background(Color.white)
                    
                    Button(action: {
                        print("프로필 버튼 클릭")
                        withAnimation {
                            self.index = .three
                        }
                    }) {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.index == .three ? self.largerScale : 1.0)
                            .foregroundColor(self.index == .three ? self.changeIconColor(tabIndex: index) : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.index == .three ? -10 : 0)
                    }.background(Color.white)
                }
                // VStack를 넣어서 하는 방법도 있음
                // UIApplictaion 코드 -> 이 핸드폰이 SE거나 8밑이면
                // 0으로 bottom를 잡는 코드
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 100)
                .padding(.top, -25)
                .background(Color.white)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct CustomTabbar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabbar()
    }
}
