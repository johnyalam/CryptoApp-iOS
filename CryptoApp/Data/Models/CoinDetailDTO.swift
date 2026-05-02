//
//  CoinDetailDTO.swift
//  CryptoApp
//
//  Created by johny alam on 1.5.2026.
//
import Foundation

struct CoinDetailDTO: Codable {
    let id: String
    let name: String
    let symbol: String
    let rank: Int
    let isNew: Bool
    let isActive: Bool
    let type: String
    let logo: String?
    let tags: [TagDTO]?
    let team: [TeamMemberDTO]?
    let description: String?
    let openSource: Bool?
    let startedAt: String?
    let developmentStatus: String?
    let proofType: String?
    let orgStructure: String?
    let hashAlgorithm: String?
    let whitepaper: WhitepaperDTO?
    
    enum CodingKeys: String, CodingKey {
        case id, name, symbol, rank, type, logo, tags, team, description
        case isNew             = "is_new"
        case isActive          = "is_active"
        case openSource        = "open_source"
        case startedAt         = "started_at"
        case developmentStatus = "development_status"
        case proofType         = "proof_type"
        case orgStructure      = "org_structure"
        case hashAlgorithm     = "hash_algorithm"
        case whitepaper
    }
    
    func toDomain() -> CoinDetail {
        CoinDetail(
            id: id,
            name: name,
            symbol: symbol,
            rank: rank,
            isActive: isActive,
            logo: logo,
            description: description,
            developmentStatus: developmentStatus,
            proofType: proofType,
            hashAlgorithm: hashAlgorithm,
            openSource: openSource ?? false,
            tags: tags?.map { $0.toDomain() } ?? [],
            team: team?.map { $0.toDomain() } ?? [],
            whitepaperURL: whitepaper?.link
        )
    }
}

// MARK: - Nested DTOs

struct TagDTO: Codable {
    let id: String
    let name: String
    let coinCounter: Int?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case coinCounter = "coin_counter"
    }
    
    func toDomain() -> CoinTag {
        CoinTag(id: id, name: name)
    }
}

struct TeamMemberDTO: Codable {
    let id: String
    let name: String
    let position: String?
    
    func toDomain() -> TeamMember {
        TeamMember(id: id, name: name, position: position ?? "")
    }
}

struct WhitepaperDTO: Codable {
    let link: String?
    let thumbnail: String?
}
