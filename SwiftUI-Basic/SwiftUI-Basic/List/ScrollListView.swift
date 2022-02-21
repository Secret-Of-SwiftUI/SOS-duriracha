//
//  ScrollListView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct ScrollListView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing: 0) {
                    ScrollView {
                        VStack {
                            CardView(icon: "tray.fill", title: "집청소", start: "10 AM", end: "11 AM", bgColor: .pink)
                            CardView(icon: "tray.fill", title: "운동하기", start: "10 AM", end: "11 AM", bgColor: .gray)
                            CardView(icon: "tray.fill", title: "마트 장보기", start: "10 AM", end: "11 AM", bgColor: .blue)
                            CardView(icon: "tray.fill", title: "게임하기", start: "10 AM", end: "11 AM", bgColor: .orange)
                        }
                        .padding()
                    }
                }
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                    )
                    .padding(10)
                    .shadow(radius: 20)
            } // ZStack
            .navigationBarTitle("정대리 할 일목록", displayMode: .large)
            .navigationBarItems(leading: NavigationLink(destination: ButtonView()) {
                Image(systemName: "line.horizontal.3")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
            }, trailing:
                NavigationLink(
                    destination: TextView()) {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
            )
        } // NavigationView
    }
}

struct ScrollListView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollListView()
    }
}
