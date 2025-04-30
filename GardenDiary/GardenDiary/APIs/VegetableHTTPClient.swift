//
//  VegetableHTTPClient.swift
//  GardenDiary
//
//  Created by Jessie Quach on 4/22/25.
//

import Foundation

struct VegetableHTTPClient {
    
    func fetchVegetables() async throws -> [Vegetable] {
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://azamsharp.com/vegetables.json")!)
        return try JSONDecoder().decode([Vegetable].self, from: data)
    }
     
}
