//
//  PlayerView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/05/12.
//

import SwiftUI

struct PlayerView: View {
    
    private enum Size {
        static let spacing: CGFloat = 70
    }
    
    // MARK: - property
    
    @Binding var presentedAsModal: Bool
    
    var body: some View {
        ScrollView {
            ZStack {
                Color(uiColor: UIColor(red: 28/255, green: 28/255, blue: 30/255, alpha: 1))
                
                VStack {
                    Spacer()
                        .frame(height: 70)
                    
                    Image("cat")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.size.width - Size.spacing * 2, height: UIScreen.main.bounds.size.width - Size.spacing * 2)
                        .cornerRadius(10)
                    
                    MusicSlider()
                        .padding(.top, 40)
                        .padding(.horizontal, 30)
                    
                    titleView
                        .padding(.top)
                    
                    PlayControlView()
                        .padding(.top, 40)
                    
                    VolumeSlider()
                        .padding(.top, 50)
                        .padding(.horizontal, 20)
                    
                    ToolBar()
                        .padding(.vertical, 40)
                        .padding(.horizontal, 25)
                    
                    Divider()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("뭐야")
                    })
                }
            }
        }
        .ignoresSafeArea(.all)
        .onDisappear(perform: {
            self.presentedAsModal = false
        })
    }
}

extension PlayerView {
    var titleView: some View {
        VStack {
            Text("Cat is Cute")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("All Ears English Podcast - May 2, 2022")
                .font(.title2)
                .foregroundColor(.purple)
                .padding(.horizontal, 10)
                .lineLimit(1)
        }
    }
}
