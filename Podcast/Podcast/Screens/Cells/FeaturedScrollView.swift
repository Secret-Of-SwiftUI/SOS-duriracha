//
//  FeaturedScrollView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct FeaturedScrollView: View {
    
    private enum Size {
        static let spacing = 20.0 * 2
    }
    
    // MARK: - properties
    
    let dummyCells: [Featured] = dummyFeatured
    
    var body: some View {
        GeometryReader { proxy in
            TabView {
                ForEach(dummyCells.indices){ index in
                    FeaturedView(featureTitle: dummyCells[index].featureTitle,
                                 title: dummyCells[index].title,
                                 subtitle: dummyCells[index].subtitle,
                                 mainImage: dummyCells[index].mainImage)
                }
            }
            .frame(width: UIScreen.main.bounds.size.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct FeaturedScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedScrollView()
    }
}
