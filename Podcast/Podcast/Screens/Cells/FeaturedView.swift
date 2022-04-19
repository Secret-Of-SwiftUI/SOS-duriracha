//
//  FeaturedView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct FeaturedView: View {
    
    // MARK: - property
    
    var featureTitle: String = "FEATURED"
    var title: String = ""
    var subtitle: String = ""
    var mainImage: String = "podcast"
    
    var body: some View {
        VStack {
            SectionHeaderView()
                .padding(.horizontal, 5)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(featureTitle)
                    .foregroundColor(.purple)
                    .font(.caption2)
                
                Text(title)
                    .foregroundColor(.white)
                    .font(.title3)
                
                Text(subtitle)
                    .foregroundColor(.gray)
                    .font(.title3)
                
                Spacer()
                    .frame(height: 8)
                
                Image(mainImage)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(height: 180)
            }
        }
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
