//
//  NetworkManager.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private init() {}
    
    func loadJSON<T: Decodable>(_ filename: String) -> T {
        guard let url = Bundle.main.url(forResource: "Policies", withExtension: "json") else {
            fatalError("Couldn't find \(filename).json in main bundle.")
        }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't decode \(filename).json: \(error)")
        }
    }
}
