//
//  Instragram_cloneApp.swift
//  Instragram-clone
//
//  Created by Tham Thearawiboon on 3/11/2564 BE.
//

import SwiftUI
import Firebase

@main
struct Instragram_cloneApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
