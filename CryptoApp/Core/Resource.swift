//
//  Resource.swift
//  CryptoApp
//
//  Created by johny alam on 2.5.2026.
//
import Foundation

enum Resource<T> {
    case loading
    case success(T)
    case failure(String)
    
    var isLoading: Bool {
        if case .loading = self { return true }
        return false
    }
    
    var data: T? {
        if case .success(let t) = self { return t }
        return nil
    }
    
    var errorMessage: String? {
        if case .failure(let message) = self { return message }
        return nil
    }
}
