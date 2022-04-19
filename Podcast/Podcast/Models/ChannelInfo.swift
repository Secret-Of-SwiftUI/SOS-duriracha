//
//  ChannelInfo.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import Foundation

struct ChannelInfo: Identifiable {
    var id: Int
    var info: String
    var mainImage: String = "tree"
}

var dummyInfo: [ChannelInfo] = [
    ChannelInfo(id: 0, info: "정신과 의사들의 진짜 정신과 이야기"),
    ChannelInfo(id: 1, info: "어른이 되면 복잡한 문제도 알아서 척척 해결할 줄 알았다! 그런데, 막상 세상에 나와 보니 모든 게 어쩌구"),
    ChannelInfo(id: 2, info: "구독자 130만 명에 육박하는 경제 분야 최고의 유튜버 '신사임당'! 하루하루 열심히 살아가는 사람들의 이야기를 어쩌구"),
    ChannelInfo(id: 0, info: "정신과 의사들의 진짜 정신과 이야기"),
    ChannelInfo(id: 1, info: "어른이 되면 복잡한 문제도 알아서 척척 해결할 줄 알았다! 그런데, 막상 세상에 나와 보니 모든 게 어쩌구"),
    ChannelInfo(id: 2, info: "구독자 130만 명에 육박하는 경제 분야 최고의 유튜버 '신사임당'! 하루하루 열심히 살아가는 사람들의 이야기를 어쩌구"),
    ChannelInfo(id: 0, info: "정신과 의사들의 진짜 정신과 이야기"),
    ChannelInfo(id: 1, info: "어른이 되면 복잡한 문제도 알아서 척척 해결할 줄 알았다! 그런데, 막상 세상에 나와 보니 모든 게 어쩌구"),
    ChannelInfo(id: 2, info: "구독자 130만 명에 육박하는 경제 분야 최고의 유튜버 '신사임당'! 하루하루 열심히 살아가는 사람들의 이야기를 어쩌구")
]
