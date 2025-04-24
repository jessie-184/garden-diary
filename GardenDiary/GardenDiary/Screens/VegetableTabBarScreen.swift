//
//  VegetableTabBarScreen.swift
//  GardenDiary
//
//  Created by Jessie Quach on 4/22/25.
//

import SwiftUI

struct VegetableTabBarScreen: View {
    
    @State private var vegetables: [Vegetable] = []
    
    private var pests: [Pest] {
        
        let allPests = vegetables.flatMap { $0.pests ?? [] }
        
        return Array(Set(allPests.map { $0.name.lowercased() }))
            .compactMap { name in
                allPests.first { $0.name.lowercased() == name }
        }
        
    }
    
    var body: some View {
        TabView {
            
            NavigationStack {
                VegetableListScreen(vegetables: vegetables)
            }.tabItem {
                    Image(systemName: "leaf")
                    Text("Vegetables")
                }
            
            NavigationStack {
                MyGardenScreen() 
            }.tabItem {
                    Image(systemName: "house")
                    Text("My Garden")
                }
            
            NavigationStack {
                Text("Pests")
                // PestListScreen(pests: pests)
            }.tabItem {
                    Image(systemName: "ladybug")
                    Text("Pests")
                }
            
        }.task {
            do {
                let api = VegetableDataAPI()
                vegetables = try await api.fetchVegetables()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview(traits: .sampleData) {
    VegetableTabBarScreen()
}
