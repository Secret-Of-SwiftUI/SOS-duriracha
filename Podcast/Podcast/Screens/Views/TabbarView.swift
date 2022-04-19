//
//  TabbarView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ListenNowView()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Listen Now")
                }
                .tag(0)
            
            BrowseView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Browse")
                }
                .tag(1)
            
            ListenNowView()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("Library")
                }
                .tag(2)
            
            ListenNowView()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(3)
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
