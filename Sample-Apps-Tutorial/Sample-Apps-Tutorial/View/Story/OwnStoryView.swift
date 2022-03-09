//
//  OwnStoryView.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/09.
//

import SwiftUI

struct OwnStoryView: View {
    var body: some View {
        NavigationView {
            StoryPageView(story: story, pageIndex: 0)
        }
        .navigationViewStyle(.stack)
    }
}

struct OwnStoryView_Previews: PreviewProvider {
    static var previews: some View {
        OwnStoryView()
    }
}
