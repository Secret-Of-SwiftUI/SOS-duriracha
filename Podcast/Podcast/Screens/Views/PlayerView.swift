//
//  PlayerView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/05/12.
//

import SwiftUI

struct PlayerView: View {
    
    private enum Size {
        static let spacing: CGFloat = 80
    }
    
    var body: some View {
        ZStack {
            Color(uiColor: .black.withAlphaComponent(0.9))
            
            VStack {
                Image("cat")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width - Size.spacing * 2, height: UIScreen.main.bounds.size.width - Size.spacing * 2)
                    .cornerRadius(15)
                
                MusicSlider()
                    .padding(.top, 30)
                    .padding(.horizontal, 30)
                
                titleView
                    .padding(.top)
            }
        }
    }
}

extension PlayerView {
    var titleView: some View {
        VStack {
            Text("Cat is Cute")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("All Ears English Podcast - May 2, 2022")
                .font(.title2)
                .foregroundColor(.purple)
                .padding(.horizontal, 10)
                .lineLimit(1)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
