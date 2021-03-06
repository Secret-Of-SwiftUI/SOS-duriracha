//
//  SectionHeaderView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct SectionHeaderView: View {
    
    private enum Size {
        static let spacing = 20.0
    }
    
    // MARK: - property
    
    var title: String?
    var hasMoreContent: Bool = false
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(uiColor: .systemGray4))
            
            HStack {
                if let title = title {
                    Text(title)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                if hasMoreContent {
                    Button(action: {
                        
                    }, label: {
                        Text("See All")
                            .tint(.purple)
                    })
                }
            }
        }
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView()
    }
}
