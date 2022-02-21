//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button("우왕", action: {
            print("우왕!")
        })
        
        VStack(spacing: 20) {
            Button(action: {
                print("button clicked!")
            }, label: {
                Text("탭")
                    .fontWeight(.black)
            }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))

            Button(action: {
                print("button clicked!")
            }, label: {
                Text("롱클릭")
                    .fontWeight(.black)
            }).buttonStyle(MyButtonStyle(color: Color.green, type: .long))

            Button(action: {
                print("button clicked!")
            }, label: {
                Text("회전버튼")
                    .fontWeight(.black)
            }).buttonStyle(MyRotateButtonStyle(color: Color.pink))

            Button(action: {
                print("button clicked!")
            }, label: {
                Text("축소버튼")
                    .fontWeight(.black)
            }).buttonStyle(MySmallerButtonStyle(color: Color.orange))

            Button(action: {
                print("button clicked!")
            }, label: {
                Text("블러버튼")
                    .fontWeight(.black)
            }).buttonStyle(MyBlurButtonStyle(color: Color.black))
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonView()
            ButtonView()
            ButtonView()
        }
    }
}
