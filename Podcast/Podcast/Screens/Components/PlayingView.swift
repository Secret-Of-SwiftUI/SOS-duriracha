//
//  PlayingView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct PlayingView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 60)
                .foregroundColor(Color(uiColor: UIColor(Color.black.opacity(0.2))))
                .background(.ultraThinMaterial)
            
            HStack {
                Image("headset")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                
                Spacer()
                    .frame(width: 20)
                
                Text("Not Playing")
                    .font(.body)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                })
                
                Spacer()
                    .frame(width: 20)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.triangle.2.circlepath")
                })
            }
            .padding(.horizontal, 20)
        }
        .tint(.white)
    }
}

struct PlayingView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingView()
    }
}
