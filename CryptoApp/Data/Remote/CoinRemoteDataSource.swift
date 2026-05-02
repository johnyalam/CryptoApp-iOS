//
//  CoinRemoteDataSource.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//
import Foundation

class CoinRemoteDataSource {
    
    private let network: NetworkManager
    
    init(network: NetworkManager) {
        self.network = network
    }
    
    func getCoins() async throws -> [CoinDTO] {
        try await network.fetch(endpoint: "/v1/coins")
    }
    
    func getCoinDetail(coinID: String) async throws -> CoinDetailDTO {
        try await network.fetch(endpoint: "/v1coins/\(coinID)")
    }
    
}
