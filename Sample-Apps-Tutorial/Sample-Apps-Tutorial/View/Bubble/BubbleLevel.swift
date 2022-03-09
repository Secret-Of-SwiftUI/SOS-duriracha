//
//  BubbleLevel.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/09.
//

import SwiftUI

struct BubbleLevel: View {
    @EnvironmentObject var detector: MotionDetector
    
    let range = Double.pi
    let levelSize: CGFloat = 300
    
    var bubbleXPosition: CGFloat {
        let zeroBasedRoll = detector.roll + range / 2
        let rollAsFraction = zeroBasedRoll / range
        return rollAsFraction * levelSize
    }
    
    var bubbleYPosition: CGFloat {
        let zeroBasedPitch = detector.pitch + range / 2
        let pitchAsFraction = zeroBasedPitch / range
        return pitchAsFraction * levelSize
    }
    
    var verticalLine: some View {
        Rectangle()
            .frame(width: 0.5, height: 40)
    }
    
    var horizontalLine: some View {
        Rectangle()
            .frame(width: 40, height: 0.5)
    }
    
    var body: some View {
        Circle()
            .foregroundStyle(Color.secondary.opacity(0.25))
            .frame(width: levelSize, height: levelSize)
            .overlay(
                ZStack {
                    Circle()
                        .foregroundColor(.accentColor)
                        .frame(width: 50, height: 50)
                        .position(x: bubbleXPosition,
                                  y: bubbleYPosition)
                    
                    Circle()
                        .stroke(lineWidth: 0.5)
                        .frame(width: 20, height: 20)
                    verticalLine
                    horizontalLine
                    
                    verticalLine
                        .position(x: levelSize / 2, y: 0)
                    verticalLine
                        .position(x: levelSize / 2, y: levelSize)
                    horizontalLine
                        .position(x: 0, y: levelSize / 2)
                    horizontalLine
                        .position(x: levelSize, y: levelSize / 2)
                }
            )
    }
}

struct BubbleLevel_Previews: PreviewProvider {
    @StateObject static var motionDetector = MotionDetector(updateInterval: 0.01).started()
    
    static var previews: some View {
        BubbleLevel()
            .environmentObject(motionDetector)
    }
}
