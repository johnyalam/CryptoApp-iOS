//
//  NetworkManager.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init(){}
    
    private let baseURL = "https://api.coinpaprika.com"
    
    func fetch<T: Decodable>(endpoint: String) async throws -> T {
        guard let url = URL(string: "\(baseURL)\(endpoint)") else {
            throw AppError.invalidURL
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw AppError.networkError("Server returned an error response.")
        }
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw AppError.decodingError(error.localizedDescription)
        }
    }
}
