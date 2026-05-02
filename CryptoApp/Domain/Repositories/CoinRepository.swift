//
//  CoinRepository.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//

import Foundation

protocol CoinRepository {
    func getCoins() async throws -> [Coin]
    func getCoinDetails(id: String) async throws -> CoinDetail
}

