//
//  Featured.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import Foundation

struct Featured {
    var featureTitle: String
    var title: String = " "
    var subtitle: String = " "
    var mainImage: String = "podcast"
}

var dummyFeatured: [Featured] = [
    Featured(featureTitle: "FEATURED", title: "KBS WORLD Radio Korea 24"),
    Featured(featureTitle: "FEATURED CHANNEL", title: "희렌최널", subtitle: "대화법에 길이 있다"),
    Featured(featureTitle: "FEATURED CHANNEL", title: "신사임당의 돈 얘기 하는 곳", subtitle: "매일 더하는 경제 지식"),
    Featured(featureTitle: "FEATURED", title: "Speak English with ESLPod.com - ...", subtitle: "Listen in to speak English fast"),
    Featured(featureTitle: "FEATURED PODCAST", title: "댓글 읽어주는 기자들", subtitle: "안에서 보는 미디어")
]
