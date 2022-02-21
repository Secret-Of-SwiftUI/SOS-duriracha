//
//  VGrid3View.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct VGrid3View: View {
    var body: some View {
        GeometryReader { geometry in
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: geometry.size.width / 3)),
                GridItem(.adaptive(minimum: geometry.size.width / 3)),
                GridItem(.adaptive(minimum: geometry.size.width / 3))
            ], content: {
                ForEach(1...100, id: \.self, content: { id in
                    Rectangle()
                        .frame(height: geometry.size.width / 3)
                })
            })
            .padding(.horizontal, 5)
        }
    }
}

struct VGrid3View_Previews: PreviewProvider {
    static var previews: some View {
        VGrid3View()
    }
}
