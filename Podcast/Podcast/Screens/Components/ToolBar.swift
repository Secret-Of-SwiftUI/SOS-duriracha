//
//  ToolBar.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/05/13.
//

import SwiftUI

struct ToolBar: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Text("1x")
                    .foregroundColor(.purple)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "airplayaudio")
                    .foregroundColor(.purple)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.purple)
            })
        }
    }
}

struct ToolBar_Previews: PreviewProvider {
    static var previews: some View {
        ToolBar()
    }
}
