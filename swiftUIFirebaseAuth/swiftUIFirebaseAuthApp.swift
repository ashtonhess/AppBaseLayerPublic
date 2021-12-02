//
//  swiftUIFirebaseAuthApp.swift
//  swiftUIFirebaseAuth
//
//  Created by Ashton Hess on 12/1/21.
//

import SwiftUI
import Firebase

@main
struct swiftUIFirebaseAuthApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserAuth())
        }
    }
}
