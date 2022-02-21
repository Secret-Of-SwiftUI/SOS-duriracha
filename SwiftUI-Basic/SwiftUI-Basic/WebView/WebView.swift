//
//  WebView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

struct WebView: View {
    var body: some View {
        
        NavigationView {
            HStack {
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)) {
                            // NavigationLink 자체에 대한 내용
                            Text("네이버")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(20)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                        }
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://www.daum.net")
                        .edgesIgnoringSafeArea(.all)) {
                            // NavigationLink 자체에 대한 내용
                            Text("다음")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                        }
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://www.google.com")
                        .edgesIgnoringSafeArea(.all)) {
                            // NavigationLink 자체에 대한 내용
                            Text("구글")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(20)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                        }
            }
        }
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
