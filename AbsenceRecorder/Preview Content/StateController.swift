//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Jasper Hersov on 09/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
