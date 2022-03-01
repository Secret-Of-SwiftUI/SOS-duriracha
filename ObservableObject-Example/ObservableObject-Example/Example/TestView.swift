//
//  TestView.swift
//  ObservableObject-Example
//
//  Created by SHIN YOON AH on 2022/03/01.
//

import SwiftUI

struct TestView: View {
    @State private var isUpdate: Bool = false
    
    var body: some View {
        VStack {
            CountView(timer: TimerCount())
            .background(isUpdate ? Color.red : Color.orange)
            
            Divider()
                
            Button("update") {
                isUpdate.toggle()
            }
        }
    }
}

struct CountView: View {
//    @ObservedObject var timer: TimerCount
    @StateObject var timer: TimerCount
    
    var body: some View {
        VStack {
            Text("\(timer.count)")
            Button("plus") {
                timer.plus()
            }
        }
    }
}
