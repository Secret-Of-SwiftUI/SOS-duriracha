//
//  ListView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Section(header:
                        Text("오늘 할 일")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    ,footer: Text("footer")) {
                ForEach(1...3, id:\.self) { itemIndex in
                    CardView(icon: "bookmark", title: "책읽기 \(itemIndex)", start: "10 AM", end: "11 PM", bgColor: Color.orange)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header:
                        Text("내일 할 일")
                        .font(.headline)
                        .foregroundColor(Color.black)
            ) {
                ForEach(1...20, id:\.self) { itemIndex in
                    CardView(icon: "bookmark.fill", title: "북마크 \(itemIndex)", start: "10 AM", end: "11 PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
            
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내 목록")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

