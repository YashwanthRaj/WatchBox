//
//  SearchViewModel.swift
//  WatchBox
//
//  Created by Yashwanth Raj Varadharajan on 10/23/25.
//

import Foundation

@Observable
class SearchViewModel {
    private(set) var errorMessage: String?
    private(set) var searchTitles: [Title] = []
    private let dataFetcher = DataFetcher()
    
    func getSearchTitles(by media: String, for title: String) async {
        do {
            errorMessage = nil
            if title.isEmpty {
                searchTitles = try await dataFetcher.fetchTitles(for: media, by: "trending")
            } else {
                searchTitles = try await dataFetcher.fetchTitles(for: media, by: "search", with: title)
            }
        } catch {
            print(error)
            errorMessage = error.localizedDescription
        }
    }
}

