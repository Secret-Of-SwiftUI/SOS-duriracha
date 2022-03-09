//
//  Sample_Apps_TutorialApp.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/08.
//

import SwiftUI

@main
struct Sample_Apps_TutorialApp: App {
    
    @StateObject var dataModel = DataModel()
    @StateObject private var eventData = EventData()
    @StateObject private var fetcher = PandaCollectionFetcher()
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            
//            NavigationView {
//                EventList()
//                Text("Select an Event")
//                    .foregroundColor(.secondary)
//            }
//            .environmentObject(eventData)
            
//            NavigationView {
//                ImageGridView()
//            }
//            .environmentObject(dataModel)
//            .navigationViewStyle(.stack)
            
            NavigationView {
                MemeCreator()
                    .environmentObject(fetcher)
            }
            .navigationViewStyle(.stack)
        }
    }
}
