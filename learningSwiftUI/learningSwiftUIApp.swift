//
//  learningSwiftUIApp.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 24.04.2024.
//

import FirebaseCore
import SwiftUI

@main
struct learningSwiftUIApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
