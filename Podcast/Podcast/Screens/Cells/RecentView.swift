//
//  RecentView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct RecentView: View {
    
    // MARK: - property
    
    var mainImage: String = ""
    var title: String = ""
    var author: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(mainImage)
                .resizable()
                .frame(width: 180, height: 180)
                .cornerRadius(10)
            
            Text(title)
                .font(.footnote)
                .foregroundColor(.white)
            
            Text(author)
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
