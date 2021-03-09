//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Jasper Hersov on 01/03/2021.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
