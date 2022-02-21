//
//  TabbarView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/21.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ZStack {
                Color.red
                    .edgesIgnoringSafeArea(.all)
                Text("Hello, world!1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding()
                    
            }
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            .tabItem {
                Image(systemName: "airplane")
                Text("1번")
            }
            .tag(0)
            
            ZStack {
                Color.green
                    .edgesIgnoringSafeArea(.all)
                Text("Hello, world!2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding()
            }
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green)
            .tabItem {
                Image(systemName: "flame.fill")
                Text("2번")
            }
            .tag(1)
            
            ZStack {
                Color.orange
                    .edgesIgnoringSafeArea(.all)
                Text("Hello, world!3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding()
            }
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.orange)
            .tabItem {
                Image(systemName: "doc.fill")
                Text("3번")
            }
            .tag(2)
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
