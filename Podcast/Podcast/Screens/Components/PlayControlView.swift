//
//  PlayControlView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/05/13.
//

import SwiftUI

struct PlayControlView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "gobackward.15")
                    .resizable()
                    .frame(width: 27, height: 30)
                    .tint(.white)
            })
            
            Spacer()
                .frame(width: 70)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 30, height: 35)
                    .tint(.white)
            })
            
            Spacer()
                .frame(width: 70)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "goforward.30")
                    .resizable()
                    .frame(width: 27, height: 30)
                    .tint(.white)
            })
        }
    }
}

struct PlayControlView_Previews: PreviewProvider {
    static var previews: some View {
        PlayControlView()
    }
}
