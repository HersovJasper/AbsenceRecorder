//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Jasper Hersov on 01/03/2021.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    
    var body: some View {
        Text("Division Code: \(divisions[0].code)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
