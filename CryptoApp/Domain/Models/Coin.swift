//
//  Coin.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//
import Foundation

struct Coin: Identifiable, Equatable {
    let id: String
    let name: String
    let symbol: String
    let rank: Int
    let isNew: Bool
    let isActive: Bool
    let type: String
}

struct CoinDetail: Identifiable {
    let id: String
    let name: String
    let symbol: String
    let rank: Int
    let isActive: Bool
    let logo: String?
    let description: String?
    let developmentStatus: String?
    let proofType: String?
    let hashAlgorithm: String?
    let openSource: Bool
    let tags: [CoinTag]
    let team: [TeamMember]
    let whitepaperURL: String?
}

struct CoinTag: Identifiable {
    let id: String
    let name: String
}

struct TeamMember: Identifiable {
    let id: String
    let name: String
    let position: String
}


