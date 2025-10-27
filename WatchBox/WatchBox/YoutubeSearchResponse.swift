//
//  YoutubeSearchResponse.swift
//  WatchBox
//
//  Created by Yashwanth Raj Varadharajan on 10/23/25.
//


import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [ItemProperties]?
}

struct ItemProperties: Codable {
    let id: IdProperties?
}

struct IdProperties: Codable {
    let videoId: String?
}
