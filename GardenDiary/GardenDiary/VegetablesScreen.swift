//
//  ContentView.swift
//  GardenDiary
//
//  Created by Jessie Quach on 4/22/25.
//

import SwiftUI

struct VegetablesScreen: View {
    
    @State private var vegetables: [Vegetable] = []
    
    var body: some View {
        List(vegetables) {
            vegetable in Text(vegetable.name)
        }
        .task {
            do {
                let vegetableAPI = VegetableDataAPI()
                vegetables = try await vegetableAPI.fetchVegetables()
            } catch {
                print(error.localizedDescription)
            }
        }
        .padding()
    }
}

#Preview {
    VegetablesScreen()
}
