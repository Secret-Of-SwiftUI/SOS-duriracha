//
//  ContentView.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - first tutorial(About Me)
//        TabView {
//            HomeView()
//                .tabItem {
//                    Label("Home", systemImage: "person")
//                }
//
//            StoryView()
//                .tabItem {
//                    Label("Story", systemImage: "book")
//                }
//
//            FavoritesView()
//                .tabItem {
//                    Label("Favorites", systemImage: "star")
//                }
//
//            FunFactsView()
//                .tabItem {
//                    Label("Fun Facts", systemImage: "hand.thumbsup")
//                }
//        }
        
        // MARK: - second tutorial(Choose Your Own Story)
        OwnStoryView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
