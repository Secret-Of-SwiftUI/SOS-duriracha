//
//  SchoolPickerView.swift
//  SwiftUI-Basic
//
//  Created by SHIN YOON AH on 2022/02/22.
//

import SwiftUI

enum School: String, CaseIterable {
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
}

struct MyFriend: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var school: School
}

func prepareData() -> [MyFriend] {
    var newList = [MyFriend]()
    
    for i in 0...20 {
        let newFriend = MyFriend(name: "내 친구 \(i)", school: School.allCases.randomElement()!)
        newList.append(newFriend)
    }
    
    return newList
}

struct SchoolPickerView: View {
    @State private var schoolFilter: School = .elementary
    @State private var myFriendsList: [MyFriend] = []
    
    // 생성자 메소드
    init() {
        _myFriendsList = State(initialValue: prepareData())
    }
    
    var body: some View {
        VStack {
            Text("filteredValue: \(schoolFilter.rawValue)")
            
            List() {
                Section(header: Text("언제 동창?"), content: {
                    HStack {
                        Spacer()
                        Picker(selection: $schoolFilter,
                               label: Text(""),
                               content: {
                                Text("초등학교").tag(School.elementary)
                                Text("중학교").tag(School.middle)
                                Text("고등학교").tag(School.high)
                        }).pickerStyle(SegmentedPickerStyle())
                            .frame(width: 250)
                        Spacer()
                    }
                })
                
                Section(header: Text(""), content: {
                    ForEach(myFriendsList.filter {
                        $0.school == schoolFilter
                    }) { friendItem in
                            GeometryReader { geo in
                                HStack {
                                    Text("name: \(friendItem.name)")
                                        .frame(width: geo.size.width / 2)
                                    Divider()
                                    
                                    Text("school: \(friendItem.school.rawValue)")
                                        .frame(width: geo.size.width / 2)
                                        
                                }
                            }
                        }
                })
            }
        }
    }
}

struct SchoolPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolPickerView()
    }
}

