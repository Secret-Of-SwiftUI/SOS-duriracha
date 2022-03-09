//
//  EventRow.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/09.
//

import SwiftUI

struct EventRow: View {
    let event: Event
    
    var body: some View {
        HStack {
            Image(systemName: event.symbol)
                .sfSymbolStyling()
                .foregroundStyle(event.color)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(event.title)
                    .fontWeight(.bold)
                
                Text(event.date.formatted(date: .abbreviated, time: .shortened))
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            
            if event.isCompleted {
                Spacer()
                Image(systemName: "checkmark")
                    .foregroundColor(.secondary)
            }
        }
        .badge(event.remainingTaskCount)
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(event: Event.example)
    }
}
