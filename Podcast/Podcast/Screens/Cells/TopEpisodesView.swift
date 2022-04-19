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
                    VStack {
                        EpisodesView(title: "357회 - 맹신주의\n게으른자들을 위한 자가관리", author: "Wedensday", rank: 1)
                        EpisodesView(title: "357회 - 맹신주의\n게으른자들을 위한 자가관리", author: "Wedensday", rank: 1)
                        EpisodesView(title: "357회 - 맹신주의\n게으른자들을 위한 자가관리", author: "Wedensday", rank: 1)
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
