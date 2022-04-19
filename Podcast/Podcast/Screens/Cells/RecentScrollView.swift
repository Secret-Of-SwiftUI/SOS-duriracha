//
//  RecentScrollView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct RecentScrollView: View {
    
    // MARK: - property
    
    private let dummyCells: [Recent] = dummyRecent
    
    var body: some View {
        VStack {
            SectionHeaderView(title: "New & Noteworthy",
                              hasMoreContent: true)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(dummyCells.indices){ index in
                        RecentView(mainImage: dummyCells[index].mainImage,
                                   title: dummyCells[index].title,
                                   author: dummyCells[index].author)
                    }
                }
            }
        }
    }
}

struct RecentScrollView_Previews: PreviewProvider {
    static var previews: some View {
        RecentScrollView()
    }
}
