//
//  CoinDTO.swift
//  CryptoApp
//
//  Created by johny alam on 1.5.2026.
//
import Foundation

struct CoinDTO: Codable, Identifiable {
    let id: String
    let name: String
    let symbol: String
    let rank: Int
    let isNew: Bool
    let isActive: Bool
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, symbol, rank, type
        case isActive = "is_active"
        case isNew = "is_new"
    }
    
    func toDomain() -> Coin {
        Coin(
            id: id,
            name: name,
            symbol: symbol,
            rank: rank,
            isNew: isNew,
            isActive: isActive,
            type: type
        )
    }
}

