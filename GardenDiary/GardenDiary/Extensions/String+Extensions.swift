//
//  String+Extensions.swift
//  GardenDiary
//
//  Created by Jessie Quach on 4/23/25.
//

import Foundation

extension String {
    
    var isEmptyOrWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
}
