//
//  PickerView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct PickerView: View {
    @State private var selectionValue = 0
    
    private let myColorArray = ["레드", "그린", "블루"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
//        Picker("Picker", selection: $selectionValue, content: {
//            Text("하하").tag(0)
//            Text("호호").tag(1)
//            Text("껄껄").tag(2)
//        })
        
        VStack(alignment: .center) {
            Circle()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(self.changeColor(index: selectionValue))
            
            Text("세그먼트 value: \(selectionValue)")
            Text("선택된 색깔: \(myColorArray[selectionValue])")
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            }).pickerStyle(SegmentedPickerStyle())
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
                .frame(width: 50, height: 100)
                .clipped()
                .padding(10)
                .border(self.changeColor(index: selectionValue), width: 10)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
