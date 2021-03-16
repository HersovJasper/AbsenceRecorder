//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Jasper Hersov on 01/03/2021.
//

import Foundation

class Division{
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String){
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence?{
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        } else {
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            return absence
        }
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division{
        let division = Division(code: code)
        
        for i in 1...size{
            let student = Student(forename: "Forename\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    //static means accessible at the class level - don't require the class to be instantiated to access these
    static let examples = [Division.createDivision(code: "vCX-1", of: 8),
                           Division.createDivision(code: "MCW-1", of: 11),
                           Division.createDivision(code: "pCZ-1", of: 12),
                           Division.createDivision(code: "oCY-1", of: 6)]
    #endif
}
