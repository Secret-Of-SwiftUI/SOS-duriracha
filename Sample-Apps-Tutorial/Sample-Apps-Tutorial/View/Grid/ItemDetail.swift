//
//  ItemDetail.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/09.
//

import SwiftUI

struct ItemDetail: View {
    var symbolName: String
    
    var body: some View {
        VStack {
            Text(symbolName)
                .font(.system(.largeTitle, design: .rounded))
            
            Image(systemName: symbolName)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.accentColor)
        }
        .padding()
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(symbolName: "magnifyingglass")
    }
}
