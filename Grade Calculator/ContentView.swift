//
//  ContentView.swift
//  Grade Calculator
//
//  Created by Oğuzhan Sönmeztürk on 7.11.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    @AppStorage("nameinput") private var nameinput: String = ""
    
    var body: some View {
        
        Text("Current nameinput: \(nameinput)")
        
        if isFirstLaunch {
            WelcomeView() 
        } else {
            Homepage(username: nameinput.isEmpty ? "Kullanıcı" : nameinput)
        }
        
    }
}
struct Homepage: View {
    var username: String
    
    var body: some View {
        VStack {
            Text("Hoşgeldin, \(username)!")
                .font(.largeTitle)
                .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
