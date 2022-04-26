//
//  FeaturedChannelView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct FeaturedChannelView: View {
    
    // MARK: - property
    
    var mainImage: String = ""
    var description: String = ""
    
    var body: some View {
        ZStack {
            Image(mainImage)
                .frame(width: 250, height: 350)
                .cornerRadius(10)
            
            VStack {
                Spacer()
                
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(.blue)
                        .opacity(0.3)
                        .frame(height: 80)
                        .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
                    
                    Text(description)
                        .font(.footnote)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
        }
        .frame(width: 250, height: 350)
        .cornerRadius(10)
    }
}

struct FeaturedChannelView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedChannelView()
    }
}
