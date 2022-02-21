//
//  TextFieldView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/21.
//

import SwiftUI

struct TextFieldView: View {
    @State private var inputValue: String = ""
    @State private var secureValue: String = ""
    
    var body: some View {
        VStack(spacing: 6) {
            HStack {
                TextField("사용자 이름", text: $inputValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    
                
//                Button(action: {
//                    self.inputValue = ""
//                } ) {
//                    if inputValue != "" {
//                        Image(systemName: "multiply.circle.fill")
//                            .foregroundColor(Color.gray)
//                    }
//                }
            }
            
            HStack {
                SecureField("비밀번호", text: $secureValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.secureValue = ""
                } ) {
                    if secureValue != "" {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                }
            }.padding(.bottom, 6)
            
            Text("비밀번호 : \(secureValue)")
        }
        // .padding(.horizontal, 30)
        .padding([.leading, .trailing], 30)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
