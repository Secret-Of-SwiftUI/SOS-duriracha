//
//  GeometryPractice.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

enum GeoIndex {
    case one, two, three, start
}

struct GeometryPractice: View {

//    @State var isOneActivated: Bool = false
//    @State var isTwoActivated: Bool = false
//    @State var isThreeActivated: Bool = false

    @State var index: GeoIndex = .start
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center ,spacing: 0) {
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: self.index == .one ? geo.size.width / 3 : geo.size.width / 10, height: geo.size.height / 3)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .onTapGesture(perform: {
                        print("one")
                        withAnimation {
//                            if isTwoActivated {
//                                isTwoActivated = false
//                            } else if isThreeActivated {
//                                isThreeActivated = false
//                            }
//                            self.isOneActivated.toggle()
                            self.index = .one
                        }
                    })
                
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: self.index == .two ? geo.size.width / 3 : geo.size.width / 10, height: geo.size.height / 3)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .onTapGesture(perform: {
                        withAnimation {
//                            if isOneActivated {
//                                isOneActivated = false
//                            } else if isThreeActivated {
//                                isThreeActivated = false
//                            }
//                            self.isTwoActivated.toggle()
                            self.index = .two
                        }
                    })
                
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: self.index == .three ? geo.size.width / 3 : geo.size.width / 10, height: geo.size.height / 3)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .onTapGesture(perform: {
                        withAnimation {
//                            if isOneActivated {
//                                isOneActivated = false
//                            } else if isTwoActivated {
//                                isTwoActivated = false
//                            }
//                            self.isThreeActivated.toggle()
                            self.index = .three
                        }
                    })
            }
            // 영상이랑 다르게 안됩니다.. 그래서 이렇게 해줌
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(Color.yellow)
        // background끝나고 올려야지 늘어난다.
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            withAnimation {
                self.index = .start
            }
        }
    }
}

struct GeometryPractice_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPractice()
    }
}
