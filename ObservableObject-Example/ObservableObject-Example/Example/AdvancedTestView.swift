//
//  AdvancedTestView.swift
//  ObservableObject-Example
//
//  Created by SHIN YOON AH on 2022/03/01.
//

import SwiftUI

struct AdvancedTestView: View {
    @State private var isUpdate: Bool = false
    @ObservedObject var viewModel = TimerCount() // 변경부분
    
    var body: some View {
        VStack {
            CountView(timer: viewModel) // 변경부분
                .background(isUpdate ? Color.red : Color.orange)
            
            Divider()
            
            Button("update") {
                isUpdate.toggle()
            }
        }
    }
}
