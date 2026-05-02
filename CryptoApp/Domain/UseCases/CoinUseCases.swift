//
//  CoinUseCases.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//
import Foundation

class GetCoinUseCase {
    private let repository: CoinRepository
    
    init(repository: CoinRepository) {
        self.repository = repository
    }
    
    func callAsFunction() async -> [Coin] {
        try! await repository.getCoins()
    }
}


class GetCoinDetailUseCase {
    private let repository: CoinRepository
    
    init(repository: CoinRepository) {
        self.repository = repository
    }
    
    func callAsFunction(id: String) async throws -> CoinDetail {
        try! await repository.getCoinDetails(id: id)
    }
}
