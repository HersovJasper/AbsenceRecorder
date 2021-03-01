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
    
    init(code: String){
        self.code = code
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
                           Division.createDivision(code: "pCZ-1", of: 12)]
    #endif
}
