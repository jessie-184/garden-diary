//
//  Date+Extensions.swift
//  GardenDiary
//
//  Created by Jessie Quach on 4/23/25.
//

import Foundation

extension Date {
    
    func daysAgo(_ days: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: -days, to: self) ?? self 
    }
    
}
