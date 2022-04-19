//
//  Recent.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import Foundation

struct Recent {
    var title: String
    var author: String
    var mainImage: String = "cat"
}

var dummyRecent: [Recent] = [
    Recent(title: "이석훈의 브런치카페", author: "MBC"),
    Recent(title: "[여둘톡] 여자 둘이 토크합니다.", author: "PenUnion"),
    Recent(title: "KOREAN COWBOYS PODCAST", author: "Korean Cowboys"),
    Recent(title: "역사 뇌피셜 '그놈'", author: "엠장기획"),
    Recent(title: "[지방령]지방여성이 쓰는 일의 연대기", author: "지방령"),
    Recent(title: "GOT7 영재의 친한친구", author: "MBC"),
    Recent(title: "WeCrashed", author: "Wondery"),
    Recent(title: "커튼콜", author: "SBS NEWS"),
    Recent(title: "커튼콜", author: "SBS NEWS")
]
