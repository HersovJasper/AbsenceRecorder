//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Jasper Hersov on 04/03/2021.
//

import Foundation

extension Date {
    
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
    
    func prevDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    
    func nextDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self) ?? Date()
    }
}

