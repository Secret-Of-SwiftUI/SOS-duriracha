//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by SHIN YOON AH on 2022/03/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
