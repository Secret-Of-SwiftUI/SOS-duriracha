//
//  TopEpisodesView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct TopEpisodesView: View {
    
    // MARK: - property
    
    private let dummyCells: [Recent] = dummyRecent
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 10)
            
            SectionHeaderView(title: "Top Episodes",
                              hasMoreContent: true)
            
            GeometryReader { proxy in
                TabView {
                    ForEach(dummyCells.indices){ index in
                        if index % 3 == 0 {
                            VStack {
                                EpisodesView(title: dummyCells[index].title, author: dummyCells[index].author, rank: index)
                                EpisodesView(title: dummyCells[index + 1].title, author: dummyCells[index + 1].author, rank: index + 1)
                                EpisodesView(title: dummyCells[index + 2].title, author: dummyCells[index + 2].author, rank: index + 2)
                            }
                            .padding(.horizontal, 10)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.size.width)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
        }
    }
}

struct TopEpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        TopEpisodesView()
    }
}
