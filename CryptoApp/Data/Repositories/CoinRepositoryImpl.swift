//
//  CoinRepositoryImpl.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//
import Foundation

class CoinRepositoryImpl: CoinRepository {
    private let  remoteDataSource: CoinRemoteDataSource
    
    init(remoteDataSource: CoinRemoteDataSource = CoinRemoteDataSource()) {
        self.remoteDataSource = remoteDataSource
    }
    
    func getCoins() async throws -> [Coin] {
        let dtos = try await remoteDataSource.getCoins()
        return dtos.map {$0.toDomain()}
    }
    
    func getCoinDetails(id: String) async throws -> CoinDetail {
        let dto = try await remoteDataSource.getCoinDetail(coinID: id)
        return dto.toDomain()
    }
}
