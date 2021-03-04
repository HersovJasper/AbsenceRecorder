//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Jasper Hersov on 04/03/2021.
//

import SwiftUI

struct DivisionItem: View {
    let division: Division
    
    var body: some View {
        HStack {
            Image(systemName: "\(division.students.count).circle" )
            Text("\(division.code)")
        }
    }
}


struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(division: Division(code: "oCY-1"))
    }
}
