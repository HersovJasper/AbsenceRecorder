//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Jasper Hersov on 01/03/2021.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date){
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(forename: "Bilbo", surname: "Baggins", birthday: Date())
    static let examples = [example]
    #endif
}
