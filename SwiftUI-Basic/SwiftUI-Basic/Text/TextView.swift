//
//  TextView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/21.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        ZStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .tracking(1)
                .font(.system(.body, design: .monospaced))
                .fontWeight(.light)
                .multilineTextAlignment(.leading)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
