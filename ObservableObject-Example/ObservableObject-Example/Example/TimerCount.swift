//
//  TimerCount.swift
//  ObservableObject-Example
//
//  Created by SHIN YOON AH on 2022/03/01.
//

import SwiftUI

class TimerCount: ObservableObject {
    @Published private(set) var count: Int = 0
    
    init() {
        print(#function)
    }
    
    func plus() {
        count += 1
    }
}
