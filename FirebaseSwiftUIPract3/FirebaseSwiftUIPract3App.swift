//
//  FirebaseSwiftUIPract3App.swift
//  FirebaseSwiftUIPract3
//
//  Created by Capgemini-DA202 on 11/23/22.
//

import SwiftUI
import Firebase

@main
struct FirebaseSwiftUIPract3App: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
