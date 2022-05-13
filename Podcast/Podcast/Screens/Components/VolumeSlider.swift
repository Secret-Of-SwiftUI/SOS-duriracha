//
//  VolumeSlider.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/05/13.
//

import SwiftUI

struct VolumeSlider: View {
    
    private enum Size {
        static let maxTime: Double = 1
    }
    
    // MARK: - property
    
    @State private var playTime: Double = 0.5
    
    var body: some View {
        HStack(spacing: 5) {
            Slider(value: $playTime, in: 0...Size.maxTime, step: 0.1, minimumValueLabel: Image(systemName: "speaker.fill"), maximumValueLabel: Image(systemName: "speaker.wave.3.fill"), label: {})
                .tint(Color.init(uiColor: .systemGray3))
                .foregroundColor(Color.init(uiColor: .systemGray3))
        }
    }
}

struct VolumeSlider_Previews: PreviewProvider {
    static var previews: some View {
        VolumeSlider()
    }
}
