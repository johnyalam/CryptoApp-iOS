//
//  AppError.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//
import Foundation

enum AppError: Error, LocalizedError {
    case invalidURL
    case networkError(String)
    case decodingError(String)
    case unknown
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .networkError(let message):
            return "Network Error: \(message)"
        case .decodingError(let message):
            return "Decoding Error: \(message)"
        case .unknown:
            return "Unknown Error"
        }
    }
}
