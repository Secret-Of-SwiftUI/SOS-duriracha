//
//  EpisodesView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct EpisodesView: View {
    
    // MARK: - property
    
    var mainImage: String = "cat"
    var title: String = ""
    var author: String = ""
    var rank: Int = 0
    
    var body: some View {
        HStack {
            Image(mainImage)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            Spacer()
                .frame(width: 20)
            
            Text("\(rank)")
                .foregroundColor(.white)
                .font(.system(size: 15, weight: .bold, design: .default))
            
            Spacer()
                .frame(width: 20)
            
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(.white)
                    .font(.body)
                
                Text(author)
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            
            Spacer()
            
            Button(action: {
                print("더보기")
            }, label: {
                Image(systemName: "ellipsis")
                    .tint(.gray)
            })
        }
        .frame(height: 80)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesView()
    }
}
