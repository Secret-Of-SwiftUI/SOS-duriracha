//
//  FeaturedChannelsScrollView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct FeaturedChannelsScrollView: View {
    
    let dummyCells: [ChannelInfo] = dummyInfo
    
    var body: some View {
        VStack {
            SectionHeaderView(title: "Featured Channels",
                              hasMoreContent: false)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(dummyCells.indices){ index in
                        FeaturedChannelView(mainImage: dummyCells[index].mainImage, description: dummyCells[index].info)
                    }
                }
            }
        }
    }
}

struct FeaturedChannelsScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedChannelsScrollView()
    }
}
