//
//  WelcomeView.swift
//  Grade Calculator
//
//  Created by Oğuzhan Sönmeztürk on 9.11.2024.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var nameinput: String = ""
    @AppStorage("nameinput") private var savedName: String = ""
    
    var body: some View {
        VStack{
            Text("Merhaba, adınızı giriniz :")
                .font(.title)
                .padding()
            TextField("Adınız :", text: $nameinput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Kaydet") {
                savedName = nameinput
                UserDefaults.standard.set(false, forKey: "isFirstLaunch")
            }
            
            .padding()
            
        }
        
        
    }
}

#Preview {
    WelcomeView()
}

