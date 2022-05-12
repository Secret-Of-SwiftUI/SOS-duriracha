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
        Image("cat")
            .resizable()
            .frame(width: UIScreen.main.bounds.size.width - Size.spacing * 2, height: UIScreen.main.bounds.size.width - Size.spacing * 2)
            .cornerRadius(15)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
