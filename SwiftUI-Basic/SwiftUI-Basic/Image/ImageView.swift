//
//  ImageView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/21.
//

import SwiftUI

struct ImageView : View {
    var body: some View {
        Image("image1")
            .resizable()
//             aspectRatio == scaledToFit
            .scaledToFill()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 20, x: 5, y: 10)
            .overlay(
                Circle().foregroundColor(.black)
                    .opacity(0.2)
            )
            .overlay(
                Circle().stroke(Color.blue,
                                lineWidth: 1)
                    .padding()
            )
            .overlay(
                Circle().stroke(Color.blue,
                                lineWidth: 1)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(Color.blue,
                                lineWidth: 1)
            )
            .overlay(
                Text("Stay Chill")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .fontWeight(.medium)
            )
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
