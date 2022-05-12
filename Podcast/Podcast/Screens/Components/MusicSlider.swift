//
//  MusicSlider.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/05/12.
//

import SwiftUI

struct MusicSlider: View {
    
    private enum Size {
        static let maxTime: Double = 60 * 4
    }
    
    // MARK: - property
    
    @State private var playTime: Double = 150
    
    var body: some View {
        VStack {
            Slider(value: $playTime, in: 0...Size.maxTime, step: 1)
                .tint(.gray)
                .colorMultiply(.gray)
            
            HStack {
                Text(calculatePlayTime(with: playTime))
                
                Spacer()
                
                Text(calculatePlayTime(with: Size.maxTime))
            }
        }
    }
}

extension MusicSlider {
    private func calculatePlayTime(with time: CGFloat) -> String {
        let min = Int(time / 60)
        let sec = Int(time.truncatingRemainder(dividingBy: 60))
        var timeString = ""
        
        timeString = (sec == 0) ? "\(min):00" : "\(min):\(sec)"
        
        return timeString
    }
}

struct MusicSlider_Previews: PreviewProvider {
    static var previews: some View {
        MusicSlider()
    }
}
