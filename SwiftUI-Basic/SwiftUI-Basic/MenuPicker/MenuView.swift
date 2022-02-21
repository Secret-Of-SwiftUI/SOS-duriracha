//
//  MenuView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

let myPets = ["멍멍이 🐶", "야옹이 🐱", "친칠라 🐹"]

struct MenuView: View {
    @State private var shouldShowAlert: Bool = false
    @State private var myText: String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size: 60))
                    .bold()
                Text("우측 상단에 땡땡땡을 눌러주세요!")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Spacer()
            }
            .padding()
            .navigationTitle("하이요")
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction, content:  {
                    Menu {
                        // 멀티 클로징 가능(SwiftUI update)
                        Button(action: {
                            // 액션
                            shouldShowAlert = true
                            myText = "오늘도 빡코딩!"
                        }, label: {
                            // 라벨
                            Label("오늘도 빡코딩!", systemImage: "flame.fill")
                        })
                        
                        Button {
                            shouldShowAlert = true
                            myText = "집에서 쉬는 날!"
                        } label : {
                            Label("집에서 쉬는 날!", systemImage: "house.fill")
                        }
                        
                        Section {
                            Button {
                            } label: {
                                Label("새 파일 만들기", systemImage: "doc")
                            }
                            
                            Button {
                            } label: {
                                Label("새 폴더 만들기", systemImage: "folder")
                            }
                        }
                        
                        Section {
                            Button {
                            } label: {
                                Label("파일 모두 삭제", systemImage: "trash")
                            }
                        }
                        
                        Picker(selection: $selected, label:
                                Text("애완동물 선택")) {
                            ForEach(myPets.indices, id: \.self, content: { id in
                                Text("\(myPets[id])").tag(id)
                            })
                        }
                    } label: {
                        Circle()
                            .foregroundColor(Color.init(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .frame(width: 50, height: 50)
                            .overlay(
                                Label("더보기", systemImage: "ellipsis")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                            )
                    } // 메뉴
                })
            }) // toolbar
            .alert(isPresented: $shouldShowAlert, content: {
                Alert(title: Text("알림"), message: Text(myText), dismissButton: .default(Text("확인")))
            })
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
